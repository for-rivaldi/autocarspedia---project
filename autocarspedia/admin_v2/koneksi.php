<?php

$servername = "localhost";
$database = "db_autocarspedia";
$username = "root";
$password = "";

$db = mysqli_connect("localhost", "root", "", "db_autocarspedia");

// cek koneksi
if (mysqli_connect_error()) {
    echo "koneksi database gagal :" . mysqli_connect_error();
}
?>