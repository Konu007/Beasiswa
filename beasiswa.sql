-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2021 pada 03.50
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `level` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'Y'),
(2, 'user', 'user', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `kd_beasiswa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa`
--

INSERT INTO `beasiswa` (`kd_beasiswa`, `nama`) VALUES
(4, 'Beasiswa BI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(146, 0, 'admin', 'Profil', 'profil', 'Y', '<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\"><img style=\"float: left;\" src=\"../tinymcpuk/gambar/image/logo2.jpg\" alt=\"\" width=\"160\" height=\"160\" />Untuk memperoleh siswa baru yang masuk ke SMKN 1 Gondang dengan kualitas yang baik dibidang akademik, Pihak Sekolah telah melakukan berbagai upaya pencitraan salah satunya dengan Program Beasiswa Prestasi, dimana hasil pelaksanaan kegiatan tersebut telah memperlihatkan perkembangan peningkatan siswa yang memiliki kualitas akademik di SMP/MTs yang mengikuti pendidikan di SMK.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Namun, di sini yang jadi permasalahan adalah ketika Pengolahan data siswa yang berhak menerima beasiswa di SMK Negeri 1 Gondang masih menggunakan sistem yang masih manual, yaitu belum adanya komputerisasi dalam menentukan penerima beasiswa, sehingga banyak masalah yang terjadi pada sistem penentuan penerima beasiswa itu. Permasalahan yang muncul biasanya adalah kurang tepatnya penyaluran beasiswa kepada siswa, misalnya siswa yang sebenarnya layak mendapatkan beasiswa baik itu beasiswa prestasi maupun beasiswa kurang mampu tidak mendapatkan beasiswa, sebaliknya siswa yang tidak layak mendapatkan beasiswa namun mendapatkan beasiswa.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dari permasalahan diatas maka dibutuhkan solusi alternatif yaitu dengan membangun sebuah aplikasi pendukung keputusan penentuan penerima beasiswa di SMK Negeri 1 Gondang. Salah satu metode yang dapat digunakan untuk Aplikasi Pendukung Keputusan penentuan penerimaan beasiswa &nbsp;ini adalah dengan metode Weighted Product yang di harapkan dapat menyelesaikan permasalahan yang ada di penyaluran penerima beasiswa di SMK Negeri 1 Gondang. Pada penelitian ini akan diangkat suatu kasus yaitu mencari alternative terbaik bedasarkan kriteria-kriteria yang telah ditentukan dengan mengggunakan metode Weighted Product.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dalam metode Weghted Product ini di kelompokkan beberapa krietria seperti nilai rata-rata raport siswa, penghasilan orang tua, jumlah tanggungan orang tua, jumlah saudara kandung dan lain-lain. Kemudian di terjemahkan dari bilangan fuzzy kedalam bentuk bilangan crisp, sehingga nilainya bisa di lakukan proses perhitungan untuk mencari nilai alternatif terbaik. Metode ini dipilih karena mampu menyeleksi alternatif, dalam hal ini alternatif yang dimaksudkan yaitu siswa yang berhak menerima beasiswa berdasarkan kriteria-kriteria yang telah ditentukan.</span></p>\r\n<p><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\"><a href=\"../permohonan/index.php?hal=permohonan\"><img src=\"../tinymcpuk/gambar/image/NextMenuButtonIcon.png\" alt=\"\" width=\"26\" height=\"26\" /><span style=\"font-size: x-large;\">&nbsp;&nbsp; klik disini untuk pengajuan permohonan beasiswa</span></a></span></p>', 'Kamis', '2014-11-13', '09:42:06', '', 397, ''),
(147, 0, '', 'Permohonan', 'permohonan', 'Y', '<p>silahkan mengisi data dengan benar</p>', '', '0000-00-00', '00:00:00', '', 1, ''),
(687, 0, '', 'Pengumuman UN 2016', 'pengumuman-un-2016', 'N', '<p style=\"text-align: center;\"><span style=\"font-family: georgia,palatino; font-size: small;\"><img src=\"../tinymcpuk/gambar/image/Pengumuman-Hasil-Kelulusan-UN1-660x330.jpg\" alt=\"\" width=\"660\" height=\"330\" /><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small;\">Dirasa cukup efektif dan juga cepat, SMK Negeri 1 Gondang akan umumkan pemberitahuan kelulusan Ujian Nasional 2014 (UN) bagi pelajar SMK NEGERI 1 GONDANG menggunakan website resmi sekolah atau juga SMS. Untuk mengetahui pengumuman tersebut, pelajar dapat mengakses website SMK Negeri 1 Gondang, Nganjuk secara langsung atau juga melalui SMS dan tidak perlu datang ke sekolah. &ldquo;Pada tahun ini, sekolah menggunakan layanan telekomunikasi untuk pengumuman kelulusan pelajar SMKN 1 Gondang, dan para pelajar tinggal mengetikkan nama dan nomor ujiannya ke nomor yang tertera pada website.</span></p>', '', '0000-00-00', '00:00:00', '', 1, ''),
(688, 0, '', 'Pertemuan MKKS ', 'pertemuan-mkks-', 'N', '<p style=\"text-align: justify;\">Peretemuan ini dihadiri oleh Kepala Dinas Dikpora Daerah Kab. Nganjuk Dr. BAMBng eko suharto, bertempatdi ruang perpustakaan SMK Negeri 1 Gondang Nganjuk.</p>', '', '0000-00-00', '00:00:00', '', 1, ''),
(689, 0, '', 'Pentingnya Beasiswa ', 'pentingnya-beasiswa-', 'N', '<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small;\"><img style=\"float: left;\" src=\"../tinymcpuk/gambar/image/images.jpeg\" alt=\"\" width=\"187\" height=\"269\" /><span style=\"color: #000000;\">Pendidikan di era modern saat ini sangat dibutuhkan untuk mengimbangi semakin berkembangnya era teknologi yang semakin maju. Saat ini pendidikan merupakan hal yang mendasari dan merupakan kebutuhan dasar yang harus dipenuhi. Pendidikan adalah usaha sadar dan terencana untuk mewujudkan dan proses mengembangkan potensi dirinya. Pendidikan mulai diterapkan pada usia sedini mungkin, agar dapat membentuk karakter dan kepribadian seseorang.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Kondisi Pendidikan di Indonesia saat ini sangat memprihatinkan, kualitas pendidikan di Indonesia begitu rendah bila dibandingkan dengan negara-negara berkembang lainnya. Hal ini diperkuat dengan data data UNESCO (2000) tentang peringkat Indeks Pengembangan Manusia (Human Development Index), yaitu komposisi dari peringkat pencapaian pendidikan, kesehatan, dan penghasilan per kepala yang menunjukkan, bahwa indeks pengembangan manusia Indonesia makin menurun. Di antara 174 negara di dunia, Indonesia menempati urutan ke-102 (1996), ke-99 (1997), ke-105 (1998), dan ke-109 (1999). Menurut survei Political and Economic Risk Consultant (PERC), kualitas pendidikan di Indonesia berada pada urutan ke-12 dari 12 negara di Asia. Posisi Indonesia berada di bawah Vietnam. Data yang dilaporkan The World Economic Forum Swedia (2000), Indonesia memiliki daya saing yang rendah, yaitu hanya menduduki urutan ke-37 dari 57 negara yang disurvei di dunia. Dan masih menurut survai dari lembaga yang sama Indonesia hanya berpredikat sebagai berkembang bukan sebagai pemimpin teknologi dari 53 negara di dunia. Kualitas pendidikan Indonesia yang rendah itu juga ditunjukkan data Balitbang (2003) bahwa dari 146.052 SD di Indonesia ternyata hanya delapan sekolah saja yang mendapat pengakuan dunia dalam kategori The Primary Years Program (PYP). Dari 20.918 SMP di Indonesia ternyata juga hanya delapan sekolah yang mendapat pengakuan dunia dalam kategori The Middle Years Program (MYP) dan dari 8.036 SMA ternyata hanya tujuh sekolah saja yang mendapat pengakuan dunia dalam kategori The Diploma Program (DP).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Hal ini sangat miris apabila kita mendengar tentang hal ini, yang mana di tengah-tengah isu mahalnya biaya pendidikan di Indonesia ternyata dalam penyajian pendidikan di Indonesia masih sangat minim. Banyak kabar-kabar yang kita dengar tentang banyaknya pelajar yang putus sekolah karena ketidakmampuan orang tuanya dalam membiayai pendidikan yang di tempuh. Karena mahalnya biaya pendidikan ini, maka akan membuat masalah-masalah yang timbul di masyarakat seperti lemahnya sumber daya manusia. Di tengah-tengah isu negara Indonesia yang merupakan negara berkembang, maka sumber daya manusia merupakan hal mendasar bagi perkembangan bangsa Indonesia. Faktor strategis dalam pengembangan sumber daya manusia adalah melalui pendidikan. Dalam pendidikan yang berperan langsung untuk faktor ini adalah pelajar, pelajar merupakan salah satu pihak yang paling merasakan dampak dari perubahan pendidikan saat ini.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Lemahnya taraf ekonomi dalam masyarakat juga mempengaruhi dalam pengembangan pendidikan yang ada di masyarakat. Karena pendidikan merupakan yang representatif atas pertumbuhan ekonomi suatu bangsa, yang mana faktor ekonomi tersebut yang mendukung berjalannya pendidikan. Menurut Tyler bahwa pendidikan dapat meningkatkan produktivitas kerja seseorang, yang kemudian akan meningkatakan pendapatannya. Peningkatan pendapatan ini berpengaruh pula kepada pendapatan nasional negara yang bersangkutan, untuk kemudian akan meningkatkan pendapatan dan taraf hidup masyarakat berpendapatan rendah. Sementara itu Jones melihat pendidikan sebagai alat untuk menyiapkan tenaga kerja terdidik dan terlatih yang sangat dibutuhkan dalam pertumbuhan ekonomi suatu negara.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Permasalahan yang dihadapai adalah jarang ada ekuivalensi yang kuat antara pekerjaan dan pendidikan yang dibutuhkan yang mengakibatkan munculnya pengangguran terdidik dan terlatih. Oleh karena itu, pendidikan perlu mengantisipasi kebutuhan. Ia harus mampu memprediksi dan mengantisipasi kualifikasi pengetahuan dan keterampilan tenaga kerja. Prediksi ketenagakerjaan sebagai dasar dalam perencanaan pendidikan harus mengikuti pertumbuhan ekonomi yang ada kaitannya dengan kebijaksanaan sosial ekonomi dari pemerintah.</span><br /><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\"> Selain itu kurangnya pemerataan pendidikan di Indonesia juga berpengaruh dalam aspek pengembangan sumber daya manusia. Pemarataan ini masih minim di daerah-daerah yang belum berkembang seperti minimnya pendidikan di daerah perbatasan, sehingga membuat sumber daya menusia di daerah tersebut belum maju.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Dalam menangani masalah pendidikan ini, pemerintah mempunyai peranan penting dalam mendukng dan memberdayakan permasalahan ini. Karena setiap warga negara mempunyai hak yang sama dalam memperoleh pendidikan dan itu merupakan masalah tanggungan negara karena di akui dalam Undang-undang. Saat ini pemerintah sudah menggelontorkan 25% dari Anggaran Pendapatan Belanja Negara untuk mengembangkan sektor pendidikan di Indonesia. Sampai saat ini untuk pendidikan dari tingkat TK hingga SMA sudah memperoleh bantuan dana biaya yang disebut BOS. Hal ini merupakan dukungan yang bagus dari pemerintah. Bukan hanya itu saja pemerintah juga memberikan bantuan berupa program Bidik Misi yang ditujukan untuk pelajar yang tidak mampu untuk melanjutkan ke Perguruan Tinggi.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Peran serta dari pemerintah saat ini adalah merupakan hal yang bagus untuk mendukung program pengembangan sumber daya manusia yang ada di Indonesia. Di tengah-tengah sulitnya perekonomian di Indonesia yang mana banyak orang tua yang tidak mampu membiayai anaknya untuk mengenyam pendidikan ke Perguruan Tinggi. Namun kenyataan yang terjadi saat ini adalah masih kurang tepatnya bantuan yang diberikan oleh pemerintah kepada sasaran yang ditargetkan. Selain itu dalam proses turunnya bantuan tersebut banyak oknum-oknum yang tidak bertanggung jawab yang menyelewengkan dana tersebut untuk kepentingan pribadi. Di sinilah peran pemerintah dibutuhkan untuk mengawasi berjalannya program bantuan tersebut agar dapat di gunakan sebagaimana mestinya dan dimanfaatkan dengan tepat.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">Perlunya program bantuan dari pemerintah dalam bidang pendidikan sangat diperlukan dalam usaha pengembangan sumber daya manusia di Indonesia. Saat ini ekonomi masyarakat yang lemah yang dikarenakan tingginya inflasi yang terjadi. Selain itu mahalnya pendidikan yang ada sehingga masyarakat yang berekonomi lemah tidak dapat memperoleh pendidikan yang layak. Dengan adanya bantuan dari pemerintah ini, diharapkan dapat memutus rantai kemiskinan yang ada di masyarakat dan juga sebagai usaha dalam mengembangkan sumber daya manusia di Indonesia guna mencapai kemajuan bangsa Indonesia di era globalisasi sekarang ini.</span></p>', '', '0000-00-00', '00:00:00', '', 1, ''),
(145, 0, 'admin', 'Home', 'home', 'Y', '<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\"><img style=\"float: left;\" src=\"../tinymcpuk/gambar/image/logo2.jpg\" alt=\"\" width=\"160\" height=\"160\" />Untuk memperoleh siswa baru yang masuk ke SMKN 1 Gondang dengan kualitas yang baik dibidang akademik, Pihak Sekolah telah melakukan berbagai upaya pencitraan salah satunya dengan Program Beasiswa Prestasi, dimana hasil pelaksanaan kegiatan tersebut telah memperlihatkan perkembangan peningkatan siswa yang memiliki kualitas akademik di SMP/MTs yang mengikuti pendidikan di SMK.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Namun, di sini yang jadi permasalahan adalah ketika Pengolahan data siswa yang berhak menerima beasiswa di SMK Negeri 1 Gondang masih menggunakan sistem yang masih manual, yaitu belum adanya komputerisasi dalam menentukan penerima beasiswa, sehingga banyak masalah yang terjadi pada sistem penentuan penerima beasiswa itu. Permasalahan yang muncul biasanya adalah kurang tepatnya penyaluran beasiswa kepada siswa, misalnya siswa yang sebenarnya layak mendapatkan beasiswa baik itu beasiswa prestasi maupun beasiswa kurang mampu tidak mendapatkan beasiswa, sebaliknya siswa yang tidak layak mendapatkan beasiswa namun mendapatkan beasiswa.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dari permasalahan diatas maka dibutuhkan solusi alternatif yaitu dengan membangun sebuah aplikasi pendukung keputusan penentuan penerima beasiswa di SMK Negeri 1 Gondang. Salah satu metode yang dapat digunakan untuk Aplikasi Pendukung Keputusan penentuan penerimaan beasiswa &nbsp;ini adalah dengan metode Weighted Product yang di harapkan dapat menyelesaikan permasalahan yang ada di penyaluran penerima beasiswa di SMK Negeri 1 Gondang. Pada penelitian ini akan diangkat suatu kasus yaitu mencari alternative terbaik bedasarkan kriteria-kriteria yang telah ditentukan dengan mengggunakan metode Weighted Product.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dalam metode Weghted Product ini di kelompokkan beberapa krietria seperti nilai rata-rata raport siswa, penghasilan orang tua, jumlah tanggungan orang tua, jumlah saudara kandung dan lain-lain. Kemudian di terjemahkan dari bilangan fuzzy kedalam bentuk bilangan crisp, sehingga nilainya bisa di lakukan proses perhitungan untuk mencari nilai alternatif terbaik. Metode ini dipilih karena mampu menyeleksi alternatif, dalam hal ini alternatif yang dimaksudkan yaitu siswa yang berhak menerima beasiswa berdasarkan kriteria-kriteria yang telah ditentukan.</span></p>\r\n<blockquote>\r\n<p style=\"text-align: center;\"><span style=\"font-size: small; font-family: georgia,palatino; color: #000000;\"><a href=\"../permohonan/index.php?hal=permohonan\"><img src=\"../tinymcpuk/gambar/image/NextMenuButtonIcon.png\" alt=\"\" width=\"26\" height=\"26\" /><span style=\"font-size: x-large;\">&nbsp;&nbsp; klik disini untuk pengajuan permohonan beasiswa</span></a><br /></span></p>\r\n</blockquote>', 'Kamis', '2014-11-13', '09:43:46', '', 498, ''),
(683, 0, '', 'kontak', 'kontak', 'Y', '<div class=\"foot_contact\">\r\n<h2><span style=\"color: #000000;\">SMK NEGERI 1 GONDANG</span></h2>\r\n<address><span style=\"color: #000000;\">jalan lengkong-gondang</span><br /><span style=\"color: #000000;\"> no 28 Nganjuk - Jawa timur</span></address>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Tel:</strong> 0358-773-412</span></li>\r\n<li><span style=\"color: #000000;\"><strong>Fax:</strong> 0358-773-412</span></li>\r\n<li class=\"last\"><span style=\"color: #000000;\"><strong>Email:</strong> <a href=\"../permohonan/index.php?hal=permohonan\"><span style=\"color: #000000;\">contact@smknsatugondang.ac.id</span></a></span></li>\r\n</ul>\r\n</div>', '', '0000-00-00', '00:00:00', '', 1, ''),
(148, 0, 'admin', 'Pengumuman', 'pengumuman', 'Y', '<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div style=\"text-align: left;\"><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">pengumuman beasiswa akan di umumkan bulan depan, segera ajukan permohonan beasiswa untuk mendapatkan beasiswa adapun syarat untuk mendapatkan beasiswa sebagai berikut<br /></span></div>\r\n<div style=\"text-align: left;\"><ol>\r\n<li><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">terdaftar sebagai siswa SMKN 1 Gondang.<br /></span></li>\r\n<li><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">nilai raport rata rata di semester 1&nbsp;<span style=\"font-size: small;\">sekurang kurangnya</span> 75.<br /></span></li>\r\n<li><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">mepunyai nilai kepribadian sekurang kurangnya 85.<br /></span></li>\r\n<li><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">tidak ada absen merah (alfa) .<br /></span></li>\r\n<li><span style=\"font-family: georgia,palatino; font-size: small; color: #000000;\">mengisi form pengajuan beasiswa yang disediakan oleh SMKN1 Gondang.<br /></span></li>\r\n<li><span style=\"color: #000000;\"><span style=\"font-family: book antiqua,palatino; font-size: small;\"><span style=\"font-family: georgia,palatino;\">menyerahkan berkas (foto copy : nilai raport, surat ket miskin dari kelurahan, tagihan listrik dan foto rumah) ke ruang BK Bimbingan Konseling.</span></span><span style=\"font-family: book antiqua,palatino; font-size: small;\"><br /></span></span></li>\r\n</ol></div>\r\n<div><a href=\"../permohonan/index.php?hal=permohonan\"><span style=\"font-size: medium; font-family: arial black,avant garde;\"> <img src=\"../tinymcpuk/gambar/image/NextMenuButtonIcon.png\" alt=\"\" width=\"27\" height=\"27\" /><span style=\"font-size: x-large; font-family: times new roman,times;\"> klik disini untuk pengajuan beasiswa</span></span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Kamis', '2014-11-13', '09:41:38', '', 223, ''),
(679, 0, '', 'cara makan', '', 'N', '<p>makan yang benar</p>', '', '0000-00-00', '00:00:00', '', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `j1` int(11) NOT NULL,
  `j2` int(11) NOT NULL,
  `j3` int(11) NOT NULL,
  `j4` int(11) NOT NULL,
  `j5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`j1`, `j2`, `j3`, `j4`, `j5`) VALUES
(5, 3, 4, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `kd_hasil` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `nim` char(9) NOT NULL,
  `nilai` float DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`kd_hasil`, `kd_beasiswa`, `nim`, `nilai`, `tahun`) VALUES
(23, 4, '125610001', 0.6, '2019'),
(24, 4, '125610002', 0, '2019'),
(25, 4, '125610003', 0, '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `kd_kriteria` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sifat` enum('min','max') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`kd_kriteria`, `kd_beasiswa`, `nama`, `sifat`) VALUES
(10, 4, 'IPK', 'max'),
(11, 4, 'Semester', 'max'),
(12, 4, 'Penghasilan Orang Tua', 'min'),
(22, 4, 'KTP', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tahun_mengajukan` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jenis_kelamin`, `tahun_mengajukan`) VALUES
('125610001', 'Hisnu Al Mujahidin', 'Padang', 'Laki-laki', '2019'),
('125610002', 'Taufik Sukma Aji', 'Temanggung', 'Laki-laki', '2019'),
('125610003', 'Febri vicky Allen', 'Surakarta', 'Laki-laki', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `model`
--

CREATE TABLE `model` (
  `kd_model` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `bobot` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `model`
--

INSERT INTO `model` (`kd_model`, `kd_beasiswa`, `kd_kriteria`, `bobot`) VALUES
(10, 4, 10, '3.00'),
(11, 4, 11, '0.10'),
(12, 4, 12, '0.30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kd_nilai` int(11) NOT NULL,
  `kd_beasiswa` int(11) DEFAULT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `nim` char(9) NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`kd_nilai`, `kd_beasiswa`, `kd_kriteria`, `nim`, `nilai`) VALUES
(105, 4, 10, '125610002', 0),
(106, 4, 11, '125610002', 0),
(107, 4, 12, '125610002', 0),
(108, 4, 22, '125610002', 0),
(109, 4, 10, '125610003', 0),
(110, 4, 11, '125610003', 0),
(111, 4, 12, '125610003', 0),
(112, 4, 22, '125610003', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `kd_pengguna` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('petugas','puket','mahasiswa') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`kd_pengguna`, `username`, `password`, `status`) VALUES
(1, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas'),
(2, 'puket', 'b679a71646e932b7c4647a081ee2a148', 'puket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `kd_penilaian` int(11) NOT NULL,
  `kd_beasiswa` int(11) DEFAULT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `bobot` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`kd_penilaian`, `kd_beasiswa`, `kd_kriteria`, `keterangan`, `bobot`) VALUES
(37, 4, 10, ' 3.00 - 4.00', 0),
(41, 4, 11, '3 - 6', 0),
(46, 4, 12, '<= 1.500.000', 0),
(113, 4, 22, 'YA', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `raport` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `saudara` int(11) NOT NULL,
  `yatim` enum('Y','N','YP') NOT NULL,
  `penghasilan` int(11) NOT NULL,
  `vektor` int(11) NOT NULL,
  `preferensi` varchar(789) NOT NULL,
  `nama` varchar(122) NOT NULL,
  `nisn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `raport`, `kepribadian`, `saudara`, `yatim`, `penghasilan`, `vektor`, `preferensi`, `nama`, `nisn`) VALUES
(1, 98, 98, 5, 'Y', 500000, 0, '0.010018671570781', 'mohammad aang syaif', 5412),
(2, 56, 89, 8, 'YP', 1000000, 0, '0.0096292332268991', 'ratna', 5419),
(3, 75, 89, 5, 'Y', 500000, 0, '0.0096644477282396', 'jamil', 5489),
(4, 98, 98, 4, 'Y', 2500000, 0, '0.0099143214085552', 'anjani', 5456),
(5, 78, 98, 3, 'Y', 1000000, 0, '0.0095537741369186', 'subekan', 5436),
(6, 56, 90, 2, 'N', 2500000, 0, '0.0077908984528475', 'jamali', 5416),
(7, 98, 98, 5, 'Y', 500000, 0, '0.010018671570781', 'rabodin', 5458),
(8, 89, 78, 1, 'Y', 500000, 0, '0.0092805752393229', 'kemi', 5601),
(9, 79, 85, 4, 'Y', 750000, 0, '0.009613477667317', 'sampun', 5402),
(10, 90, 90, 4, 'Y', 500000, 0, '0.0097952418173191', 'umar', 5403),
(11, 74, 75, 5, 'Y', 500000, 0, '0.0095768149042303', 'yosep', 5404),
(12, 76, 89, 2, 'Y', 500000, 0, '0.0093577086265268', 'rakijan', 5405),
(13, 75, 89, 2, 'N', 1500000, 0, '0.0081074111436101', 'jarakal', 5406),
(14, 89, 98, 6, 'N', 500000, 0, '0.0087546071056926', 'mekerji', 5407),
(15, 99, 99, 5, 'YP', 500000, 0, '0.010133191302559', 'indra', 4506);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vektor`
--

CREATE TABLE `vektor` (
  `id_vektor` int(11) NOT NULL,
  `vektor` varchar(1222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vektor`
--

INSERT INTO `vektor` (`id_vektor`, `vektor`) VALUES
(1, '818.97179514494');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`kd_beasiswa`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`kd_hasil`),
  ADD KEY `fk_mahasiswa` (`nim`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kd_kriteria`),
  ADD KEY `kd_beasiswa` (`kd_beasiswa`),
  ADD KEY `kd_beasiswa_2` (`kd_beasiswa`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`kd_model`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kd_nilai`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_mahasiswa` (`nim`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`kd_pengguna`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`kd_penilaian`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `kd_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `kd_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `kd_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `model`
--
ALTER TABLE `model`
  MODIFY `kd_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `kd_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `kd_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `kd_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD CONSTRAINT `fk_beasiswa` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
