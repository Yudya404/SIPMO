-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jun 2021 pada 20.40
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `tanggal`, `kode`, `nama`, `harga`, `qty`, `jumlah`, `session`) VALUES
('20210310170918', '2021-03-10 17:09:18', '63', 'Pentol Crispy ', '10000', '0', '0', '20200710122913'),
('20210311105145', '2021-03-11 10:51:45', '63', 'Pentol Crispy ', '10000', '0', '0', '20200710122913'),
('20210525201903', '2021-05-25 20:19:03', '62', 'Es Kopi', '3500', '1', '3500', '20200710151929');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `kd_cus` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kd_cus`, `nama`, `alamat`, `no_telp`, `username`, `password`, `gambar`) VALUES
('20200710122913', 'Yudya', 'PERUM GRIYA TAMAN ASRI BLOK HG08 RT28 RW06', '089530583955', 'yudya', '7c222fb2927d828af22f592134e8932480637c0d', '../admin/gambar_customer/SUKMA.jpg'),
('20200710151929', 'Yoga DF', 'PERUM GRIYA TAMAN ASRI BLOK HG08 RT28 RW06', '024802740342', 'yoga', '8cb2237d0679ca88db6464eac60da96345513964', '../admin/gambar_customer/IMG-20180512-WA0117.jpg'),
('20210607135138', 'rizky', 'Krian', '081930174091', 'rizky', '8cb2237d0679ca88db6464eac60da96345513964', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `id_driver` varchar(10) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`id_driver`, `nama`, `alamat`, `no_telp`, `nopol`, `username`, `password`, `gambar`) VALUES
('', 'Otong', 'GTA', '089530583955', 'W 000 WW', 'otong', '9df1ebcfdeb487cbe473049fa7792c6595fc9390', 'gambar_customer/antimandimandiclub.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_kon` int(6) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `bayar_via` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(10) NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL,
  `status` enum('Sudah','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_kon`, `nopo`, `kd_cus`, `bayar_via`, `tanggal`, `jumlah`, `bukti_transfer`, `status`) VALUES
(23, '20200710122913', '20200710122913', 'Cash On Delivery (COD)', '2020-07-10 13:10:19', 15000, '0', ''),
(24, '20200710122913', '20200710122913', 'Cash On Delivery (COD)', '2020-07-10 14:08:24', 54000, '0', ''),
(25, '20200710122913', '20200710122913', 'Cash On Delivery (COD)', '2020-07-10 14:19:17', 40000, '0', ''),
(26, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-10 15:20:24', 12000, '0', ''),
(27, '20200710122913', '20200710122913', 'Cash On Delivery (COD)', '2020-07-10 15:30:56', 8000, '0', ''),
(28, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-13 08:47:38', 13500, '0', ''),
(29, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-13 10:27:39', 15000, '0', ''),
(30, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-13 10:37:38', 3000, '0', ''),
(31, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-13 13:01:34', 3500, '0', 'Belum'),
(32, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-14 12:41:35', 6500, '0', 'Sudah'),
(33, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-15 09:29:29', 10000, '0', 'Sudah'),
(34, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2020-07-16 08:37:36', 15000, '0', 'Sudah'),
(35, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2021-04-29 12:04:38', 10000, '0', 'Sudah'),
(36, '20200710151929', '20200710151929', 'Cash On Delivery (COD)', '2021-05-22 16:43:08', 10000, '0', 'Sudah'),
(37, '20210607135138', '20210607135138', 'Cash On Delivery (COD)', '2021-06-07 13:52:06', 10000, '0', 'Sudah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po`
--

CREATE TABLE `po` (
  `nopo` varchar(20) NOT NULL,
  `tanggalkirim` date NOT NULL,
  `status` enum('Proses Masak','Otw Kirim','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `po`
--

INSERT INTO `po` (`nopo`, `tanggalkirim`, `status`) VALUES
('20200710122913', '2020-07-10', 'Selesai'),
('20200710151929', '2020-07-10', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_terima`
--

CREATE TABLE `po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `kode` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL,
  `status_makanan` enum('Belum','Proses','Otw','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `po_terima`
--

INSERT INTO `po_terima` (`id`, `nopo`, `kd_cus`, `kode`, `nama`, `tanggal`, `qty`, `total`, `status_makanan`) VALUES
(42, '20200710122913', '20200710122913', 59, 'Nasi Bebek Srundeng', '2020-07-10 13:09:43', 1, 15000, 'Selesai'),
(43, '20200710122913', '20200710122913', 54, 'Bihun Ambyar', '2020-07-10 14:07:42', 2, 20000, 'Selesai'),
(44, '20200710122913', '20200710122913', 55, 'Nasi Goreng Ambyar', '2020-07-10 14:08:00', 1, 10000, 'Selesai'),
(45, '20200710122913', '20200710122913', 53, 'Nasi Lele Srundeng', '2020-07-10 14:08:03', 2, 24000, 'Selesai'),
(46, '20200710122913', '20200710122913', 56, 'Bakmi Ambyar', '2020-07-10 14:19:05', 4, 40000, 'Selesai'),
(47, '20200710151929', '20200710151929', 60, 'Es Teh', '2020-07-10 15:19:53', 4, 12000, 'Selesai'),
(48, '20200710122913', '20200710122913', 51, 'Nasi Sambelan Telur', '2020-07-10 15:30:49', 1, 8000, 'Selesai'),
(49, '20200710151929', '20200710151929', 62, 'Es Kopi', '2020-07-13 08:43:59', 1, 3500, 'Selesai'),
(50, '20200710151929', '20200710151929', 63, 'Pentol Crispy', '2020-07-13 08:47:31', 1, 10000, 'Selesai'),
(52, '20200710151929', '20200710151929', 59, 'Nasi Bebek Srundeng', '2020-07-13 10:26:52', 1, 15000, 'Selesai'),
(53, '20200710151929', '20200710151929', 60, 'Es Teh', '2020-07-13 10:35:47', 1, 3000, 'Selesai'),
(54, '20200710151929', '20200710151929', 61, 'Es Jeruk', '2020-07-13 13:01:13', 1, 3500, 'Selesai'),
(55, '20200710151929', '20200710151929', 62, 'Es Kopi', '2020-07-14 12:41:04', 1, 3500, 'Selesai'),
(56, '20200710151929', '20200710151929', 60, 'Es Teh', '2020-07-14 12:41:12', 1, 3000, 'Selesai'),
(57, '20200710151929', '20200710151929', 56, 'Bakmi Ambya', '2020-07-15 09:29:21', 1, 10000, 'Selesai'),
(58, '20200710151929', '20200710151929', 59, 'Nasi Bebek Srundeng', '2020-07-16 08:37:28', 1, 15000, 'Selesai'),
(59, '20200710151929', '20200710151929', 63, 'Pentol Crispy ', '2021-04-29 12:03:32', 1, 10000, 'Selesai'),
(60, '20200710151929', '20200710151929', 63, 'Pentol Crispy ', '2021-05-22 16:41:16', 1, 10000, 'Proses'),
(61, '20210607135138', '20210607135138', 56, 'Bakmi Ambyar', '2021-06-07 13:51:59', 1, 10000, 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `kode` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`kode`, `nama`, `jenis`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(51, 'Nasi Sambelan Telur', 'Makanan', 8000, 'Nasi + Telur Goreng Dengan Taburan Srundeng + Sambal + Bumbu Kuning + Lalapan', 9, 'gambar_produk/Telur.jpg'),
(52, 'Nasi Bandeng Srundeng', 'Makanan', 12000, 'Nasi + Bandeng Goreng Dengan Taburan Srundeng + Sambal + Bumbu Kuning + Lalapan', 10, 'gambar_produk/NasiBandeng.jpg'),
(53, 'Nasi Lele Srundeng', 'Makanan', 12000, 'Nasi + Lele Goreng Dengan Taburan Srundeng + Sambel + Bumbu Kuning + Lalapan', 8, 'gambar_produk/Lele.jpg'),
(54, 'Bihun Ambyar', 'Makanan', 10000, 'Mie Bihun Dengan Topping Ayam + Telur + Sosis + Acar + Cabe (Bisa Request Pedas)', 13, 'gambar_produk/Bihun.jpg'),
(55, 'Nasi Goreng Ambyar', 'Makanan', 10000, 'Nasi Goreng Dengan Topping Ayam + Telur + Pentol + Acar + Cabe (Bisa Request Pedas)', 14, 'gambar_produk/NasgorA.jpg'),
(56, 'Bakmi Ambyar', 'Makanan', 10000, 'Bakmi Dengan Topping Ayam + Pentol + Telur + Sawi Putih + Acar + Cabe', 9, 'gambar_produk/Bakmi.jpg'),
(57, 'Nasi Ayam Geprek', 'Makanan', 10000, 'Nasi + Ayam Goreng Crispy + Sambal + Slada + Timun', 10, 'gambar_produk/AyamGeprek.jpg'),
(58, 'Nasi Ayam Srundeng', 'Makanan', 12000, 'Nasi + Ayam Goreng Dengan Taburan Srundeng + Sambal + Bumbu kuning + Lalapan', 10, 'gambar_produk/AyamSrundeng.jpg'),
(59, 'Nasi Bebek Srundeng', 'Makanan', 15000, 'Nasi + Bebek Goreng Dengan Taburan Srundeng + Sambal + Bumbu Kuning + Lalapan', 7, 'gambar_produk/Bebek.jpg'),
(60, 'Es Teh', 'Minuman', 3000, 'Es Teh', 9, 'gambar_produk/EsTeh.jpg'),
(61, 'Es Jeruk', 'Minuman', 3500, 'Es Jeruk', 14, 'gambar_produk/EsJeruk.jpg'),
(62, 'Es Kopi', 'Minuman', 3500, 'Es Kopi', 12, 'gambar_produk/EsKopi.jpg'),
(63, 'Pentol Crispy ', 'Camilan', 10000, 'Pentol Crispy 1 porsi Isi 4 Tusuk,  1 Tusuk Isi 3 Biji (1 Porsi Isi 12 Biji) + Sambal Pedas', 11, 'gambar_produk/PentolC.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_po_terima`
--

CREATE TABLE `tmp_po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(10) NOT NULL,
  `kd_cus` varchar(10) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(7, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'gambar_admin/start ary.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kd_cus`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`nopo`);

--
-- Indexes for table `po_terima`
--
ALTER TABLE `po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_kon` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `po_terima`
--
ALTER TABLE `po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
