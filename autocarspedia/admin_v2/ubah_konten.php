<?php

// Menghubungkan file
include 'koneksi.php';
include 'function.php';

// Mengambil id_mobil dari url
$id_mobil = (int)$_GET['id_mobil'];

$konten = select("SELECT * FROM tbl_konten WHERE id_mobil = $id_mobil")[0];

// Check tombol ubah ditekan
if (isset($_POST['ubah'])) {
  if (update_konten($_POST) > 0) {
    echo "<script>
            alert('Data Konten Berhasil Diubah');
            document.location.href = 'admin_v2.php';
          </script>";
  } else {
    echo "<script>
            alert('Data Konten Gagal Diubah');
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
      <h3>Ubah Data Konten</h3>
      <hr>

      
        <form action="ubah_konten.php" method="post" enctype="multipart/form-data">
         
        <input type="hidden" name="id_mobil" value="<?= $konten['id_mobil']; ?>">

        <div class="mb-3">
            <label for="nama_mobil" class="form-label">Nama mobil</label>
            <input type="text" class="form-control" id="nama_mobil" name="nama_mobil" value="<?= $konten['nama_mobil']; ?>" placeholder="Nama mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="harga_mobil" class="form-label">Harga mobil</label>
            <input type="number" class="form-control" id="harga_mobil" name="harga_mobil" value="<?= $konten['harga_mobil']; ?>" placeholder="Harga mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="desk_mobil" class="form-label">Deskripsi mobil</label>
            <input type="text" class="form-control" id="desk_mobil" name="desk_mobil" value="<?= $konten['desk_mobil']; ?>" placeholder="Deskripsi mobil ..."
            required>
         </div>

         <div class="mb-3">
            <label for="merk_mobil" class="form-label">Merk mobil</label>
            <select class="form-select" id="merk_mobil" name="merk_mobil">
            <?php
            // Array berisi opsi-opsi merk mobil
            $merk_mobil_options = ['BMW', 'Daihatsu', 'Honda', 'Hyundai', 'Suzuki', 'Toyota'];

            // Loop untuk membuat opsi-opsi
            foreach ($merk_mobil_options as $option) {
            // Periksa apakah nilai dari database sama dengan nilai opsi saat ini
            $selected = ($option == $konten['merk_mobil']) ? 'selected' : '';

            // Tampilkan opsi
            echo "<option value=\"$option\" $selected>$option</option>";
        }
        ?>
            </select>
         </div>

         <div class="mb-3">
            <label for="model_mobil" class="form-label">Merk mobil</label>
            <select class="form-select" id="model_mobil" name="model_mobil">
            <?php
            // Array berisi opsi-opsi merk mobil
            $model_mobil_options = ['Classic', 'Modern', 'Sport'];

            // Loop untuk membuat opsi-opsi
            foreach ($model_mobil_options as $option) {
            // Periksa apakah nilai dari database sama dengan nilai opsi saat ini
            $selected = ($option == $konten['model_mobil']) ? 'selected' : '';

            // Tampilkan opsi
            echo "<option value=\"$option\" $selected>$option</option>";
        }
        ?>
            </select>
         </div>

         <div class="mb-3">
            <label for="gambar_mobil" class="form-label">Gambar mobil</label>
            <input class="form-control" type="file" id="gambar_mobil" name="gambar_mobil">
         </div>

         <div class="mb-3">
            <label for="video_mobil" class="form-label">Video mobil</label>
            <input type="text" class="form-control" id="video_mobil" name="video_mobil" value="<?= $konten['video_mobil']; ?>" placeholder="Video mobil ..."
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