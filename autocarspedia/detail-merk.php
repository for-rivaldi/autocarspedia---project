<?php
session_start();
include 'admin_v2/koneksi.php';

// Dapatkan id_mobil dari URL
$id_mobil = $_GET['id'];
// Query untuk mengambil data konten berdasarkan id_mobil
$query = "SELECT * FROM tbl_konten WHERE id_mobil = $id_mobil";
$result = mysqli_query($db, $query);

// Periksa apakah query berhasil dieksekusi
if ($result) {
    // Periksa apakah ada data yang ditemukan
    if (mysqli_num_rows($result) > 0) {
        // Ambil data konten dari hasil query
        $konten = mysqli_fetch_assoc($result);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail</title>

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="icon" type="image/png" href="assets/logo-luxurycars.png"/>
    
    <!-- CSS links -->
    <link rel="stylesheet" href="css/detail.css">

    <!-- Google Icons links -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>

<section>
    <div class="bar-detail">
    <div class="btn-kembali">   
    <?php
    if (isset($_SESSION['merk'])) {
        // Jika session 'merk' ada, arahkan kembali ke halaman katalog-merk.php
        echo '<a href="katalog-merk.php?merk=' . $_SESSION['merk'] . '"><i class="bx bx-chevron-left"></i></a>';
    } elseif (isset($_SESSION['model'])) {
        // Jika session 'model' ada, arahkan kembali ke halaman katalog-model.php
        echo '<a href="katalog-model.php?kategori=' . $_SESSION['model'] . '"><i class="bx bx-chevron-left"></i></a>';
    } else {
        // Jika tidak ada session, arahkan kembali ke halaman utama
        echo '<a href="home.php"><i class="bx bx-chevron-left"></i></a>';
    }
    ?>
    </div>
        <!-- Left start -->
        <div class="bar-left">
            <div class="gambar">
                <img src="admin_v2/cache/<?php echo $konten['gambar_mobil']; ?>">
            </div>
        </div>
        <!-- Left end -->
        
        <!-- Right start -->

    <div class="bar-right">
        <div class="bar-atas">
            <div class="head-teks">
                <h3><?php echo $konten['nama_mobil']; ?></h3>
                <p>$<?php echo number_format($konten['harga_mobil'],0,'.',','); ?></p>
            </div>
            <div class="bar-key">
                <button>
                    <span class="material-symbols-outlined">
                        label
                    </span>
                    <p><?php echo $konten['model_mobil']; ?></p>
                </button>
                <button>
                    <span class="material-symbols-outlined">
                        search_hands_free
                    </span>
                    <p>Manual</p>
                </button>
                <button>
                    <span class="material-symbols-outlined">
                        directions_car
                    </span>
                    <p><?php echo $konten['merk_mobil']; ?></p>
                </button>
            </div>
        </div>
        
        <div class="garis">
            <div class="line"></div>
        </div>

        <div class="bar-konten">
                <!-- Description start -->
                <div class="bar-description" id="description">
                    <h3>Deskripsi</h3>
                    <p><?php echo $konten['desk_mobil']; ?></p>
                </div>
                    <!-- Description end -->
                    
                    <!-- Videos start -->
                <div class="bar-videos" id="videos">
                <div class="video-items">
                <iframe src="<?php echo $konten['video_mobil']; ?>"></iframe>
                </div>
                </div>
                    <!-- Videos end -->
                    
        </div>        
    </div>
        <!-- Right end -->
    </div>

</section>

<?php
    } else {
        // Tampilkan pesan jika id_mobil tidak ditemukan
        echo "Konten tidak ditemukan.";
    }
} else {
    // Tampilkan pesan error jika query gagal dieksekusi
    echo "Gagal mengambil data dari database: " . mysqli_error($koneksi);
}
?>

</body>
</html>