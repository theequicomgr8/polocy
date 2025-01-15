<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
    <style>
        .main {
    display: flex;
    width: 100%;
    height: 100vh;
    justify-content: center;
    align-items: center;
}
    </style>
</head>
<body>
    <div class="container">
        @yield('content')
    </div>

    @section('script')
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    @show
</body>
</html>
