<?php

include 'koneksi.php';
include 'function.php';

?>

<?php

$data_users = select("SELECT * FROM tbl_users");
$data_konten = select("SELECT * FROM tbl_konten");

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- CSS links -->
    <link rel="stylesheet" href="css/admin.css">

    <title>AdminSide</title>
  </head>
  <body>
    
    <div class="section">
    <!-- Tabel menampilkan data pengguna -->
    <div class="container mt-5 section-one">
      <h3>Data Akun</h3>
      <hr>
      <!-- <a href="form-tambah.php" class="btn btn-primary mb-1">Tambah</a> -->
        
        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAMA</th>
                    <th>USERNAME</th>
                    <th>PASSWORD</th>
                    <th>EMAIL</th>
                    <th>AKSI</th>
                </tr>
            </thead>
            <tbody>
              <?php $no = 1; ?>
              <?php foreach ($data_users as $users) : ?>
                <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $users['nama']; ?></td>
                <td><?php echo $users['username']; ?></td>
                <td><?php echo $users['password']; ?></td>
                <td><?php echo $users['email']; ?></td>
                    <td width="15%" class="text-center">
                        <a href="ubah_users.php?id_users=<?= $users['id_users']; ?>" class="btn btn-success">UBAH</a>
                        <a href="hapus-users.php?id_users=<?= $users['id_users'];?>" class="btn btn-danger" onclick="return confirm('Yakin data users akan dihapus.?')">HAPUS</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <!-- Tabel menampilkan data pengguna -->

    <!-- Tabel menampilkan data konten -->
    <div class="container mt-5 section-two">
        <h3>Data konten</h3>
        <hr>
        <a href="form_tambah.php" class="btn btn-primary mb-1">Tambah</a>
        
        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAMA</th>
                    <th>HARGA</th>
                    <th>DESKRIPSI</th>
                    <th>MERK</th>
                    <th>MODEL</th>
                    <th>GAMBAR</th>
                    <th>VIDEO</th>
                    <th>AKSI</th>
                </tr>
            </thead>
            <tbody>
              <?php $no = 1; ?>
              <?php foreach ($data_konten as $konten) : ?>
                <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $konten['nama_mobil']; ?></td>
                <td>$<?php echo number_format($konten['harga_mobil'],0,'.',','); ?></td>
                <td><?php echo $konten['desk_mobil']; ?></td>
                <td><?php echo $konten['merk_mobil']; ?></td>
                <td><?php echo $konten['model_mobil']; ?></td>
                <td><img src="cache/<?php echo $konten['gambar_mobil']; ?>" height="150px" width="150px" /></td>
                <td><iframe width="200" height="100" src="<?php echo $konten['video_mobil']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </td>
                    <td width="15%" class="text-center">
                        <a href="ubah_konten.php?id_mobil=<?= $konten['id_mobil']; ?>" class="btn btn-success">UBAH</a>
                        <a href="hapus_konten.php?id_mobil=<?= $konten['id_mobil'];?>" class="btn btn-danger" onclick="return confirm('Yakin data konten akan dihapus.?')";>HAPUS</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

      </div>
      <!-- Tabel menampilkan data konten -->
      <a href="login.php" style="margin-top: 50px;">
        <button type="submit" name="keluar" class="btn btn-secondary" style="padding: 10px 100px; font-size: 20px;">KELUAR</button>
    </a>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>