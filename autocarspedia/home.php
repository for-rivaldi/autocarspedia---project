<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="css/home.css">
    <link rel="icon" type="image/png" href="assets/logo-autocarspedia.png"/>

    <!-- Bootstrap links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  
  </head>
  <body>


    <!-- Navbar Start -->

      <nav class="bar-navbar">
      <div class="logo">
        <img src="assets/logo-autocarspedia.png">
        <h2>AutoCars<span>Pedia</span></h2>
      </div>
      <div class="links">
        <a href="#">Home</a>
        <a href="#carcatalogue">Car Catalogue</a>
        <a href="#contactus">Contact Us</a>
        <a href="help.php">Help</a>
        <button class="btn-logout" id="myButton">Logout</button>
      </div>
      </nav>

    <!-- Navbar End -->

    <!-- Header start -->
    <div class="header">
      <div class="teks">
        <div class="teks-header">
          <h3>Cari informasi mobil?<br>
          AutoCarsPedia adalah Solusi!</h3>
          <p>AutoCarsPedia merupakan website Katalog mobil terbaik di indonesia
          <br>yang memberikan informasi lengkap seputar mobil dengan
          <br>informasi yang akurat dan tentunya juga terpercaya.</p>
          <a href="#carcatalogue">
          <button class="btn-header">
            Mulai Melihat
          </button>
          </a>
        </div>
      </div>
      <div class="bg-header">
        <video autoplay loop muted>
          <source src="assets/car-video.mp4" type="video/mp4">
        </video>
      </div>
    </div>
    <!-- Header end -->
    



    <!-- Home start -->
    <div class="bar-home" id="carcatalogue">
      
    <div class="kategori">
    <div class="kategori-teks">
          <h1>CAR CATEGORY</h1>
      </div>
      <div class="bar-kategori">
        
        <a href="katalog-model.php?kategori=modern">
        <div class="bar-items">
            <img src="assets/car-logo.jpeg">
            <p>Mobil Modern</p>
          </div>
        </a>
        
        <a href="katalog-model.php?kategori=classic">
          <div class="bar-items">
            <img src="assets/car-logo.jpeg">
            <p>Mobil Classic</p>
          </div>
        </a>
        
        <a href="katalog-model.php?kategori=sport">
          <div class="bar-items">
            <img src="assets/car-logo.jpeg">
            <p>Mobil Sport</p>
          </div>
        </a>
      
      </div>
    </div>
        
      <div class="merek">
        <div class="merek-teks">
          <h1>CAR BRANDS</h1>
      </div>
      <div class="bar-merek">

      <a href="katalog-merk.php?merk=daihatsu">
            <div class="merek-items">
                <img src="assets/daihatsu.jpeg">
            </div>
        </a>
        <a href="katalog-merk.php?merk=toyota">
            <div class="merek-items">
                <img src="assets/toyota.jpeg">
            </div>
        </a>
        <a href="katalog-merk.php?merk=bmw">
            <div class="merek-items">
                <img src="assets/bmw.jpeg">
            </div>
        </a>
        <a href="katalog-merk.php?merk=suzuki">
            <div class="merek-items">
                <img src="assets/suzuki.jpeg">
            </div>
        </a>
        <a href="katalog-merk.php?merk=honda">
            <div class="merek-items">
                <img src="assets/honda.jpeg">
            </div>
        </a>
        <a href="katalog-merk.php?merk=hyundai">
            <div class="merek-items">
                <img src="assets/hyundai.jpeg">
            </div>
        </a>

      </div>
    </div>
      
    </div>
    <!-- Home end -->
    
    <!-- CarsCatalogue start -->
    <div class="bar-carscatalogue"></div>
    <!-- CarsCatalogue end -->

    <!-- Contactus start -->
    <footer>
      <div class="bar-contactus" id="contactus">
        <div class="head-teks">
          <h1>AutoCarsPedia</h1>
        </div>
        
        <div class="bar-items">
          
          <div class="isi-teks-one">
            <p>Head Office</p>
            <p>4G9W+8J2, Jl Kalidam</p>
            <p>No.1 Karangmekar, Kec.Cimahi Tengah</p>
            <p>kota Cimahi, Jawa Barat 40523</p>
          </div>
          <div class="isi-teks-two">
            <p>Pusat Bantuisi</p>
            <p>Personal Asistant</p>
          </div>
          <div class="isi-teks-three">
            <p>Hubungi Kami</p>
            <p>Halo@AutoCarsPedia.id</p>
            <p>0812-8852-7009</p>
          </div>
        </div>
        
        <div class="line"></div>
        
        <div class="bawah">
        <div class="bawah-isi">
          <p>Tentang Kami</p>
          <p>kebijakan Privasi</p>
          <p>Pernyataan Umum</p>
        </div>
        <div class="hakcipta">
          <p>@2024 AutoCarsPedia</p>
        </div>
      </div>
    </div>
  </footer>
    <!-- Contactus end -->
  
  <!-- Javascript links start -->
  <script>
    document.getElementById("myButton").addEventListener("click", function() {
        window.location.href = "index.php";
    });
  </script>
  <!-- Javascript links end -->

  </body>
</html>
