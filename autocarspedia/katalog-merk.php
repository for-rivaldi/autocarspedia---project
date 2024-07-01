<?php
session_start();
include 'admin_v2/koneksi.php';
include 'admin_v2/function.php';

// Ambil parameter 'merk' dari URL
$merk = isset($_GET['merk']) ? $_GET['merk'] : '';

// Simpan merk ke dalam session
$_SESSION['merk'] = $merk;

// Query untuk mengambil data mobil berdasarkan merk
$query = "SELECT * FROM tbl_konten WHERE merk_mobil = '$merk'";
$data_konten = select($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Katalog | LuxuryCars</title>
    <!-- CSS links -->
    <link rel="stylesheet" href="css/katalog-merky.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

<!-- Item-card start -->
<div class="container">
    <div class="btn-kembali">
        <a href="home.php">
            <i class='bx bx-chevron-left'></i>
        </a>
    </div>
    <div class="bar-card">
        <?php $counter = 0; ?>
        <?php foreach ($data_konten as $konten) : ?>
            <?php if ($counter % 4 == 0) : ?>
                <div class="card-row"> <!-- Baris baru setiap 4 card -->
            <?php endif; ?>
            <div class="items-card">
                <div class="bar-gambar">
                    <img src="admin_v2/cache/<?php echo $konten['gambar_mobil']; ?>">
                </div>
                <div class="bar-teks">
                    <h3><?php echo $konten['nama_mobil']; ?></h3>
                    <td>$<?php echo number_format($konten['harga_mobil'],0,'.',','); ?></td>
                </div>
                <div class="bar-key">
                    <button><?php echo $konten['model_mobil']; ?></button>
                    <button>Manual</button>
                    <button><?php echo $konten['merk_mobil']; ?></button>
                </div>
                <div class="bar-more">
                    <a href="detail-merk.php?id=<?php echo $konten['id_mobil']; ?>">
                        <button>
                            <p>View more</p>
                            <i class='bx bx-right-arrow-alt'></i>
                        </button>
                    </a>
                </div>
            </div>
            <?php $counter++; ?>
            <?php if ($counter % 4 == 0) : ?>
                </div> <!-- Tutup baris setiap 4 card -->
            <?php endif; ?>
        <?php endforeach; ?>
        <?php if ($counter % 4 != 0) : ?>
            </div> <!-- Tutup baris terakhir jika tidak genap kelipatan 4 -->
        <?php endif; ?>
    </div>
    <div class="btn-keatas">
        <button id="scrollToTopBtn">
            <i class='bx bx-chevron-up'></i>
        </button>
    </div>
</div>
<!-- Item-card end -->

<script>
    // Scroll to top functionality
    const scrollToTopBtn = document.getElementById('scrollToTopBtn');
    scrollToTopBtn.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
</script>

</body>
</html>
