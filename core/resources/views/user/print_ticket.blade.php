@extends('layouts.app')

@section('content')
<div class="ticket-details">
    <h3>Hello, {{ auth()->user()->name }}</h3>
    <p>Here are your ticket details:</p>
    <ul>
        <li><strong>Ticket ID:</strong> {{ $ticket->id }}</li>
        <li><strong>From:</strong> {{ $ticket->trip->startFrom->name }}</li>
        <li><strong>To:</strong> {{ $ticket->trip->endTo->name }}</li>
        <li><strong>Departure:</strong> {{ $ticket->trip->schedule ? $ticket->trip->schedule->departure_time : 'No Departure Time' }}</li>
        <li><strong>Seat Number:</strong> {{ $ticket->seat_number ? $ticket->seat_number : 'No Seat Number' }}</li>
    </ul>

    <p>Scan the QR Code below for ticket verification:</p>
    <div class="ticket-qr">
        <img src="data:image/svg+xml;base64,{{ $qrCodeBase64 }}" alt="Ticket QR Code">
    </div>

    <p>Thank you for choosing E-Ticket. Have a safe journey!</p>
    <p>Best Regards,</p>
    <p>© 2025 E-Ticket. All Rights Reserved.</p>
</div>
@endsection
