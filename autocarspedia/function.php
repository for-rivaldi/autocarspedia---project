<?php
$sql = "SELECT `id_mobil`, `nama-mobil`, `harga-mobil`, `desk-mobil`, `gambar-mobil`, `video-mobil` FROM `tbl-konten`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data dari setiap baris
    while($row = $result->fetch_assoc()) {
        
    }
} else {
    echo "0 hasil";
}

// Tutup koneksi
$conn->close();
?>
