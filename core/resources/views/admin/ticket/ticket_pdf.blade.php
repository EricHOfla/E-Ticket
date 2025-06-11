<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #b4096d; /* Background color for header */
            color: white;
            padding: 20px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .contact-info {
            font-size: 10px;
            margin-top: 10px;
            padding-left: 10px;
        }
        .contact-info p {
            margin: 0;
        }
        .report-title {
            text-align: center;
            font-size: 14px;
            margin-top: 20px;
        }
        .generated-date {
            font-size: 10px;
            margin-top: 10px;
            padding-left: 10px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #b4096d;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <!-- Header with Logo and System Name -->
    <div class="header">
        <img src="{{ public_path('path_to_your_logo_image.jpg') }}" alt="Logo" width="50" height="20">
        <h1>Good Gardener Management System</h1>
    </div>

    <!-- Contact Information -->
    <div class="contact-info">
        <p>Phone: +250 788 608 988</p>
        <p>P.O BOX: 2000 Kigali – Rwanda</p>
        <p>Email: ferwafa@yahoo.fr</p>
    </div>

    <!-- Report Title -->
    <div class="report-title">
        <h2>Order Report</h2>
    </div>

    <!-- Date when the report is generated -->
    <div class="generated-date">
        <p>Generated on: {{ $currentDate }}</p>
    </div>

    <!-- Table with Ticket Data -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Subject</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tickets as $ticket)
                <tr>
                    <td>{{ $ticket->id }}</td>
                    <td>{{ $ticket->subject }}</td>
                    <td>{{ $ticket->status }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
