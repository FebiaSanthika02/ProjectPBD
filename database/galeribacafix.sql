SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `GaleriBaca`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `kategori_buku` varchar(125) NOT NULL,
  `penerbit_buku` varchar(125) NOT NULL,
  `pengarang` varchar(125) NOT NULL,
  `tahun_terbit` varchar(125) NOT NULL,
  `isbn` int(50) NOT NULL,
  `j_buku_baik` varchar(125) NOT NULL,
  `j_buku_rusak` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `nama_app` varchar(50) NOT NULL,
  `alamat_app` text NOT NULL,
  `email_app` varchar(125) NOT NULL,
  `nomor_hp` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `id_pemberitahuan` int(11) NOT NULL,
  `isi_pemberitahuan` varchar(255) NOT NULL,
  `level_user` varchar(125) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nama_anggota` varchar(125) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `tanggal_peminjaman` varchar(125) NOT NULL,
  `tanggal_pengembalian` varchar(50) NOT NULL,
  `kondisi_buku_saat_dipinjam` varchar(125) NOT NULL,
  `kondisi_buku_saat_dikembalikan` varchar(125) NOT NULL,
  `denda` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `kode_penerbit` varchar(125) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `verif_penerbit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `judul_pesan` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_kirim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `kode_user` varchar(25) NOT NULL,
  `nis` char(20) NOT NULL,
  `fullname` varchar(125) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `verif` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `join_date` varchar(125) NOT NULL,
  `terakhir_login` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------


--
-- Dumping data for table 
--

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `kategori_buku`, `penerbit_buku`, `pengarang`, `tahun_terbit`, `isbn`, `j_buku_baik`, `j_buku_rusak`) VALUES
('1','Sang Pemimpi','Fiksi','Maju Jaya Pustaka','Andrea Hirata','2000','12345','10','1'),
('2','Laskar Pelangi','Fiksi','Maju Jaya Pustaka','Andrea Hirata','2002','12346','10','2'),
('3','Ayat-Ayat Cinta','Fiksi','Andalas Media Cetak','Habiburrahman El-Shirazy','2000','12789','15','0'),
('4','Perahu Kertas','Fiksi','Mitra Pustaka Mandiri','Dee Lestari','2002','67543','10','4'),
('5','Menjadi Manusia: Mengungkap Misteri Kemanusiaan','Non-Fiksi','Milenia Pustaka','Desmond Morris','2000','45786','17','3'),
('6','Sapiens: Sejarah Singkat Umat Manusia','Non-Fiksi','Serambi Ilmu Penerbit','Yuval Noah Harari','2002','72974','13','4'),
('7','The Pragmatic Programmer','Pemrograman dan Teknologi Informasi','Mitra Pustaka Mandiri','Andrew Hunt','2000','89437','20','0'),
('8','Clean Code: A Handbook of Agile Software Craftsmanship','Pemrograman dan Teknologi Informasi','Andalas Media Cetak','Robert C. Martin','2000','64388','7','2'),
('9','Introduction to the Theory of Computation','Pemrograman dan Teknologi Informasi','Cahaya Ilmu Penerbit','Michael Sipser','2001','54345','21','0'),
('10','Design Patterns: Elements of Reusable Object-Oriented Software','Pemrograman dan Teknologi Informasi','Andalas Media Cetak','Erich Gamma','2000','65434','14','0');
--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_app`, `alamat_app`, `email_app`, `nomor_hp`) VALUES
(1, 'GaleriBaca', 'Jl. Sumbersari No. 1', 'contact@GaleriBaca.com', '08172345');

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori`(`id_kategori`, `kode_kategori`, `nama_kategori`) VALUES
('1','KT-001','Fiksi'),
('2','KT-002','Non-Fiksi'),
('3','KT-003','Sejarah'),
('4','KT-004','Biografi'),
('5','KT-005','Pendidikan'),
('6','KT-006','Kesehatan dan Kebugaran'),
('7','KT-007','Bisnis dan Keuangan'),
('8','KT-008','Non-Fiksi'),
('9','KT-009','Religi'),
('10','KT-010','Pemrograman dan Teknologi Informasi');

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit`(`id_penerbit`, `kode_penerbit`, `nama_penerbit`, `verif_penerbit`) VALUES
('1','P001','Maju Jaya Pustaka','Terverifikasi'),
('2','P002','Cemerlang Penerbit','Terverifikasi'),
('3','P003','Andalas Media Cetak','Terverifikasi'),
('4','P004','Serambi Ilmu Penerbit','Terverifikasi'),
('5','P005','Bina Karya Pustaka','Terverifikasi'),
('6','P006','Gemilang Penerbitan','Belum Terverifikasi'),
('7','P007','Mitra Pustaka Mandiri','Terverifikasi'),
('8','P008','Cahaya Ilmu Penerbit','Terverifikasi'),
('9','P009','Hasta Karya Media','Belum Terverifikasi'),
('10','P010','Milenia Pustaka','Terverifikasi');

--
-- Dumping data for table `user`
--

INSERT INTO `user`(`id_user`, `kode_user`, `nis`, `fullname`, `username`, `password`, `prodi`, `alamat`, `verif`, `role`, `join_date`, `terakhir_login`) VALUES
('1','','','Andi','andi','andi','','','Iya','Admin','',''),
('2','AP001','123456','Anita','anita','anita','Teknologi Informasi','Jl. Sigura-gura No. 1','Tidak','Anggota','',''),
('3','AP002','123457','Naufal','naufal','naufal','Teknologi Informasi','Jl. Suhat No. 10','Tidak','Anggota','',''),
('4','AP003','123458','Alex','alex','alex','Teknik Komputer','Jl. Bendungan Sutami No. 3','Tidak','Anggota','','');

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`id_pemberitahuan`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

-- --------------------------------------------------------


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  MODIFY `id_pemberitahuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

-- --------------------------------------------------------


/* PENJELASAN 

1. Tabel Buku:
Menyimpan informasi terkait buku-buku dalam perpustakaan, termasuk judul buku, kategori buku, penerbit buku, pengarang, tahun terbit, ISBN, jumlah buku baik, dan jumlah buku rusak.
Memiliki relasi one-to-many dengan tabel kategori (kategori buku), menunjukkan bahwa satu kategori bisa memiliki banyak buku.
Memiliki relasi one-to-many dengan tabel penerbit (penerbit buku), mengindikasikan bahwa satu penerbit bisa menerbitkan banyak buku.

2. Tabel Identitas:
Berisi informasi identitas aplikasi perpustakaan seperti nama aplikasi, alamat, email, dan nomor telepon.
Tidak memiliki relasi langsung dengan tabel lain dalam struktur yang disediakan pada ERD.

3. Tabel pemberitahuan berisi isi pemberitahuan mengenai peminjaman dan pengembalian buku.
Tidak memiliki relasi langsung dengan tabel lain dalam struktur yang disediakan pada ERD.

4. Tabel Kategori:
Menyimpan daftar kategori buku yang mungkin ada dalam perpustakaan.
Memiliki relasi one-to-many dengan tabel buku, yang menunjukkan bahwa satu kategori bisa memiliki banyak buku.

5. Tabel Peminjaman:
Mencatat informasi mengenai peminjaman buku oleh anggota perpustakaan.
Terhubung dengan tabel buku melalui kolom judul buku.
Memiliki relasi one-to-many dengan tabel buku (buku dengan peminjaman), yang berarti satu buku dapat dipinjam oleh banyak anggota.
Memiliki relasi one-to-many dengan tabel user, menunjukkan bahwa satu pengguna bisa melakukan banyak peminjaman.

6. Tabel Penerbit:
Menyimpan informasi tentang penerbit buku.
Memiliki relasi one-to-many dengan tabel buku (penerbit dengan buku), menggambarkan bahwa satu penerbit bisa menerbitkan banyak buku.

7. Tabel Pesan:
Berisi informasi pesan yang dikirim antar pengguna.
Memiliki relasi one-to-many dengan tabel user, yang berarti satu pengguna bisa memiliki banyak pesan yang dikirim maupun diterima.

8. Tabel User:
Menyimpan informasi tentang pengguna sistem seperti administrator atau anggota perpustakaan.
Memiliki relasi one-to-many dengan tabel peminjaman, menunjukkan bahwa satu pengguna bisa melakukan banyak peminjaman.
Memiliki relasi one-to-many dengan tabel pesan, menunjukkan bahwa satu pengguna bisa memiliki banyak pesan yang dikirim atau diterima.

*/