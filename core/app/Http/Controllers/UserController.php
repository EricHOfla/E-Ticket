<?php

namespace App\Http\Controllers;

use App\Lib\GoogleAuthenticator;
use App\Models\GeneralSetting;
use App\Models\BookedTicket;
use App\Rules\FileTypeValidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
class UserController extends Controller
{
    public function __construct()
    {
        $this->activeTemplate = activeTemplate();
    }

    public function home()
    {
        $pageTitle = 'Dashboard';
        $emptyMessage = 'No booked ticket found';
        $user = auth()->user();
        $widget['booked'] = $user->tickets()->booked()->count();
        $widget['pending'] = $user->tickets()->pending()->count();
        $widget['rejected'] = $user->tickets()->rejected()->count();

        $widget['booked'] = BookedTicket::booked()->where('user_id', auth()->user()->id)->count();
        $widget['pending'] = BookedTicket::pending()->where('user_id', auth()->user()->id)->count();
        $widget['rejected'] = BookedTicket::rejected()->where('user_id', auth()->user()->id)->count();
        $bookedTickets = BookedTicket::with(['trip.fleetType','trip.startFrom', 'trip.endTo', 'trip.schedule' ,'pickup', 'drop'])->where('user_id', auth()->user()->id)->orderBy('id', 'desc')->paginate(getPaginate());
        return view($this->activeTemplate . 'user.dashboard', compact('pageTitle', 'bookedTickets', 'widget', 'emptyMessage'));
    }

    public function profile()
    {
        $pageTitle = "Profile Setting";
        $user = Auth::user();
        return view($this->activeTemplate. 'user.profile_setting', compact('pageTitle','user'));
    }

    public function submitProfile(Request $request)
    {
        $request->validate([
            'firstname' => 'required|string|max:50',
            'lastname' => 'required|string|max:50',
            'address' => 'sometimes|required|max:80',
            'state' => 'sometimes|required|max:80',
            'zip' => 'sometimes|required|max:40',
            'city' => 'sometimes|required|max:50',
            'image' => ['image',new FileTypeValidate(['jpg','jpeg','png'])]
        ],[
            'firstname.required'=>'First name field is required',
            'lastname.required'=>'Last name field is required'
        ]);

        $user = Auth::user();

        $in['firstname'] = $request->firstname;
        $in['lastname'] = $request->lastname;

        $in['address'] = [
            'address' => $request->address,
            'state' => $request->state,
            'zip' => $request->zip,
            'country' => @$user->address->country,
            'city' => $request->city,
        ];


        if ($request->hasFile('image')) {
            $location = imagePath()['profile']['user']['path'];
            $size = imagePath()['profile']['user']['size'];
            $filename = uploadImage($request->image, $location, $size, $user->image);
            $in['image'] = $filename;
        }
        $user->fill($in)->save();
        $notify[] = ['success', 'Profile updated successfully'];
        return back()->withNotify($notify);
    }

    public function changePassword()
    {
        $pageTitle = 'Change password';
        return view($this->activeTemplate . 'user.password', compact('pageTitle'));
    }

    public function submitPassword(Request $request)
    {

        $password_validation = Password::min(6);
        $general = GeneralSetting::first();
        if ($general->secure_password) {
            $password_validation = $password_validation->mixedCase()->numbers()->symbols()->uncompromised();
        }

        $this->validate($request, [
            'current_password' => 'required',
            'password' => ['required','confirmed',$password_validation]
        ]);


        try {
            $user = auth()->user();
            if (Hash::check($request->current_password, $user->password)) {
                $password = Hash::make($request->password);
                $user->password = $password;
                $user->save();
                $notify[] = ['success', 'Password changes successfully'];
                return back()->withNotify($notify);
            } else {
                $notify[] = ['error', 'The password doesn\'t match!'];
                return back()->withNotify($notify);
            }
        } catch (\PDOException $e) {
            $notify[] = ['error', $e->getMessage()];
            return back()->withNotify($notify);
        }
    }

    public function ticketHistory(){
        $pageTitle = 'Booking History';
        $emptyMessage = 'No booked ticket found';
        $bookedTickets = BookedTicket::with(['trip.fleetType','trip.startFrom', 'trip.endTo', 'trip.schedule' ,'pickup', 'drop'])->where('user_id', auth()->user()->id)->orderBy('id', 'desc')->paginate(getPaginate());
        return view($this->activeTemplate.'user.booking_history', compact('pageTitle', 'emptyMessage','bookedTickets'));
    }

    public function printTicket($id)
{
    // Fetch the ticket with necessary relationships
    $ticket = BookedTicket::with([
        'user',
        'trip.startFrom',  // Ensure startFrom is loaded
        'trip.endTo',      // Ensure endTo is loaded
        'trip.schedule',
        'pickup',
        'drop'
    ])
    ->where('user_id', auth()->user()->id)
    ->findOrFail($id);

    // Get the pickup time and departure time
    $pickupTime = $ticket->pickup ? $ticket->pickup->name : 'Not available';
    $departureTime = $ticket->trip->schedule ? $ticket->trip->schedule->departure_time : 'Not available';

    // Check if $ticket->seats is an array, otherwise decode it from JSON
    $seats = is_array($ticket->seats) ? $ticket->seats : json_decode($ticket->seats, true);

    // Implode the array into a string of seat numbers
    $seatNumber = implode(', ', $seats);

    // Generate QR Code data
    $qrData = json_encode([
        'ticket_id' => $ticket->id,
        'name' => $ticket->user ? $ticket->user->firstname . ' ' . $ticket->user->lastname : 'No name',
        'route' => ($ticket->trip->startFrom ? $ticket->trip->startFrom->name : 'Unknown start') . ' → ' . 
                  ($ticket->trip->endTo ? $ticket->trip->endTo->name : 'Unknown end'),
        'departure' => $departureTime,
        'seat' => $seatNumber,
        'pickup_time' => $pickupTime,
        'verification_url' => url('/verify-ticket/' . $ticket->id),
    ]);

    // Generate QR code
    $qrCode = QrCode::format('svg')->size(200)->generate($qrData);
    $qrCodeBase64 = base64_encode($qrCode);
    $pageTitle = "Ticket Print";

    // Return the print ticket view with necessary data
    return view($this->activeTemplate.'user.print_ticket', compact('ticket', 'qrCodeBase64', 'pageTitle', 'pickupTime'));
}


    

}
