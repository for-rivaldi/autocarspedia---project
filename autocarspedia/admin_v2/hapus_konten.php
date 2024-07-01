<?php

// Memanggil file lainnya
include 'koneksi.php';
include 'function.php';

// Menghapus data konten
$id_mobil = (int)$_GET['id_mobil'];

if (delete_konten($id_mobil) > 0) {
    echo "<script>
            alert('Data Konten Berhasil Dihapus!');
            document.location.href = 'admin_v2.php';
          </script>";
} else {
    echo "<script>
            alert('Data Konten Gagal Dihapus!');
            document.location.href = 'admin_v2.php';
          </script>";
}

?>