@extends('admin.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-md-12">
            <div class="card b-radius--10">
                <div class="card-body">
                <div class="print-btn">
        <button type="button" class="cmn-btn btn-download" id="demo">@lang('Download')</button>
    </div>
                    <div class="table-responsive--sm table-responsive" id="ticketTable">
                        <table class="table table--light style--two">
                            <thead>
                                <tr>
                                    <th>@lang('User')</th>
                                    <th>@lang('PNR Number')</th>
                                    <th>@lang('Journey Date')</th>
                                    <th>@lang('Trip')</th>
                                    <th>@lang('Pickup Point')</th>
                                    <th>@lang('Dropping Point')</th>
                                    <th>@lang('Status')</th>
                                    <th>@lang('Ticket Count')</th>
                                    <th>@lang('Fare')</th>
                                </tr>
                            </thead>
                            <tbody>
                            @forelse($tickets as $item)
                                <tr>
                                    <td>{{ __(@$item->user->fullname) }}</td>
                                    <td>{{ __($item->pnr_number) }}</td>
                                    <td>{{ __(showDateTime($item->date_of_journey, 'd M, Y')) }}</td>
                                    <td>{{ __($item->trip->startFrom->name ) }} - {{ __($item->trip->endTo->name ) }}</td>
                                    <td>{{ __($item->pickup->name) }}</td>
                                    <td>{{ __($item->drop->name) }}</td>
                                    <td>
                                        @if ($item->status == 1)
                                            <span class="badge badge--success">@lang('Booked')</span>
                                        @elseif($item->status == 2)
                                            <span class="badge badge--warning">@lang('Pending')</span>
                                        @else
                                            <span class="badge badge--danger">@lang('Rejected')</span>
                                        @endif
                                    </td>
                                    <td>{{ __(sizeof($item->seats)) }}</td>
                                    <td>{{ __(showAmount($item->sub_total)) }} {{ __($general->cur_text) }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td class="text-muted text-center" colspan="100%">{{ __($emptyMessage) }}</td>
                                </tr>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer py-4">
                    {{ paginateLinks($tickets) }}
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <!-- jquery -->
    <!-- jquery -->
    <script src="{{ asset($activeTemplateTrue.'js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset($activeTemplateTrue.'js/html2pdf.bundle.min.js') }}"></script>
    <script>
    "use strict";
   
   
    const options = {
        margin: 0.3,
        filename: `Report_Ticket.pdf`, 
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
    var content = document.getElementById('ticketTable'); // Correct ID
    html2pdf().from(content).set(options).save();
});
</script>
@endpush