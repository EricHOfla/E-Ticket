<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="{{ getImage('assets/images/logoIcon/favicon.png') }}">
    <title>{{ $general->sitename($pageTitle) }}</title>
    <style>
        @media screen,
        print {
            body {
                box-sizing: border-box;
                background-color: #eee;
                font-family: "Quicksand", sans-serif;
            }

            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                margin: 0;
                color: #456;
            }

            p {
                color: #678;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            ul {
                padding: 0;
                margin: 0;
                list-style: none;
            }

            .d-flex {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                flex-wrap: wrap;
            }

            .ticket-wrapper {
                width: 7.5in;
                margin: 0 auto;
                padding: 10px;
                border-radius: 10px;
                background: #fff;
                box-shadow: 0 5px 35px rgba(0, 0, 0, .1);
            }

            .ticket-inner {
                border: 2px solid #ccd;
                padding: 10px;
                border-radius: 5px;
                padding-bottom: 0px;
            }

            .ticket-header {
                text-align: center;
            }

            .ticket-header .title {
                font-size: 22px;
            }

            .ticket-body {
                padding: 10px;
                font-size: 15px;
                width: 100%;
            }

            .ticket-body-part {
                width: 45%;
                margin-bottom: 20px;
            }

            .ticket-qr {
                width: 45%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 20px;
            }

            .ticket-logo {
                width: 100px;
                margin: 0 auto 15px;
            }

            .ticket-logo img {
                width: 150px; /* Adjust size as needed */
                height: auto;
            }

            .border {
                border: 1px solid #eef !important;
            }

            .info {
                margin-bottom: 15px;
            }

            .qr-code img {
                width: 100%;
                max-width: 150px;
            }

            .print-btn button{
                background:rgb(66, 219, 230);
                padding: 10px 20px;
                border: none;
                color: white;
                font-size: 19px;
            }
            /* Add a rule for hiding the button when printing */
            @media print {
                .print-btn {
                    display: none;
                }

                /* Hide any elements that you don't want printed */
                body {
                    background-color: white;
                }

                .ticket-wrapper {
                    box-shadow: none;
                    margin: 0;
                    padding: 0;
                }
            }

            /* Additional small fixes to make sure everything fits well */
            @media print {
                .p-50 {
                    padding: 0 50px;
                }
            }
        }
    </style>
</head>

<body>

    <div id="block1">
        <div class="ticket-wrapper">
            <div class="ticket-inner">
                <div class="ticket-header">
                    <div class="ticket-logo">
                        <img  src="{{ getImage(imagePath()['logoIcon']['path'].'/logo.png') }}" alt="Logo">
                    </div>
                    <div class="ticket-header-content">
                        <h4 class="title">{{ $ticket->trip->assignedVehicle->vehicle->nick_name }}</h4>
                        <p class="info">@lang('E-Ticket/ Reservation Voucher')</p>
                    </div>
                </div>
                <div class="border"></div>

                <!-- Flex container for the ticket body and QR code -->
                <div class="ticket-body d-flex">
                    <!-- Ticket Details (Left side) -->
                    <div class="ticket-body-part">
                        <table>
                            <tbody>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('PNR Number')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ $ticket->pnr_number }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Name')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ $ticket->user->fullname }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Journey Date')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ showDateTime($ticket->date_of_journey, 'F d, Y') }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Journey Day')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ showDateTime($ticket->date_of_journey, 'l') }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Pickup Time')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ showDateTime($ticket->pickup_time, 'h:i A') }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Total Seats')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ count($ticket->seats) }}</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <p class="title">@lang('Seat Numbers')</p>
                                    </td>
                                    <td><b>:</b></td>
                                    <td class="text-left">
                                        <h5 class="value">{{ implode(',', $ticket->seats) }}</h5>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- QR Code (Right side) -->
                    <div class="ticket-q">
                        <br>
                        <h4>@lang('QR Code for Ticket Verification')</h4>
                        <br>
                        <img src="data:image/svg+xml;base64,{{ $qrCodeBase64 }}" alt="QR Code">
                    </div>
                </div>
            </div>
        </div>
    </div>
<center>
    <br>
    <div class="print-btn">
        <button type="button" class="cmn-btn btn-download" id="demo">@lang('Download Ticket')</button>
    </div>
    </center>
   

    <!-- jquery -->
    <script src="{{ asset($activeTemplateTrue.'js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset($activeTemplateTrue.'js/html2pdf.bundle.min.js') }}"></script>
    <script>
    "use strict";
   
    const fullname = '{{ $ticket->user->fullname }}';
    const pnr_number = '{{ $ticket->pnr_number }}';

    const options = {
        margin: 0.3,
        filename: `${fullname}_Ticket.pdf`, 
        image: {
            type: 'svg',
            quality: 0.98
        },
        html2canvas: {
            scale: 2
        },
        jsPDF: {
            unit: 'in',
            format: 'A4',
            orientation: 'landscape'
        }
    }

    $(document).on('click', '.btn-download', function(e) {
        e.preventDefault();
        var content = document.getElementById('block1'); // Get the HTML content of the element with id "block1"
        html2pdf().from(content).set(options).save(); // Use the correct content and set the options
    });
</script>

</body>

</html>
