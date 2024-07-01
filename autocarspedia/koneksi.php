<?php
$servername = "localhost";
$database = "db_autocarspedia";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

// cek koneksi
if (!$conn) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
?>
