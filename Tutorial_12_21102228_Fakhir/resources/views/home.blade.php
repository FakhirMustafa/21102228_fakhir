<!-- resources/views/home.blade.php -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="card text-center shadow-sm">
      <div class="card-body">
        <h3 class="card-title">Selamat Datang, {{ $user->name }}</h3>
        <p class="card-text">Kamu berhasil login ke sistem.</p>
        <a href="/logout" class="btn btn-danger">Logout</a>
      </div>
    </div>
  </div>
</body>
</html>
