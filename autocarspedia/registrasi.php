<?php
session_start();
include "koneksi.php";

if (isset($_POST['registrasi'])) {
    if (isset($_POST['nama']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['email'])) {
        $nama = mysqli_real_escape_string($conn, $_POST['nama']);
        $username = mysqli_real_escape_string($conn, $_POST['username']);
        $password = $_POST['password'];
        $email = mysqli_real_escape_string($conn, $_POST['email']);

        if (strlen($password) < 8) {
            $error_message = "Password harus memiliki minimal 8 karakter.";
        } else {
            $password = md5($password);

            if (isset($conn)) {
                // Cek apakah username sudah digunakan
                $query = "SELECT * FROM tbl_users WHERE username = '$username'";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) > 0) {
                    $error_message = "Username sudah digunakan, Silahkan gunakan yang lain.";
                } else {
                    // Cek apakah nama sudah digunakan
                    $query = "SELECT * FROM tbl_users WHERE nama = '$nama'";
                    $result = mysqli_query($conn, $query);

                    if (mysqli_num_rows($result) > 0) {
                        $error_message = "Nama sudah digunakan, Silahkan gunakan yang lain.";
                    } else {
                        // Cek apakah email sudah digunakan
                        $query = "SELECT * FROM tbl_users WHERE email = '$email'";
                        $result = mysqli_query($conn, $query);

                        if (mysqli_num_rows($result) > 0) {
                            $error_message = "Email sudah digunakan, Silahkan gunakan yang lain.";
                        } else {
                            // Jika semuanya tidak digunakan, insert data baru
                            $query = "INSERT INTO tbl_users (nama, username, password, email) VALUES ('$nama', '$username', '$password', '$email')";
                            $insert_result = mysqli_query($conn, $query);

                            if ($insert_result) {
                                $success_message = "Selamat Registrasi Anda berhasil, Silahkan login!";
                                header("Location: index.php");
                                exit();
                            } else {
                                $error_message = "Registrasi Anda gagal: " . mysqli_error($conn);
                            }
                        }
                    }
                }
            } else {
                $error_message = "Koneksi ke database tidak tersedia";
            }
        }
    } else {
        $error_message = "Form registrasi belum lengkap";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrasi</title>
    <link rel="stylesheet" href="css/registrasiy.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<div class="container">
    <div class="wadah">
        <h1>REGISTRASI</h1>
        <form action="" method="post">
            <div class="section-input">
                <div class="bar-input">
                    <input type="text" name="nama" id="nama" placeholder="Nama" required>
                </div>
                <div class="bar-input">
                    <input type="text" name="username" id="username" placeholder="Username" required>
                </div>
                <div class="bar-input">
                    <input type="password" name="password" id="password" placeholder="Password" required>
                </div>
                <div class="bar-input">
                    <input type="email" name="email" id="email" placeholder="Email" required>
                </div>
            </div>
            <div class="section-submit">
                <p>Dengan menekan registrasi sekarang, kamu menyetujui</p>
                <p><a class="links" href="kebijakan.php">Ketentuan Pengguna</a> dan <a class="links" href="kebijakan.php">Kebijakan Privasi</a></p>
                <button type="submit" name="registrasi" class="btn btn-warning">Register Sekarang</button>
                <a class="btn-registrasi" href="index.php">Login Sekarang</a>
            </div>
        </form>
    </div>
</div>

<?php if (isset($error_message)) : ?>
    <div class="bar-error-message">
        <div class="error-message">
            <i class='bx bxs-alarm-exclamation'></i>
            <p><?php echo $error_message; ?></p>
            <button onclick="window.location.href = 'registrasi.php';">Coba Lagi</button>
        </div>
    </div>
<?php endif; ?>

<?php if (isset($success_message)) : ?>
    <div class="bar-error-message">
        <div class="error-message">
            <i class='bx bxs-alarm-exclamation'></i>
            <p><?php echo $success_message; ?></p>
            <button onclick="window.location.href = 'index.php';">Login Sekarang</button>
        </div>
    </div>
<?php endif; ?>

</body>
</html>
