<?php
// Sambungkan ke database dan fungsi-fungsi yang diperlukan
include 'koneksi.php';
include 'function.php';

// Ambil ID gambar dari parameter URL
$id_mobil = isset($_GET['id_mobil']) ? (int)$_GET['id_mobil'] : null;

// Periksa apakah ID gambar valid
if ($id_mobil === null || $id_mobil <= 0) {
    // Jika tidak valid, berikan pesan kesalahan
    echo 'ID gambar tidak valid';
    exit();
}

// Ambil data gambar dari database
$gambar_data = select("SELECT gambar_mobil FROM tbl_konten WHERE id_mobil = $id_mobil");

// Periksa apakah data gambar ditemukan
if (empty($gambar_data) || empty($gambar_data[0]['gambar_mobil'])) {
    // Jika tidak ditemukan, berikan pesan kesalahan atau gambar placeholder
    echo 'Gambar tidak ditemukan';
    exit();
}

// Set header content type agar browser mengenali sebagai gambar
header('Content-Type: image/jpeg'); // Ganti dengan tipe gambar yang sesuai jika formatnya berbeda

// Keluarkan data gambar dari database
echo $gambar_data[0]['gambar_mobil'];
