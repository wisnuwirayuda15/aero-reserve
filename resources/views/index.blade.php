<!doctype html>
<html lang="en">

<head>
    <title>Flight API Test</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha3/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables -->
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <style>
        *,
        html,
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    </style>

</head>

<body>
    <header>
        <!-- place navbar here -->
    </header>
    <main>
        <div class="container mt-5">
            <h1 class="mb-4 text-center">Real-time Flight Status & Global Aviation Data</h1>
            <table class="table-striped table-bordered w-100 table" id="dataTable">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Airline</th>
                        <th>Flight Code</th>
                        <th>Departur</th>
                        <th>Arrival</th>
                        <th>Scheduled</th>
                        <th>Estimated</th>
                        <th>Status</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($api_result as $flight)
                        @php
                            if (!isset($flight['departure']['delay'])) {
                                if ($flight['flight_status'] == 'active') {
                                    $status = ucwords($flight['flight_status']);
                                } else {
                                    $status = ucwords($flight['flight_status']) . ' (On Time)';
                                }
                            } else {
                                $status = 'Delay (' . $flight['departure']['delay'] . ' Minutes)';
                            }
                        @endphp
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $flight['airline']['name'] }} ({{ $flight['airline']['iata'] }})</td>
                            <td>{{ $flight['flight']['iata'] }}</td>
                            <td>{{ $flight['departure']['airport'] }} ({{ $flight['departure']['iata'] }})
                                ({{ $flight['departure']['timezone'] }})
                            </td>
                            <td>{{ $flight['arrival']['airport'] }} ({{ $flight['arrival']['iata'] }})
                                ({{ $flight['arrival']['timezone'] }})</td>
                            <td>{{ $flight['departure']['scheduled'] }}</td>
                            <td>{{ $flight['arrival']['estimated'] }}</td>
                            <td>{{ $status }}</td>
                            <td>{{ $flight['flight_date'] }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.7/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha3/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#dataTable').DataTable({
                pageLength: 10,
                scrollX: true,
                paging: true,
                searching: true,
                info: true,
                stateSave: true,
                lengthMenu: [5, 10, 25, 50, 100]
            });
            $('.dataTables_info, .dataTables_paginate').addClass('mt-4 mb-5');
            $('.dataTables_length').addClass('mb-4');
        })
    </script>
</body>

</html>
