-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2024 pada 06.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_autocarspedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `email`, `id_users`) VALUES
(1, 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'admin123@gmail.com', 1),
(15, 'masbro', 'masbro', '7d30a500f504677b4cf7188f992956b1', 'masbro123@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konten`
--

CREATE TABLE `tbl_konten` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(255) NOT NULL,
  `harga_mobil` int(150) NOT NULL,
  `desk_mobil` varchar(999) NOT NULL,
  `merk_mobil` varchar(255) NOT NULL,
  `model_mobil` varchar(255) NOT NULL,
  `gambar_mobil` varchar(150) NOT NULL,
  `video_mobil` text NOT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_konten`
--

INSERT INTO `tbl_konten` (`id_mobil`, `nama_mobil`, `harga_mobil`, `desk_mobil`, `merk_mobil`, `model_mobil`, `gambar_mobil`, `video_mobil`, `id_admin`) VALUES
(1, 'BMW 3 Series', 41250, 'BMW 3 Series merupakan jajaran mobil eksekutif kompak yang diproduksi oleh produsen mobil Jerman BMW sejak Mei 1975. Mobil ini merupakan penerus Seri 02 dan telah diproduksi dalam tujuh generasi, dengan evolusi model yang mencakup sedan. model coupe dan convertible telah dipasarkan sebagai Seri 4. BMW 3 Series dikenal dengan performa dinamis.', 'BMW', 'Classic', 'BMW 3 series (classic).png', 'https://www.youtube.com/embed/tm9oV5199Z8?si=-ZaRMITKLUixI3gZ', 1),
(2, 'BMW 320i', 37700, 'BMW 320i merupakan salah satu varian dari BMW 3 Series yang menawarkan kombinasi sempurna antara performa, efisiensi, dan kenyamanan. Ditenagai oleh mesin 2.0 liter empat silinder turbocharged yang menghasilkan tenaga sekitar 180 hp, mobil ini mampu memberikan akselerasi yang responsif dan pengalaman berkendara yang dinamis.', 'BMW', 'Classic', 'BMW 320i (classic).png', 'https://www.youtube.com/embed/I6qug7H5Z98?si=NL7OvdL-J5I8JyQ8', 1),
(3, 'BMW E30', 30000, 'BMW E30 merupakan generasi kedua dari BMW 3 Series yang diproduksi antara tahun 1982 hingga 1994. Mobil ini dikenal karena desain klasiknya yang ikonik dan kualitas konstruksi yang kokoh. Tersedia dalam berbagai varian bodi seperti sedan 2 pintu, sedan 4 pintu, convertible, dan touring (wagon), BMW E30 menawarkan pilihan mesin yang beragam.', 'BMW', 'Classic', 'BMW e30 (classic).png', 'https://www.youtube.com/embed/M-10r6k70Ao?si=tzH2RIbcVixos9li', 1),
(4, 'BMW M3 E36', 40000, 'BMW M3 E36 merupakan varian performa tinggi dari generasi ketiga BMW 3 Series, diproduksi antara tahun 1992 hingga 1999. Mobil ini dilengkapi dengan mesin enam silinder segaris yang bertenaga, dengan varian mesin berbeda untuk pasar Eropa dan Amerika, termasuk mesin 3.0 liter dan 3.2 liter yang menghasilkan tenaga hingga 321 hp.', 'BMW', 'Classic', 'BMW m3 e36 (classic).jpg', 'https://www.youtube.com/embed/udp4oVjdSQ4?si=z8dOvrI-JUQ5Swfr', 1),
(5, 'BMW X1', 39100, 'BMW X1 merupakan SUV kompak premium yang diproduksi oleh BMW, menawarkan kombinasi antara gaya, performa, dan teknologi canggih. Ditenagai oleh mesin 2.0 liter empat silinder turbocharged yang menghasilkan tenaga sekitar 228 hp, BMW X1 memberikan akselerasi yang responsif dan efisiensi bahan bakar yang baik.', 'BMW', 'Modern', 'BMW X1 (modern).jpeg', 'https://www.youtube.com/embed/0ajkqDUzD4g?si=W70K36fzAuR6Mc7n', 1),
(6, 'BMW X3 M', 74400, 'BMW X3 M merupakan SUV performa tinggi yang diproduksi oleh BMW, menggabungkan kekuatan mesin yang impresif dengan kenyamanan dan fungsionalitas sebuah SUV. Ditenagai oleh mesin 3.0 liter enam silinder segaris turbocharged yang menghasilkan tenaga hingga 473 hp, BMW X3 M mampu berakselerasi dari 0 hingga 60 mph dalam waktu sekitar 4 detik.', 'BMW', 'Modern', 'BMW X3 M (modern).png', 'https://www.youtube.com/embed/SRq5S1PpAzM?si=8qqNR2xKeymObVUU', 1),
(7, 'BMW X4', 55000, 'BMW X4 merupakan SUV coupe kompak yang diproduksi oleh BMW, menawarkan perpaduan antara desain sporty dan fungsionalitas SUV. Ditenagai oleh mesin 2.0 liter empat silinder turbocharged yang menghasilkan tenaga sekitar 248 hp, BMW X4 menawarkan akselerasi yang tangguh dan efisiensi bahan bakar yang baik. Interiornya mewah dengan material berkualitas tinggi.', 'BMW', 'Modern', 'BMW x4 (modern).jpg', 'https://www.youtube.com/embed/QDl601LUeDQ?si=1NJTJpcyxjO33zdH', 1),
(8, 'BMW X5', 61600, 'BMW X5 merupakan SUV mewah berukuran sedang yang diproduksi oleh BMW, menawarkan kombinasi antara performa kuat, kenyamanan, dan teknologi canggih. Ditenagai oleh mesin 3.0 liter enam silinder turbocharged yang menghasilkan tenaga sekitar 335 hp, BMW X5 menawarkan akselerasi yang cepat dan pengendaraan yang mulus.', 'BMW', 'Modern', 'BMW X5 (modern).jpeg', 'https://www.youtube.com/embed/ZhEtTuW0Sgg?si=DU31n-P0IHfN_UwN', 1),
(9, 'BMW 7 Series', 86800, 'BMW 7 Series merupakan flagship sedan mewah dari BMW, menggabungkan teknologi terdepan, kenyamanan yang mewah, dan performa yang impresif. Ditenagai oleh mesin bensin V8 twin-turbocharged atau mesin bensin enam silinder turbocharged yang bertenaga, BMW 7 Series menawarkan pengalaman berkendara yang halus dan tenang.', 'BMW', 'Sport', 'BMW 7 series (sport).jpeg', 'https://www.youtube.com/embed/iwgATBSGxbk?si=XqFtl-EO4DgGk3ch', 1),
(10, 'BMW i7', 105000, 'BMW i7 adalah sedan listrik mewah yang menandai langkah besar BMW dalam mobilitas berkelanjutan. Dibangun di atas platform yang dirancang khusus untuk mobil listrik, BMW i7 menampilkan desain futuristik yang elegan dengan garis-garis aerodinamis dan detail premium. Ditenagai oleh motor listrik yang kuat, BMW i7 menawarkan akselerasi mulus dan responsif.', 'BMW', 'Sport', 'BMW i7 (sport).jpg', 'https://www.youtube.com/embed/rKBLrBbvQ0w?si=mlKoWLUCJxO8u-pO', 1),
(11, 'BMW i8', 147500, 'BMW i8 adalah supercar plug-in hybrid yang memadukan performa luar biasa dengan efisiensi bahan bakar yang tinggi dan desain yang futuristik. Diluncurkan sebagai bagian dari inisiatif mobil listrik BMW, i8 menampilkan mesin bensin tiga silinder turbocharged yang dipadukan dengan motor listrik, menghasilkan total tenaga sekitar 369 hp. Dengan akselerasi yang cepat.', 'BMW', 'Sport', 'BMW i8 (sport).jpeg', 'https://www.youtube.com/embed/fLQZzXHDw4k?si=qL9A0vBTBNFEFX0_', 1),
(12, 'BMW Z4', 49700, 'BMW Z4 adalah roadster yang menawarkan kombinasi antara performa sporty, desain yang elegan, dan keasyikan berkendara dengan atap terbuka. Dilengkapi dengan pilihan mesin bensin empat silinder turbocharged yang menghasilkan tenaga mulai dari 255 hingga 382 hp, BMW Z4 memberikan akselerasi yang cepat dan pengendalian yang presisi.', 'BMW', 'Sport', 'BMW z4 (sport).jpeg', 'https://www.youtube.com/embed/dZiOO8iAf3I?si=otkTRvEkUzukoXMe', 1),
(13, 'Daihatsu Ceria', 5000, 'Daihatsu Ceria merupakan city car kompak yang diproduksi oleh Daihatsu, terkenal karena kepraktisannya dan efisiensi bahan bakar yang tinggi. Diperkenalkan di pasar pada akhir 1990-an hingga awal 2000-an, Daihatsu Ceria didukung oleh mesin kecil tiga silinder 850cc yang cukup bertenaga untuk penggunaan sehari-hari di perkotaan.', 'Daihatsu', 'Classic', 'Daihatsu ceria (classic).jpeg', 'https://www.youtube.com/embed/8rz1aCqqNqY?si=9U67c3s1_FQpn4Sy', 1),
(14, 'Daihatsu Charade', 4000, 'Daihatsu Charade merupakan mobil subkompak yang diproduksi oleh Daihatsu sejak tahun 1977 hingga awal 2000-an. Mobil ini dikenal karena kehandalannya, efisiensi bahan bakar yang tinggi, dan biaya operasional yang rendah. Daihatsu Charade tersedia dalam berbagai varian bodi, termasuk hatchback dan sedan, dengan pilihan mesin mulai dari tiga silinder.', 'Daihatsu', 'Classic', 'Daihatsu charade (classic).jpeg', 'https://www.youtube.com/embed/qnWRdbwXsbA?si=HqcFQeOsEvREsJFp', 1),
(15, 'Daihatsu Espass', 7000, 'Daihatsu Espass merupakan minivan kompak yang diproduksi oleh Daihatsu, sangat populer di pasar Asia terutama di Indonesia. Espass dikenal karena kapasitasnya yang luas dan fleksibilitas yang tinggi, menjadikannya pilihan ideal untuk penggunaan keluarga maupun komersial. Ditenagai oleh mesin empat silinder. yang cukup untuk kebutuhan sehari-hari.', 'Daihatsu', 'Classic', 'Daihatsu espass (classic).jpeg', 'https://www.youtube.com/embed/nUrYrghgONE?si=4l_nwI8LFwzIcrGi', 1),
(16, 'Daihatsu Taruna', 10000, 'Daihatsu Taruna merupakan SUV kompak yang diproduksi oleh Daihatsu dan sangat populer di Indonesia. Diperkenalkan pada akhir 1990-an hingga pertengahan 2000-an, Daihatsu Taruna dikenal karena kehandalannya, kemampuan off-road yang layak, dan kapasitas penumpangnya yang cukup luas. Ditenagai oleh mesin empat silinder.', 'Daihatsu', 'Classic', 'Daihatsu taruna (classic).jpg', 'https://www.youtube.com/embed/oYM3AjAJJ24?si=ukUzLCtSy3bUjjN5', 1),
(17, 'Daihatsu Ayla', 12000, 'Daihatsu Ayla merupakan city car yang dirancang untuk pasar Asia, terutama Indonesia, sebagai mobil yang ekonomis dan efisien. Diperkenalkan pertama kali pada tahun 2012, Daihatsu Ayla memiliki mesin tiga silinder berkapasitas 1.0L atau 1.2L yang menawarkan efisiensi bahan bakar yang tinggi, membuatnya ideal untuk penggunaan sehari-hari di perkotaan.', 'Daihatsu', 'Modern', 'Daihatsu ayla (modern).jpeg', 'https://www.youtube.com/embed/nNV6Jwy_JWE?si=LeVcbi5csMoKxHyB', 1),
(18, 'Daihatsu Luxio', 18000, 'Daihatsu Luxio merupakan minivan yang diproduksi oleh Daihatsu, dirancang untuk menawarkan kenyamanan dan ruang yang luas bagi penumpang. Diperkenalkan pertama kali pada tahun 2009, Daihatsu Luxio ditenagai oleh mesin 1.5L empat silinder yang menghasilkan performa yang cukup untuk kebutuhan transportasi sehari-hari serta perjalanan jarak jauh.', 'Daihatsu', 'Modern', 'Daihatsu luxio (modern).png', 'https://www.youtube.com/embed/ptABQtOpJPk?si=hM1wn0eYpbmHMmHa', 1),
(19, 'Daihatsu Rocky', 22000, 'Daihatsu Rocky merupakan SUV kompak yang dirancang untuk menghadirkan pengalaman berkendara yang dinamis dan nyaman di berbagai medan. Diperkenalkan pertama kali pada tahun 2020 untuk pasar global, Daihatsu Rocky dilengkapi dengan mesin turbocharged 1.0L tiga silinder yang efisien namun bertenaga, menghasilkan sekitar 98 hp.', 'Daihatsu', 'Modern', 'Daihatsu rocky (modern).jpeg', 'https://www.youtube.com/embed/cG_HwVTDVZc?si=Zap2I67NSh2GvR-Z', 1),
(20, 'Daihatsu Sigra', 13000, 'Daihatsu Sigra merupakan MPV kompak yang dirancang untuk pasar Asia, khususnya Indonesia, menawarkan kombinasi antara efisiensi, kenyamanan, dan ruang yang luas. Diperkenalkan pada tahun 2016, Daihatsu Sigra tersedia dalam varian mesin 1.0L tiga silinder dan 1.2L empat silinder yang efisien dan cukup bertenaga untuk kebutuhan harian.', 'Daihatsu', 'Modern', 'Daihatsu sigra (modern).jpg', 'https://www.youtube.com/embed/RVB4W9szE54?si=HsZ5ElF9IeUss-ON', 1),
(21, 'Daihatsu Altis', 35000, 'Daihatsu Altis merupakan sedan menengah yang diproduksi oleh Daihatsu, yang sebenarnya adalah versi rebadge dari Toyota Camry untuk pasar Jepang. Diperkenalkan sejak tahun 2000-an, Daihatsu Altis menawarkan kenyamanan, performa, dan teknologi canggih dalam sebuah paket yang elegan. Ditenagai oleh mesin 2.5L empat silinder.', 'Daihatsu', 'Sport', 'Daihatsu altis (sport).jpeg', 'https://www.youtube.com/embed/BTj8hLXMXm8?si=JsV9FCx19Ok2XteL', 1),
(22, 'Daihatsu Copen', 22000, 'Daihatsu Copen merupakan roadster kompak yang menawarkan pengalaman berkendara yang menyenangkan dengan desain yang unik dan sporty. Diperkenalkan pertama kali pada tahun 2002, Daihatsu Copen hadir dengan mesin 660cc turbocharged tiga silinder atau mesin 1.3L empat silinder untuk beberapa pasar, yang memberikan performa yang cukup.', 'Daihatsu', 'Sport', 'Daihatsu copen (sport).jpeg', 'https://www.youtube.com/embed/50Sy0wYlEh0?si=Q2QkSwAufouisTe4', 1),
(23, 'Daihatsu V Copen', 30000, 'Daihatsu Vision Copen merupakan konsep terbaru dari roadster kompak yang dirancang untuk menghadirkan pengalaman berkendara yang lebih futuristik dan inovatif. Memperkenalkan desain yang lebih dinamis dan aerodinamis dibandingkan model sebelumnya, Vision Copen menggabungkan elemen-elemen modern dengan teknologi canggih.', 'Daihatsu', 'Sport', 'Daihatsu vision copen (sport).jpeg', 'https://www.youtube.com/embed/5Q1hG4C-ihk?si=hQVaG_QCFmCz0AM7', 1),
(24, 'Daihatsu Sirion', 17000, 'Daihatsu Sirion merupakan hatchback kompak yang dikenal karena kepraktisannya, efisiensi bahan bakar, dan kenyamanan berkendara. Diperkenalkan pertama kali pada tahun 1998, Daihatsu Sirion telah mengalami beberapa pembaruan desain dan teknologi, menjadikannya salah satu pilihan populer di segmen hatchback.', 'Daihatsu', 'Sport', 'Daihatsu sirion (sport).jpg', 'https://www.youtube.com/embed/vvwkrcUtKd4?si=3Fb83kpHrU5BvvUn', 1),
(25, 'Honda Accord M', 5000, 'Honda Accord Maestro merupakan generasi keempat dari seri Honda Accord, yang diproduksi dari tahun 1989 hingga 1993. Mobil ini dikenal karena desainnya yang elegan dan performanya yang andal, menjadikannya salah satu sedan paling populer pada masanya. Accord Maestro dilengkapi dengan mesin 2.0L atau 2.2L empat silinder.', 'Honda', 'Classic', 'Honda Accord Maestro (classic).png', 'https://www.youtube.com/embed/-3ufi5GZMBI?si=PNZ0y-kKHy0bI9TG', 1),
(26, 'Honda Civic Estilo', 4000, 'Honda Civic Estilo adalah varian hatchback dari legendaris Honda Civic yang diproduksi antara tahun 1995 hingga 2000. Model ini menampilkan desain yang unik dan sporty, dengan garis-garis yang dinamis dan proporsi yang seimbang. Ditenagai oleh mesin bensin 1.5L atau 1.6L, Civic Estilo menawarkan kombinasi yang baik antara performa yang memadai.', 'Honda', 'Classic', 'Honda civic estilo (classic).png', 'https://www.youtube.com/embed/nDP4G5mOx1M?si=x7cOVT7jVT62C9Ft', 1),
(27, 'Honda Civic Ferio', 45000, 'Honda Civic Ferio merupakan varian performa tinggi dari Honda Civic yang dirancang untuk menghadirkan pengalaman berkendara yang luar biasa dengan fokus pada kecepatan, handling, dan teknologi canggih. Pertama kali diperkenalkan pada tahun 1997, Civic Type R telah mengalami beberapa evolusi dan kini dikenal sebagai salah satu hatchback sport terbaik di dunia.', 'Honda', 'Classic', 'Honda Civic type r (classic).png', 'https://www.youtube.com/embed/l-6YJfae9fQ?si=BGmXQa_-0ybmT-Y_', 1),
(28, 'Honda Prelude', 8000, 'Honda Prelude merupakan coupe sport yang diproduksi oleh Honda dari tahun 1978 hingga 2001, dikenal karena desainnya yang stylish dan performanya yang sporty. Mobil ini telah melalui lima generasi, masing-masing menawarkan peningkatan dalam hal teknologi dan performa. Ditenagai oleh berbagai pilihan mesin mulai dari 1.8L hingga 2.2L empat silinder.', 'Honda', 'Classic', 'Honda prelude (classic).png', 'https://www.youtube.com/embed/Yi9E1Faja_M?si=EPEneeFnD99BosFL', 1),
(29, 'Honda Accord', 36000, 'Honda Accord merupakan sedan menengah yang dikenal dengan kombinasi antara kenyamanan, performa, dan teknologi canggih. Diperkenalkan pertama kali pada tahun 1976, Honda Accord telah menjadi salah satu model terlaris Honda di seluruh dunia, mengalami berbagai evolusi untuk memenuhi kebutuhan konsumen modern.', 'Honda', 'Modern', 'HONDA accord (modern).jpg', 'https://www.youtube.com/embed/1E8A83hsjT4?si=rBQWl6vwvwmzo5lr', 1),
(30, 'Honda Brio Satya', 12000, 'Honda Brio Satya merupakan hatchback kompak yang dirancang untuk menawarkan efisiensi bahan bakar, kenyamanan, dan kelincahan berkendara di perkotaan. Diperkenalkan pertama kali pada tahun 2013, Brio Satya adalah varian LCGC (Low Cost Green Car) dari Honda Brio yang ditujukan untuk pasar Indonesia. Mobil ini ditenagai oleh mesin 1.2L i-VTEC empat silinder.', 'Honda', 'Modern', 'HONDA brio stya (modern).jpg', 'https://www.youtube.com/embed/EOguhRi_vow?si=4vbAZq9v9GttMbEd', 1),
(31, 'Honda HR-V', 28000, 'Honda HR-V merupakan crossover kompak yang menawarkan perpaduan sempurna antara gaya, kepraktisan, dan teknologi canggih. Diperkenalkan pertama kali pada tahun 1999 dan kembali hadir dalam generasi terbaru sejak 2014, HR-V telah menjadi salah satu pilihan populer di segmen SUV kompak. Mobil ini ditenagai oleh mesin 1.8L empat silinder.', 'Honda', 'Modern', 'HONDA hr-v (modern).jpg', 'https://www.youtube.com/embed/NbEgyLKVuzo?si=JvzuqyMje3bhXAc1', 1),
(32, 'Honda Pilot Elite', 55000, 'Honda Pilot Elite merupakan varian tertinggi dari SUV Honda Pilot, menawarkan kombinasi terbaik dari kenyamanan, teknologi, dan performa. Dirancang untuk keluarga besar, Pilot Elite hadir dengan mesin 3.5L V6 yang kuat, menghasilkan 280 hp, dan dilengkapi dengan transmisi otomatis 9-percepatan yang memberikan akselerasi halus.', 'Honda', 'Modern', 'HONDA pilot elite (modern).png', 'https://www.youtube.com/embed/KkzMdTxLSws?si=msfi7he1_UKcYd6T', 1),
(33, 'Honda CR-Z', 15000, 'Honda CR-Z merupakan coupe sport hybrid yang dirancang untuk menggabungkan performa yang dinamis dengan efisiensi bahan bakar yang tinggi. Diperkenalkan pertama kali pada tahun 2010, Honda CR-Z menghadirkan desain yang futuristik dan aerodinamis, dengan garis-garis tajam dan tampilan yang sporty. Ditenagai oleh mesin empat silinder.', 'Honda', 'Sport', 'Honda cr-z old.jpg', 'https://www.youtube.com/embed/-pjAhrcfb2o?si=kCZ42DRMjuM2ofWs', 1),
(34, 'Honda NSX', 200000, 'Honda NSX, yang juga dikenal sebagai Acura NSX di Amerika Utara, adalah supercar yang menggabungkan performa tinggi dengan teknologi canggih dan desain yang ikonik. Diperkenalkan pertama kali pada tahun 1990, NSX telah menjadi simbol dari dedikasi Honda terhadap teknologi otomotif yang inovatif. Generasi terbaru NSX, yang diluncurkan kembali.', 'Honda', 'Sport', 'honda nsx (sport).jpg', 'https://www.youtube.com/embed/QxO9BLxJBL0?si=OO7Fsn7pf0IgqcFk', 1),
(35, 'Honda S800', 70000, 'Honda S800 adalah mobil sport kompak yang diproduksi oleh Honda dari tahun 1965 hingga 1970. Mobil ini terkenal karena menjadi salah satu mobil sport Jepang yang paling ikonik pada masanya, menampilkan desain yang stylish dan performa yang tangguh. S800 ditenagai oleh mesin 0.8L empat silinder DOHC yang mampu menghasilkan tenaga hingga 70 hp.', 'Honda', 'Sport', 'honda s800 (sport).jpg', 'https://www.youtube.com/embed/KF7TY0xAZq8?si=i3ypg-r5T1W2xay0', 1),
(36, 'Honda Civic R', 45000, 'Honda Civic Type R adalah varian performa tinggi dari Honda Civic yang diakui secara luas karena performa eksepsionalnya dan gaya yang agresif. Dirancang oleh divisi performa Honda, Type R menawarkan pengalaman mengemudi yang mendebarkan dan dilengkapi dengan teknologi canggih. Mobil ini ditenagai oleh mesin turbocharged 2.0L empat silinder.', 'Honda', 'Sport', 'Honda Civic Type R (sport).jpg', 'https://www.youtube.com/embed/LBX4oG0pzA8?si=v0rwJ_r8KpcQRgO9', 1),
(37, 'Hyundai Accent', 20000, 'Hyundai Accent merupakan sedan kompak yang dikenal karena efisiensi bahan bakar, harga yang terjangkau, dan fitur-fitur modern. Pertama kali diperkenalkan pada tahun 1994, Hyundai Accent telah mengalami beberapa generasi pembaruan untuk memenuhi kebutuhan konsumen modern. Model terbaru Hyundai Accent ditenagai oleh mesin 1.6L empat silinder.', 'Hyundai', 'Classic', 'hyundai accent (classic).jpg', 'https://www.youtube.com/embed/o5GCbibHWgI?si=Rt5xE8eU4Gia7Kit', 1),
(38, 'Hyundai Grandeur', 80000, 'Hyundai Grandeur Concept adalah mobil konsep yang diperkenalkan oleh Hyundai untuk merayakan ulang tahun ke-35 dari sedan flagship mereka, Hyundai Grandeur. Mobil ini menggabungkan desain retro-futuristik yang menawan dengan teknologi modern untuk menciptakan visi unik tentang masa depan mobil mewah. namun dengan sentuhan modern.', 'Hyundai', 'Classic', 'Hyundai grandeur concept (classic).jpg', 'https://www.youtube.com/embed/io_cqBj6pRE?si=Z4oN_wdWd9RKEM-A', 1),
(39, 'Hyundai Sonata', 35000, 'Hyundai Sonata merupakan sedan mid-size yang populer, dikenal karena kombinasi yang baik antara gaya, kenyamanan, teknologi, dan nilai. Pertama kali diluncurkan pada tahun 1985, Sonata telah mengalami banyak generasi pembaruan untuk memenuhi kebutuhan konsumen modern. Model terbaru Hyundai Sonata menawarkan desain eksterior yang ramping.', 'Hyundai', 'Classic', 'Hyundai sonata (classic).jpg', 'https://www.youtube.com/embed/5d2J6dd1SVQ?si=XletqdYbHG5vUKyL', 1),
(40, 'Hyundai Pony Coupe', 70000, 'Hyundai Pony Coupe, jika dijual ke publik dalam bentuk produksi, akan menjadi mobil sport yang menggabungkan desain retro-futuristik dengan teknologi modern. Terinspirasi dari konsep asli tahun 1974 yang dirancang oleh Giorgetto Giugiaro, versi produksi ini akan mempertahankan garis-garis tajam dan profil rendah yang khas.', 'Hyundai', 'Classic', 'hyundai pony coupe (classic).jpg', 'https://www.youtube.com/embed/nyhQmaRWU4U?si=Y-Hx2kjAXxMWSawP', 1),
(41, 'Hyundai Creta', 20000, 'Hyundai Creta merupakan SUV kompak yang dikenal karena desainnya yang modern, fitur-fitur canggih, dan efisiensi bahan bakar yang baik. Pertama kali diperkenalkan pada tahun 2014, Creta dengan cepat menjadi populer di berbagai pasar global, termasuk Asia dan Amerika Selatan. Model terbaru Hyundai Creta menawarkan desain eksterior yang stylish.', 'Hyundai', 'Modern', 'Hyundai creta (modern).jpg', 'https://www.youtube.com/embed/MsGD_b7zq1Y?si=KmgRVsuuq30cPdKr', 1),
(42, 'Hyundai Palisade', 50000, 'Hyundai Palisade merupakan SUV ukuran penuh yang dirancang untuk menawarkan kenyamanan, ruang, dan teknologi canggih bagi keluarga dan pengemudi yang menginginkan kendaraan serbaguna. Diluncurkan pertama kali pada tahun 2018, Palisade telah mendapatkan reputasi yang solid karena kualitasnya yang tinggi dan fitur-fitur yang lengkap.', 'Hyundai', 'Modern', 'Hyundai palisade (modern).jpg', 'https://www.youtube.com/embed/VZ_V9wNfn28?si=6miFczrK33e_btoX', 1),
(43, 'Hyundai Stargazer', 20000, 'Hyundai Stargazer merupakan MPV kompak yang dirancang untuk memenuhi kebutuhan keluarga modern dengan menawarkan ruang yang lapang, fitur kenyamanan, dan teknologi terkini. Diperkenalkan pertama kali pada tahun 2022, Stargazer menjadi pilihan populer di pasar Asia berkat kombinasi antara desain yang menarik dan nilai yang baik.', 'Hyundai', 'Modern', 'Hyundai stargazer (modern).jpg', 'https://www.youtube.com/embed/GBvOqbjHjRw?si=gAE667nuiPwvRdRW', 1),
(44, 'Hyundai Staria', 50000, 'Hyundai Staria merupakan MPV modern yang dirancang untuk memberikan kenyamanan maksimal dan pengalaman berkendara yang superior bagi keluarga maupun pelaku bisnis. Diluncurkan pada tahun 2021, Staria menonjol dengan desain futuristiknya yang terinspirasi oleh pesawat luar angkasa, menampilkan garis-garis halus.', 'Hyundai', 'Modern', 'Hyundai staria (modern).jpg', 'https://www.youtube.com/embed/9A_it0rET8o?si=Mjxc_DlxsoB0YbND', 1),
(45, 'Hyundai Genesis', 55000, 'Hyundai Genesis merupakan sedan mewah yang diperkenalkan pertama kali pada tahun 2008 sebagai bagian dari upaya Hyundai untuk memasuki pasar mobil premium. Genesis dikenal karena kombinasi yang mengesankan antara kenyamanan, performa, dan teknologi canggih, menyaingi merek-merek mewah Eropa dan Jepang.', 'Hyundai', 'Sport', 'hyundai genesis (sport).jpg', 'https://www.youtube.com/embed/qdj0ZAwRtfc?si=c6ZBeUgCFvXIaabv', 1),
(46, 'Hyundai Ioniq 6', 55000, 'Hyundai Ioniq 6 merupakan sedan listrik yang dirancang untuk menawarkan pengalaman berkendara yang ramah lingkungan dengan gaya futuristik dan teknologi canggih. Diperkenalkan sebagai bagian dari sub-merek Ioniq yang berfokus pada kendaraan listrik, Ioniq 6 menampilkan desain aerodinamis dengan garis-garis halus dan tampilan modern.', 'Hyundai', 'Sport', 'hyundai loniq 6 (sport).jpg', 'https://www.youtube.com/embed/TAAtmBhoj6A?si=YvjSexM_FhYZw_hi', 1),
(47, 'Hyundai NV 74', 200000, 'Hyundai N Vision 74 merupakan mobil konsep yang menggabungkan desain retro-futuristik dengan teknologi mutakhir, dirancang untuk menunjukkan visi masa depan Hyundai dalam mobilitas performa tinggi. Diperkenalkan pada tahun 2022, N Vision 74 terinspirasi dari Hyundai Pony Coupe Concept tahun 1974 yang dirancang oleh Giorgetto Giugiaro.', 'Hyundai', 'Sport', 'hyundai n vision 74 (sport).jpg', 'https://www.youtube.com/embed/MOr6HuHWLT4?si=W6Xa2c60m-Bn7CjH', 1),
(48, 'Hyundai Prophecy', 100000, 'Hyundai Prophecy merupakan mobil konsep listrik yang memamerkan visi Hyundai untuk desain dan teknologi masa depan dalam industri otomotif. Diperkenalkan pada tahun 2020, Prophecy menampilkan desain yang mengalir dan aerodinamis, terinspirasi oleh prinsip-prinsip estetika klasik dan futuristik. Garis-garis halus, siluet yang ramping, dan lampu depan.', 'Hyundai', 'Sport', 'hyundai prophecy (sport).jpg', 'https://www.youtube.com/embed/E9Vx-FpSH_I?si=ttIFktJ3Q2Q9Z09u', 1),
(49, 'Suzuki Every', 15000, 'Suzuki Every merupakan van kecil yang dikenal karena efisiensinya, kepraktisan, dan kehandalannya. Pertama kali diperkenalkan pada tahun 1982, Every telah menjadi pilihan populer di berbagai pasar, terutama di Asia, berkat ukurannya yang kompak dan kemampuannya untuk bermanuver di jalanan sempit dan area perkotaan. Ditenagai oleh mesin 660cc tiga silinder.', 'Suzuki', 'Classic', 'Suzuki Every (classic).jpg', 'https://www.youtube.com/embed/6CTXy7SSBfU?si=UiFZVpPAdVdCju4O', 1),
(50, 'Suzuki Fronte Coupe', 20000, 'Suzuki Fronte Coupe merupakan mobil klasik yang diperkenalkan pada tahun 1971 sebagai bagian dari keluarga Suzuki Fronte. Mobil ini memiliki desain yang unik dengan bentuk bodi kompak dan gaya coupe yang menarik. Meskipun tidak lagi diproduksi secara massal. Suzuki Fronte Coupe tetap menjadi favorit di kalangan penggemar mobil klasik.', 'Suzuki', 'Classic', 'Suzuki Fronte coupe (classic).jpg', 'https://www.youtube.com/embed/lYvW4XTd7R4?si=vuBLe_Phr2ooTGNO', 1),
(51, 'Suzuki Jimny', 30000, 'Suzuki Jimny adalah SUV kompak yang dikenal karena kemampuannya dalam off-road dan gaya klasiknya yang ikonik. Diluncurkan pertama kali pada tahun 1970, Jimny telah menjadi salah satu mobil favorit di segmen SUV kompak, terutama bagi mereka yang menyukai petualangan di alam terbuka dan medan berat.  Desain gaya yang tahan banting.', 'Suzuki', 'Classic', 'Suzuki jimmy (classic).jpg', 'https://www.youtube.com/embed/sYBpof0PS_g?si=6QbgWEU4Ip450W02', 1),
(52, 'Suzuki Suzulight', 5000, 'Suzuki Suzulight adalah mobil kecil yang diperkenalkan oleh Suzuki pada tahun 1955 sebagai model pertama perusahaan. Sebagai mobil yang mencatatkan sejarah, Suzulight menjadi simbol dari awal keberhasilan Suzuki di industri otomotif Jepang. Suzulight tetap menjadi benda koleksi bagi para penggemar mobil klasik dan penikmat sejarah otomotif.', 'Suzuki', 'Classic', 'Suzuki suzulight (classic).jpg', 'https://www.youtube.com/embed/MlksLX-WtVg?si=nHGRI0jox_nXB6NZ', 1),
(53, 'Suzuki Baleno', 25000, 'Suzuki Baleno adalah hatchback kompak yang diperkenalkan oleh Suzuki pada tahun 1995. Mobil ini telah menjadi salah satu model paling populer dalam lini produk Suzuki, terkenal karena kombinasi antara kenyamanan, efisiensi bahan bakar, dan ruang kabin yang luas.  Desain eksterior Suzuki Baleno menampilkan gaya yang modern.', 'Suzuki', 'Modern', 'Suzuki Baleno (modern).jpg', 'https://www.youtube.com/embed/_yKL1fmbUIk?si=vaX8Njpm4Zg6bMkn', 1),
(54, 'Suzuki Ertiga', 20000, 'Suzuki Ertiga adalah sebuah MPV yang dikembangkan oleh Suzuki, dirancang untuk memberikan kenyamanan dan kepraktisan bagi penggunaannya sehari-hari. Diluncurkan pada tahun 2012, Ertiga telah menjadi salah satu model terpopuler dalam lini produk Suzuki, terutama di pasar Asia.  Desain eksterior Suzuki Ertiga menampilkan garis-garis yang halus.', 'Suzuki', 'Modern', 'Suzuki Ertiga (modern).jpg', 'https://www.youtube.com/embed/RZJ8H2mRU6w?si=Z3-Ij48qfyrL4WYV', 1),
(55, 'Suzuki Ignis', 20000, 'Suzuki Ignis adalah crossover kompak yang menggabungkan gaya modern dengan kelincahan perkotaan. Diluncurkan pertama kali pada tahun 2000 dan kemudian dihidupkan kembali pada tahun 2016, Ignis telah menjadi pilihan populer di segmen crossover kecil, terutama di pasar perkotaan.  Desain eksterior Suzuki Ignis mencerminkan gaya yang unik dan serbaguna.', 'Suzuki', 'Modern', 'Suzuki ignis (modern).jpg', 'https://www.youtube.com/embed/15vOvxkIAEg?si=sPGvvFFwb2Dh5UaA', 1),
(56, 'Suzuki Swift', 25000, 'Suzuki Swift adalah hatchback yang dikenal karena gaya sporty, kelincahan, dan efisiensi bahan bakarnya. Diluncurkan pertama kali pada tahun 2000, Swift telah menjadi salah satu model paling sukses dari Suzuki, dengan popularitas yang luas di seluruh dunia.  Desain eksterior Suzuki Swift menampilkan garis-garis yang tajam.', 'Suzuki', 'Modern', 'Suzuki Swift (modern).jpg', 'https://www.youtube.com/embed/Ag6prkgmeKs?si=iPKFLnEMg8sDjK8N', 1),
(57, 'Suzuki Cappuccino', 15000, 'Suzuki Cappuccino adalah roadster kecil yang diproduksi oleh Suzuki dari tahun 1991 hingga 1997. Mobil ini dikenal karena desain ringkasnya, bobot yang ringan, dan pengalaman berkendara yang menyenangkan.  Desain eksterior Suzuki Cappuccino menampilkan gaya retro yang menarik perhatian dengan proporsi yang kompak dan bentuk bodi yang halus.', 'Suzuki', 'Sport', 'suzuki cappoccino (sport).jpg', 'https://www.youtube.com/embed/oN0XqWJE-Ro?si=7l0rXKO8Gnn-T95e', 1),
(58, 'Suzuki Swift', 25000, 'Suzuki Swift adalah hatchback yang populer yang dikenal karena gaya modernnya, kinerja yang tangguh, dan kenyamanan dalam berkendara. Diluncurkan pertama kali pada tahun 2000, Swift telah menjadi salah satu model paling sukses dari Suzuki, memenangkan banyak penghargaan dan mendapatkan reputasi yang baik di pasar otomotif.', 'Suzuki', 'Sport', 'Suzuki Swift (sport).png', 'https://www.youtube.com/embed/omK-_78KRkw?si=UvRjj5b8ZC3bX12x', 1),
(59, 'Suzuki SX4', 18000, 'Suzuki SX4 adalah crossover kompak yang menawarkan kombinasi antara gaya, kenyamanan, dan kemampuan all-wheel drive (AWD). Diluncurkan pertama kali pada tahun 2006, SX4 telah menjadi salah satu model terkenal dalam lineup Suzuki, menarik perhatian dengan desainnya yang serbaguna dan performa yang handal.  Desain eksterior garis-garis yang dinamis.', 'Suzuki', 'Sport', 'Suzuki sx4 (sport).jpg', 'https://www.youtube.com/embed/o4jn8cVHlYQ?si=2FI-n2L1nVR5497L', 1),
(60, 'Suzuki Fronx', 9000, 'Suzuki Fronx adalah SUV crossover subkompak yang diproduksi oleh pabrikan Jepang Suzuki melalui anak perusahaannya di India Maruti Suzuki sejak 2023. Ini didasarkan pada hatchback Baleno, dan diposisikan di bawah Brezza. sunting  Dipresentasikan pada Januari 2023 di Auto Expo di India, Fronx untuk pasar India tersedia secara eksklusif.', 'Suzuki', 'Sport', 'Suzuki Fronx (sport).jpeg', 'https://www.youtube.com/embed/m9_WM0ERqdI?si=9hhOYr-jlDs-k6M4', 1),
(61, 'Toyota 2000GT', 800000, 'Toyota 2000GT merupakan mobil sport legendaris yang diperkenalkan oleh Toyota pada tahun 1967. Dikenal sebagai salah satu mobil paling ikonik dalam sejarah otomotif Jepang, 2000GT menandai langkah penting bagi Toyota dalam menunjukkan kemampuannya di arena mobil sport internasional.  Desain eksterior Toyota 2000GT menampilkan garis-garis yang elegan.', 'Toyota', 'Classic', 'toyota 2000GT (classic).jpg', 'https://www.youtube.com/embed/z5EZs5fobqI?si=mCYWvx-bqYpfNzbd', 1),
(62, 'Toyota Celica GT', 30000, 'Toyota Celica GT Coupe merupakan varian sporty dari lini Celica yang populer, diperkenalkan pertama kali pada tahun 1970. Celica GT Coupe dikenal karena desainnya yang menarik dan performa yang memuaskan. Pada tahun 1973, Toyota menciptakan istilah liftback untuk menggambarkan hatchback fastback Celica, dan menggunakan nama Liftback GT.', 'Toyota', 'Classic', 'toyota celica GT coupe (classic).png', 'https://www.youtube.com/embed/vMCBIezeaG0?si=OVKOpYSQAjYu8Cki', 1),
(63, 'Toyota Corolla DX', 15000, 'Toyota Corolla DX merupakan varian dari seri Corolla yang diproduksi oleh Toyota pada akhir 1970-an hingga awal 1980-an. Corolla DX adalah salah satu model yang sangat populer pada masanya, dikenal karena kehandalan, efisiensi bahan bakar, dan biaya perawatan yang rendah.  Desain eksterior Toyota Corolla DX menampilkan garis-garis yang sederhana namun klasik.', 'Toyota', 'Classic', 'toyota corrolla DX (classic).jpg', 'https://www.youtube.com/embed/Z1P_Cj-ZLPI?si=A-mwN84aUpkAdwtI', 1),
(64, 'Toyota FJ Cruiser', 50000, 'Toyota FJ Cruiser merupakan SUV yang dirancang untuk off-road dengan gaya retro-modern yang mengingatkan pada Toyota Land Cruiser FJ40 klasik. Diluncurkan pertama kali pada tahun 2006, FJ Cruiser segera mendapatkan penggemar berkat kemampuannya di medan berat dan desainnya yang ikonik.  Desain eksterior yang kokoh dan gagah.', 'Toyota', 'Classic', 'toyota klasik FJ cruiser (classic).jpg', 'https://www.youtube.com/embed/p1Ia7qKCGZA?si=9_bUQremH-6QoZjO', 1),
(65, 'Toyota Fortuner', 60000, 'Toyota Fortuner merupakan SUV berbasis truk yang populer di pasar global, dikenal karena ketangguhan, kehandalan, dan kemampuan off-road yang mumpuni. Diluncurkan pertama kali pada tahun 2005, Fortuner telah melalui beberapa generasi pembaruan untuk meningkatkan performa, kenyamanan, dan teknologi.  Menampilkan garis - garis yang tegas.', 'Toyota', 'Modern', 'Toyota fortuner(modern).jpg', 'https://www.youtube.com/embed/smlcB4B2jww?si=FRvGDV1gOzkXXzye', 1),
(66, 'Toyota Avanza', 20000, 'Toyota Avanza merupakan MPV (Multi-Purpose Vehicle) yang populer, dikenal karena keandalannya, efisiensi bahan bakar, dan kemampuan mengangkut penumpang serta barang dengan baik. Pertama kali diluncurkan pada tahun 2003, Avanza telah melalui beberapa generasi pembaruan untuk memenuhi kebutuhan pasar yang terus berkembang.', 'Toyota', 'Modern', 'Toyota avanza(modern).jpg', 'https://www.youtube.com/embed/n-e_13hsvJ0?si=EAp9rEtEa8mdrMhR', 1),
(67, 'Toyota Avanza Veloz', 25000, 'Toyota Avanza Veloz merupakan varian lebih sporty dan premium dari MPV Toyota Avanza, dirancang untuk menawarkan kenyamanan dan fungsionalitas yang lebih baik bagi keluarga modern. Diperkenalkan pertama kali sebagai bagian dari keluarga Avanza, Veloz membawa berbagai peningkatan dalam hal desain, fitur, dan performa.', 'Toyota', 'Modern', 'Toyota avanza veloz (modern).jpg', 'https://www.youtube.com/embed/rUthrokXbxQ?si=3VUU-6f33HaOlBZe', 1),
(68, 'Toyota SW4', 60000, 'Toyota SW4, juga dikenal sebagai Toyota Fortuner di beberapa pasar, merupakan SUV menengah yang didesain untuk memberikan kombinasi optimal antara performa off-road, kenyamanan berkendara, dan fitur-fitur canggih. Diluncurkan pertama kali pada tahun 2005, SW4 telah menjadi pilihan populer di kalangan pengemudi yang mencari kendaraan serbaguna.', 'Toyota', 'Modern', 'Toyota SWA (modern).jpg', 'https://www.youtube.com/embed/h3FpxG3I8hI?si=vNndS7s33IUQmeS6', 1),
(69, 'Toyota GR 86', 32000, 'Toyota GR 86 merupakan mobil sport kompak yang dikembangkan oleh Toyota dengan kolaborasi bersama Subaru, menggantikan model sebelumnya yaitu Toyota 86. Diperkenalkan pada tahun 2021, GR 86 adalah bagian dari lini GR (Gazoo Racing) yang fokus pada performa tinggi dan pengalaman berkendara yang dinamis. Menampilkan garis-garis yang agresif.', 'Toyota', 'Sport', 'toyota GR 86 (sport).jpg', 'https://www.youtube.com/embed/QVXNCCecrSo?si=O_xqtrY_zMx6KPDy', 1),
(70, 'Toyota Supra MK4', 100000, 'Toyota Supra MK4, juga dikenal sebagai A80, merupakan generasi keempat dari seri Supra yang diproduksi oleh Toyota antara tahun 1993 dan 2002. Supra MK4 telah menjadi ikon dalam dunia otomotif, terutama di kalangan penggemar mobil sport dan modifikasi, berkat desainnya yang aerodinamis, performa mesin yang luar biasa, dan warisan balapnya.', 'Toyota', 'Sport', 'toyota MK4 (sport).png', 'https://www.youtube.com/embed/1Fmzxzzk0a8?si=aZFKunsMYAH7vx-E', 1),
(71, 'Toyota Yaris', 25000, 'Toyota Yaris merupakan hatchback kompak yang dikenal karena keandalan, efisiensi bahan bakar, dan desain yang stylish. Pertama kali diperkenalkan pada tahun 1999, Yaris telah menjadi salah satu model terlaris Toyota di berbagai pasar global, berkat kombinasi antara ukuran yang praktis, kenyamanan, dan teknologi canggih.', 'Toyota', 'Sport', 'toyota yaris (sport).jpg', 'https://www.youtube.com/embed/mgcKMdjm7mI?si=sOAdz0Dlj8PaBzkf', 1),
(72, 'Toyota RUSH GR', 12000, 'Toyota rush resmi mendapatkan peningkatan tampilan dan fitur New Rush GR sport sebagai salah satu SUV yang banyak diminati. penyegaran dilakukan pada desain eksterior dan interior untuk semakin memperkuat DNA New Rush sebagai medium SUV. kini Rush tampil dengan sporty dan tangguh. serta adanya peningkatan kenyamanan berkat adanya advanced features.', 'Toyota', 'Sport', 'toyota RUSH GR (sport).jpg', 'https://www.youtube.com/embed/YhWa674F7BM?si=HZHxzYw-g2-IB0LN', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id_mobil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `nama`, `username`, `password`, `email`, `id_mobil`) VALUES
(1, 'users', 'users', '17d2efb989521c189a682db19df943d3', 'users123@gmail.com', 1),
(16, 'kucing', 'meow', 'd2e7d671cbe133af03a5d2ce5c6aa5d1', 'meow111@gmail.com', NULL),
(17, 'rivaldi', 'rival', '4bd707ec6c2e3b973adc1bffe7d3fd76', 'forrivaldi123@gmail.com', NULL),
(18, 'bro', 'bro', '5bf3175fb07c52144a1c245978db0eb9', 'bro123@gmail.com', NULL),
(20, 'bebas', 'bebas', '25f9e794323b453885f5181f1b624d0b', 'bebas123@gmail.com', NULL),
(21, 'users new', 'users new', '25f9e794323b453885f5181f1b624d0b', 'usersnew111@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `tbl_konten`
--
ALTER TABLE `tbl_konten`
  ADD PRIMARY KEY (`id_mobil`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_konten`
--
ALTER TABLE `tbl_konten`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD CONSTRAINT `tbl_admin_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_konten`
--
ALTER TABLE `tbl_konten`
  ADD CONSTRAINT `tbl_konten_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `tbl_konten` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
