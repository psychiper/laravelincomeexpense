<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design for Bootstrap</title>
  <!-- MDB icon -->
  <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="{{ asset('public/test/css/bootstrap.min.css') }}">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="{{ asset('public/test/css/mdb.min.css') }}">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="{{ asset('public/test/css/style.css') }}">
  <link href="{{ asset('public/pickadate/lib/themes/default.css') }}" rel="stylesheet">
  <link href="{{ asset('public/pickadate/lib/themes/default.date.css') }}" rel="stylesheet">



</head>
<body>

  <!-- Start your project here-->



@include('layouts.navbar')
@yield('content')
@include('layouts.footer')



  <!-- End your project here-->
</body>
    <!-- jQuery -->
    <script type="text/javascript" src="{{ asset('public/test/js/jquery.min.js') }}"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="{{ asset('public/test/js/popper.min.js') }}"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="{{ asset('public/test/js/bootstrap.min.js') }}"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="{{ asset('public/test/js/mdb.min.js') }}"></script>
    <script src="{{ asset('public/pickadate/lib/picker.js') }}"></script>
    <script src="{{ asset('public/pickadate/lib/picker.date.js') }}"></script>
    <!-- Datepicker -->
    <script>
        $('.datepicker').pickadate({
          // Escape any “rule” characters with an exclamation mark (!).
          format: 'yyyy-mm-dd',
          viewMode: "months",
    minViewMode: "months"
          })
      </script>

        <!-- Datepicker -->
    <script>
        $('.range1').pickadate({
          // Escape any “rule” characters with an exclamation mark (!).
          format: 'yyyy-mm',
          viewMode: "months",
    minViewMode: "months"
          })
      </script>
</html>
