<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AdminNotification;
use App\Models\BookedTicket;
use App\Models\User;
use App\Models\Deposit;
use App\Models\UserLogin;
use App\Models\Counter;
use App\Models\Vehicle;
use App\Rules\FileTypeValidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;



    

class AdminController extends Controller
{
    protected $activeTemplate;

    public function __construct()
    {
        $this->activeTemplate = activeTemplate();
    }

    public function dashboard()
    {
        $pageTitle = 'Dashboard';

        // User Info
        $widget['total_users'] = User::count();
        $widget['verified_users'] = User::where('status', 1)->count();
        $widget['email_unverified_users'] = User::where('ev', 0)->count();
        $widget['sms_unverified_users'] = User::where('sv', 0)->count();
        $widget['successful_payment'] = Deposit::where('status' , 1)->sum('amount');
        $widget['pending_payment'] = Deposit::where('status' , 2)->sum('amount');
        $widget['rejected_payment'] = Deposit::where('status' , 3)->sum('amount');
        $widget['total_counter'] = Counter::count();
        $widget['vehicle_with_ac'] = Vehicle::whereHas('fleetType', function($q){$q->where('has_ac', 1);})->count();
        $widget['vehicle_without_ac'] = Vehicle::whereHas('fleetType', function($q){$q->where('has_ac', 0);})->count();

        //latest booking history
        $soldTickets = BookedTicket::with('user')->where('status', 1)->latest()->take(5)->get();

        // Deposit Graph
        $deposit = Deposit::where('created_at', '>=', \Carbon\Carbon::now()->subDays(30))->where('status', 1)
            ->selectRaw('sum(amount) as totalAmount')
            ->selectRaw('DATE(created_at) day')
            ->groupBy('day')->get();
        $deposits['per_day'] = collect([]);
        $deposits['per_day_amount'] = collect([]);
        $deposit->map(function ($depositItem) use ($deposits) {
            $deposits['per_day']->push(date('d M', strtotime($depositItem->day)));
            $deposits['per_day_amount']->push($depositItem->totalAmount + 0);
        });

        // user Browsing, Country, Operating Log
        $userLoginData = UserLogin::where('created_at', '>=', \Carbon\Carbon::now()->subDay(30))->get(['browser', 'os', 'country']);

        $chart['user_browser_counter'] = $userLoginData->groupBy('browser')->map(function ($item, $key) {
            return collect($item)->count();
        });
        $chart['user_os_counter'] = $userLoginData->groupBy('os')->map(function ($item, $key) {
            return collect($item)->count();
        });
        $chart['user_country_counter'] = $userLoginData->groupBy('country')->map(function ($item, $key) {
            return collect($item)->count();
        })->sort()->reverse()->take(5);
        return view('admin.dashboard', compact('pageTitle', 'widget', 'chart', 'deposits', 'soldTickets'));
    }


    public function profile()
    {
        $pageTitle = 'Profile';
        $admin = Auth::guard('admin')->user();
        return view('admin.profile', compact('pageTitle', 'admin'));
    }

    public function profileUpdate(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'image' => ['nullable','image',new FileTypeValidate(['jpg','jpeg','png'])]
        ]);
        $user = Auth::guard('admin')->user();

        if ($request->hasFile('image')) {
            try {
                $old = $user->image ?: null;
                $user->image = uploadImage($request->image, imagePath()['profile']['admin']['path'], imagePath()['profile']['admin']['size'], $old);
            } catch (\Exception $exp) {
                $notify[] = ['error', 'Image could not be uploaded.'];
                return back()->withNotify($notify);
            }
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();
        $notify[] = ['success', 'Your profile has been updated.'];
        return redirect()->route('admin.profile')->withNotify($notify);
    }


    public function password()
    {
        $pageTitle = 'Password Setting';
        $admin = Auth::guard('admin')->user();
        return view('admin.password', compact('pageTitle', 'admin'));
    }

    public function passwordUpdate(Request $request)
    {
        $this->validate($request, [
            'old_password' => 'required',
            'password' => 'required|min:5|confirmed',
        ]);

        $user = Auth::guard('admin')->user();
        if (!Hash::check($request->old_password, $user->password)) {
            $notify[] = ['error', 'Password do not match !!'];
            return back()->withNotify($notify);
        }
        $user->password = bcrypt($request->password);
        $user->save();
        $notify[] = ['success', 'Password changed successfully.'];
        return redirect()->route('admin.password')->withNotify($notify);
    }

    public function notifications(){
        $notifications = AdminNotification::orderBy('id','desc')->with('user')->paginate(getPaginate());
        $pageTitle = 'Notifications';
        return view('admin.notifications',compact('pageTitle','notifications'));
    }


    public function notificationRead($id){
        $notification = AdminNotification::findOrFail($id);
        $notification->read_status = 1;
        $notification->save();
        return redirect($notification->click_url);
    }

    public function requestReport(Request $request)
    {
        $pageTitle = 'Report';
        $emptyMessage = 'There is no data found';
    
        // Use paginate() instead of get()
        $tickets = BookedTicket::with(['trip', 'pickup', 'drop', 'user'])->paginate(10);
    
        return view('admin.reports', compact('pageTitle', 'emptyMessage', 'tickets'));
    }
    

    // Function to filter tickets based on selected date
    public function filterTickets(Request $request)
    {
        $pageTitle = 'Filtered Tickets';
        $emptyMessage = 'No tickets found for this date.';

        $query = BookedTicket::with(['trip', 'pickup', 'drop', 'user']);

        // Validate input
        $request->validate([
            'filter_date' => 'required|date',
        ]);

        // Filter by selected date
        if ($request->has('filter_date') && !empty($request->filter_date)) {
            $query->whereDate('date_of_journey', $request->filter_date);
        }

        $tickets = $query->paginate(10); // Use pagination for better performance

        return view('admin.reports', compact('pageTitle', 'emptyMessage', 'tickets'));
    }



    public function systemInfo(){
        $laravelVersion = app()->version();
        $serverDetails = $_SERVER;
        $currentPHP = phpversion();
        $timeZone = config('app.timezone');
        $pageTitle = 'System Information';
        return view('admin.info',compact('pageTitle', 'currentPHP', 'laravelVersion', 'serverDetails','timeZone'));
    }

    public function readAll(){
        AdminNotification::where('read_status',0)->update([
            'read_status'=>1
        ]);
        $notify[] = ['success','Notifications read successfully'];
        return back()->withNotify($notify);
    }

    


}
