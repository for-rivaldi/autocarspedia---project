<?php

// Fungsi menampilkan
function select($query) {

    // panggil koneksi database
    global $db;
  
    $result = mysqli_query($db, $query);
    $rows = [];
  
    while ($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
    }
  
    return $rows;
  }

// Fungsi update data konten


// Fungsi menambahkan data konten
function create_konten($post) {
    global $db;

    $nama_mobil   = $post['nama_mobil'];
    $harga_mobil  = $post['harga_mobil'];
    $desk_mobil   = $post['desk_mobil'];
    $merk_mobil   = $post['merk_mobil'];
    $model_mobil  = $post['model_mobil'];
    $gambar_mobil = upload_file();
    $video_mobil  = $post['video_mobil'];

    // Check upload gambar
    if (!$gambar_mobil) {
        return false;
    }

    // Query tambah data
    $query = "INSERT INTO tbl_konten VALUES (null, '$nama_mobil', '$harga_mobil', '$desk_mobil', '$merk_mobil', '$model_mobil', '$gambar_mobil', '$video_mobil')";

    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

// Fungsi update data konten
function update_konten($post) {
  global $db;

  $id_mobil     = $post['id_mobil'];
  $nama_mobil   = mysqli_real_escape_string($db, $post['nama_mobil']);
  $harga_mobil  = mysqli_real_escape_string($db, $post['harga_mobil']);
  $desk_mobil   = mysqli_real_escape_string($db, $post['desk_mobil']);
  $merk_mobil   = mysqli_real_escape_string($db, $post['merk_mobil']);
  $model_mobil  = mysqli_real_escape_string($db, $post['model_mobil']);
  $video_mobil  = mysqli_real_escape_string($db, $post['video_mobil']);

  // Cek apakah ada gambar baru yang diunggah
  if (!empty($_FILES['gambar_mobil']['name'])) {
      $gambar_mobil = upload_file();
      // Check upload gambar
      if (!$gambar_mobil) {
          return false;
      }
  } else {
      // Gunakan gambar yang sudah ada dari database
      $konten = select("SELECT gambar_mobil FROM tbl_konten WHERE id_mobil = $id_mobil")[0];
      $gambar_mobil = $konten['gambar_mobil'];
  }

  // Query ubah data
  $query = "UPDATE tbl_konten SET nama_mobil = '$nama_mobil', harga_mobil = '$harga_mobil', desk_mobil = '$desk_mobil', merk_mobil = '$merk_mobil', model_mobil = '$model_mobil', gambar_mobil = '$gambar_mobil', video_mobil = '$video_mobil' WHERE id_mobil = $id_mobil";

  mysqli_query($db, $query);

  return mysqli_affected_rows($db);
}


    // fungsi upload file
function upload_file() {
      $namaFile   = $_FILES['gambar_mobil']['name'];
      $ukuranFile = $_FILES ['gambar_mobil']['size'];
      $error      = $_FILES ['gambar_mobil']['error'];
      $tmpName    = $_FILES ['gambar_mobil']['tmp_name'];
      
      // Check file yang di upload
      $extensifileValid = ['jpg', 'jpeg', 'png'];
      $extensifile      = explode('.', $namaFile);
      $extensifile      = strtolower(end($extensifile));

      // Check format atau extensi file
      if (!in_array($extensifile, $extensifileValid)) {

        // pesan gagal
        echo "<script>
                alert('Format File Tidak Valid!');
                document.location.href = 'form_tambah.php';
              </script>";
        die();
      }

      // Check ukuran file
      if ($ukuranFile > 10485760) {

      // Pesan gagal 
      echo "<script>
                alert('Ukuran File Max 10 MB!');
                document.location.href = 'form_tambah.php';
              </script>";
        die();
      }

      // // Menentukan path folder
      $folderMerk = dirname(__FILE__) . '/cache/';

      // Baca konten (gambar) dari file yang diunggah
      $kontenFileBaru = file_get_contents($tmpName);

      // Loop through existing files in the folder
      $files = scandir($folderMerk);
      foreach ($files as $file) {
          // Skip current and parent directory entries
          if ($file === '.' || $file === '..') continue;

      // Baca konten (gambar) dari file yang ada di dalam folder
      $kontenFileLama = file_get_contents($folderMerk . $file);

      // Periksa apakah konten file yang diunggah sama dengan konten file yang ada
      if ($kontenFileBaru === $kontenFileLama) {
          // Jika sama, beri pesan dan hentikan proses upload
          echo "<script>
                  alert('File yang diunggah identik dengan file yang sudah ada.');
                  document.location.href = 'form_tambah.php';
                </script>";
          die();
      }
}

      // Pindahkan file ke folder merk
      if (!move_uploaded_file($tmpName, $folderMerk . $namaFile)) {
        // Pesan gagal jika pemindahan file gagal
        echo "<script>
                alert('Gagal mengunggah file!');
                document.location.href = 'form_tambah.php';
              </script>";
        die();
      }
      return $namaFile;
}
  
// Fungsi update data users
function update_users($post) {
  global $db;

  $id_users     = $post['id_users'];
  $nama   = mysqli_real_escape_string($db, $post['nama']);
  $username  = mysqli_real_escape_string($db, $post['username']);
  $password   = mysqli_real_escape_string($db, $post['password']);
  $email   = mysqli_real_escape_string($db, $post['email']);

  // Query ubah data
  $query = "UPDATE tbl_users SET nama = '$nama', username = '$username', password = '$password', email = '$email' WHERE id_users = $id_users";

  mysqli_query($db, $query);

  return mysqli_affected_rows($db);
}

// Fungsi hapus data users
function delete_users($id_users) {
  global $db;

  //Query hapus data users
  $query = "DELETE FROM tbl_users WHERE id_users = $id_users";

  mysqli_query($db, $query);

  return mysqli_affected_rows($db);

}

// Fungsi hapus data konten
function delete_konten($id_mobil) {
  global $db;

  //Query hapus data users
  $query = "DELETE FROM tbl_konten WHERE id_mobil = $id_mobil";

  mysqli_query($db, $query);

  return mysqli_affected_rows($db);

}

?>