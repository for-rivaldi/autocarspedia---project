<?php

// Memanggil file lainnya
include 'koneksi.php';
include 'function.php';

// Menghapus data users
$id_users = (int)$_GET['id_users'];

if (delete_users($id_users) > 0) {
    echo "<script>
            alert('Data Users Berhasil Dihapus!');
            document.location.href = 'admin_v2.php';
          </script>";
} else {
    echo "<script>
            alert('Data Users Gagal Dihapus!');
            document.location.href = 'admin_v2.php';
          </script>";
}

?>