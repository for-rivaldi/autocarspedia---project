<?php

// Menghubungkan file
include 'koneksi.php';
include 'function.php';

// Check tombol tambah ditekan
if (isset($_POST['tambah'])) {
  if (create_konten($_POST) > 0) {
    echo "<script>
            alert('Data Konten Berhasil Ditambahkan');
            document.location.href = 'admin_v2.php';
          </script>";
  } else {
    echo "<script>
            alert('Data Konten Gagal Ditambahkan');
            document.location.href = 'admin_v2.php';
          </script>";
  }
}
?>

<?php
// $data_users = select("SELECT * FROM tbl_users");
// $data_konten = select("SELECT * FROM tbl_konten");
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
    
    <!-- Tabel menampilkan tambah data -->
    <div class="container mt-5">
      <h3>Tambah Konten Mobil</h3>
      <hr>

      
        <form action="form_tambah.php" method="post" enctype="multipart/form-data">
         <div class="mb-3">
            <label for="nama_mobil" class="form-label">Nama mobil</label>
            <input type="text" class="form-control" id="nama_mobil" name="nama_mobil" placeholder="Nama mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="harga_mobil" class="form-label">Harga mobil</label>
            <input type="number" class="form-control" id="harga_mobil" name="harga_mobil" placeholder="Harga mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="desk_mobil" class="form-label">Deskripsi mobil</label>
            <input type="text" class="form-control" id="desk_mobil" name="desk_mobil" placeholder="Deskripsi mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="merk_mobil" class="form-label">Merk mobil</label>
            <select class="form-select" id="merk_mobil" name="merk_mobil">
              <option value="BMW">BMW</option>
              <option value="Daihatsu">Daihatsu</option>
              <option value="Honda">Honda</option>
              <option value="Hyundai">Hyundai</option>
              <option value="Suzuki">Suzuki</option>
              <option value="Toyota">Toyota</option>
            </select>
         </div>

         <div class="mb-3">
            <label for="model_mobil" class="form-label">Model mobil</label>
            <select class="form-select" id="model_mobil" name="model_mobil">
              <option value="Classic">Classic</option>
              <option value="Modern">Modern</option>
              <option value="Sport">Sport</option>
            </select>
         </div>

         <div class="mb-3">
            <label for="gambar_mobil" class="form-label">Gambar mobil</label>
            <input class="form-control" type="file" id="gambar_mobil" name="gambar_mobil">
         </div>

         <div class="mb-3">
            <label for="video_mobil" class="form-label">Video mobil</label>
            <input type="text" class="form-control" id="video_mobil" name="video_mobil" placeholder="Video mobil ..."
            required>
         </div>

         <div class="mt-5 mb-5">
           <button type="submit" name="tambah" class="btn btn-primary" style="float: right;">Tambah</button>
           <a href="admin_v2.php">
             <button type="button" class="btn btn-secondary">Batal Tambah</button>
            </a>
        </div>
         
        </form>

    </div>
    <!-- Tabel menampilkan tambah data -->


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>