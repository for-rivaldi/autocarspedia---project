<?php

// Menghubungkan file
include 'koneksi.php';
include 'function.php';

// Mengambil id_users dari url
$id_users = (int)$_GET['id_users'];

$users = select("SELECT * FROM tbl_users WHERE id_users = $id_users")[0];

// Check tombol ubah ditekan
if (isset($_POST['ubah'])) {
  if (update_users($_POST) > 0) {
    echo "<script>
            alert('Data Users Berhasil Diubah');
            document.location.href = 'admin_v2.php';
          </script>";
  } else {
    echo "<script>
            alert('Data Users Gagal Diubah');
            document.location.href = 'admin_v2.php';
          </script>";
  }
}
?>

<?php
// $data_users = select("SELECT * FROM tbl_users");
// $data_users = select("SELECT * FROM tbl_users");
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>AdminSide</title>
  </head>
  <body>

    <!-- <div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="#">CRUD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#admin_v2.php">users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Akun</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ulasan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    </div> -->

    
    <!-- Tabel menampilkan tambah data -->
    <div class="container mt-5">
      <h3>Ubah Data Users</h3>
      <hr>

      
      <form action="ubah_users.php" method="post" enctype="multipart/form-data">

      <input type="hidden" name="id_users" value="<?= $users['id_users']; ?>">

         <div class="mb-3">
            <label for="nama" class="form-label">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" value="<?= $users['nama']; ?>" placeholder="Nama ..."
            required>
         </div>

         <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" value="<?= $users['username']; ?>" placeholder="Username ..."
            required>
         </div>

         <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" value="<?= $users['password']; ?>" placeholder="Password ..."
            required>
         </div>

         <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="<?= $users['email']; ?>" placeholder="Email ..."
            required>
         </div>

         <div class="mt-5 mb-5">
           <button type="submit" name="ubah" class="btn btn-primary" style="float: right;">Ubah</button>
           <a href="admin_v2.php">
             <button type="button" class="btn btn-secondary">Batal Ubah</button>
            </a>
        </div>
      </form>

    </div>
    <!-- Tabel menampilkan tambah data -->


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>