<?php
include 'koneksi.php';

$error_message = '';

if (isset($_POST['login'])) {
    if (isset($_POST['username']) && isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = md5($_POST['password']);

        if (isset($db)) {
            $query = mysqli_query($db, "SELECT * FROM `tbl_admin` WHERE `username`='$username' AND `password`='$password'");
            if (mysqli_num_rows($query) == 1) {
                session_start();
                $_SESSION['username'] = $username;
                header("Location: admin_v2.php");
                exit();
            } else {
                $error_message = "Login Gagal. username atau password yang anda masukkan salah!";
            }
        } else {
            $error_message = "Koneksi ke database tidak tersedia.";
        }
    } else {
        $error_message = "Form login belum lengkap.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- CSS links -->
    <link rel="stylesheet" href="../css/loginxx.css">
    <link rel="icon" type="image/png" href="assets/logo-luxurycars.png"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

<div class="container">
    <div class="wadah">
        <h1>LOGIN</h1>
        <?php if (!empty($error_message)): ?>
            <div class="bar-error-message">
                <div class="error-message">
                    <i class='bx bxs-alarm-exclamation'></i>
                    <p><?php echo $error_message; ?></p>
                    <button onclick="slideUpAndRedirect();">Coba Lagi</button>
                </div>
            </div>
        <?php endif; ?>
        <form action="" method="post">
            <div class="section-input">
                <div class="bar-input">    
                    <input type="text" name="username" id="username" placeholder="Username" required>
                </div>
                <div class="bar-input">
                    <input type="password" name="password" id="password" placeholder="Password" required>
                </div>
            </div>
            <div class="section-submit">
                <p>Dengan menekan registrasi sekarang, kamu menyetujui</p>
                <p><a class="links" href="../kebijakan.php">Ketentuan Pengguna</a> dan <a class="links" href="../kebijakan.php">Kebijakan Privasi</a></p>
                <button type="submit" name="login" value="Login Sekarang">Login Sekarang</button>
                <a class="btn-registrasi" href="registrasi.php">Register Sekarang</a>
                <div class="section-ubahpw">
                    <a class="btn-ubahpw" href="ubah-password.php">Lupa password?</a>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Animasi alert  -->
<script>
    // Function to add slideUp class to the error message
function slideUpAndRedirect() {
    const errorMessage = document.querySelector('.error-message');
    errorMessage.classList.add('slideUp');

    // Wait for the slideUp animation to complete before redirecting
    errorMessage.addEventListener('animationend', () => {
        window.location.href = 'login.php';
    });
}

</script>

</body>
</html>
