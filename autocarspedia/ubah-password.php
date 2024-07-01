<?php
session_start();
include 'koneksi.php';

// Pesan kesalahan dan sukses
$error_message = '';
$success_message = '';

// Periksa apakah pengguna telah mengirimkan form
if (isset($_POST['ubah'])) {
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password_baru = $_POST['password1'];
    $konfirmasi_password_baru = $_POST['password2'];

    // Validasi password baru dan konfirmasi password baru
    if ($password_baru !== $konfirmasi_password_baru) {
        $error_message = "Konfirmasi password baru tidak sesuai.";
    } elseif (strlen($password_baru) < 8) {
        $error_message = "Password baru harus memiliki minimal 8 karakter.";
    } else {
        // Periksa apakah username dan email ada
        $query = "SELECT * FROM tbl_users WHERE username = '$username' AND email = '$email'";
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) > 0) {
            // Update dengan password baru
            $password_baru_hashed = md5($password_baru); // Gunakan password_hash untuk keamanan lebih baik
            $update_query = "UPDATE tbl_users SET password = '$password_baru_hashed' WHERE username = '$username' AND email = '$email'";

            if (mysqli_query($conn, $update_query)) {
                $success_message = "Password berhasil diubah.";
            } else {
                $error_message = "Terjadi kesalahan saat mengubah password.";
            }
        } else {
            $error_message = "Username atau email tidak ditemukan.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Password</title>

    <!-- CSS links -->
    <link rel="stylesheet" href="css/ubah-pwy.css">
    <link rel="icon" type="image/png" href="assets/logo-luxurycars.png"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

<div class="container">
    <div class="wadah">
        <h1>UBAH PASSWORD</h1>
        <form action="" method="post">
            <div class="section-input">
                <div class="bar-input">
                    <input type="text" name="username" id="username" placeholder="Username" required>
                </div>
                <div class="bar-input">
                    <input type="email" name="email" id="email" placeholder="Email" required>
                </div>
                <div class="bar-input">
                    <input type="password" name="password1" id="password1" placeholder="Password baru" required>
                </div>
                <div class="bar-input">
                    <input type="password" name="password2" id="password2" placeholder="Konfirmasi password baru" required>
                </div>
            </div>
            <div class="section-submit">
                <p>Dengan menekan ubah sekarang, kamu menyetujui</p>
                <p><a class="links" href="kebijakan.php">Ketentuan Pengguna</a> dan <a class="links" href="kebijakan.php">Kebijakan Privasi</a></p>
                <button type="submit" name="ubah" value="Ubah Sekarang">Ubah Sekarang</button>
                <a class="btn-registrasi" href="index.php">Login Sekarang</a>
            </div>
        </form>
        <?php if ($error_message): ?>
            <div class="bar-error-message">
                <div class="error-message">
                    <i class='bx bxs-alarm-exclamation'></i>
                    <p><?php echo $error_message; ?></p>
                    <button onclick="window.location.href = 'ubah-password.php';">Coba Lagi</button>
                </div>
            </div>
        <?php elseif ($success_message): ?>
            <div class="bar-success-message">
                <div class="success-message">
                    <i class='bx bxs-check-circle'></i>
                    <p><?php echo $success_message; ?></p>
                    <button onclick="window.location.href = 'index.php';">OK</button>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>

</body>
</html>
