-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 08:26 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesehatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_santri`
--

CREATE TABLE `tb_santri` (
  `id` int(11) NOT NULL,
  `nis` int(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `jkl` varchar(20) NOT NULL,
  `desa` varchar(30) NOT NULL,
  `kec` varchar(30) NOT NULL,
  `kab` varchar(30) NOT NULL,
  `prov` varchar(50) NOT NULL,
  `k_formal` varchar(30) NOT NULL,
  `t_formal` varchar(30) NOT NULL,
  `k_madin` varchar(30) NOT NULL,
  `r_madin` varchar(30) NOT NULL,
  `komplek` varchar(50) NOT NULL,
  `kamar` varchar(30) NOT NULL,
  `bapak` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `stts` varchar(25) NOT NULL,
  `t_kos` int(11) NOT NULL,
  `ket` int(11) NOT NULL,
  `aktif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_santri`
--

INSERT INTO `tb_santri` (`id`, `nis`, `nik`, `no_kk`, `nama`, `tempat`, `tanggal`, `jkl`, `desa`, `kec`, `kab`, `prov`, `k_formal`, `t_formal`, `k_madin`, `r_madin`, `komplek`, `kamar`, `bapak`, `ibu`, `hp`, `pass`, `foto`, `stts`, `t_kos`, `ket`, `aktif`) VALUES
(68, 20161068, '', '', 'AHMAD AFIFUDDIN', 'PROBOLINGGO', '24-6-2004', 'Laki-laki', 'Jabungsisir', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Drajat', 'Drajat 02', 'MUHAR ', 'KHUSNUL KHOTIMAH', '085331440472', '20161068', '', '-----6-7-8-', 1, 0, 'Y'),
(69, 20161069, '', '', 'AHMAD JAILANI', 'PROBOLINGGO', '27-2-2004', 'Laki-laki', 'Sukorejo', 'Kotaanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '4', 'B', 'Sunan Drajat', 'Drajat 02', 'SAMHADI', 'SUTIKA', '085204946567', '20161069', '', '-----6-7-8-', 1, 0, 'Y'),
(70, 20161070, '', '', 'AHMAD TAUFIQI', 'PROBOLINGGO', '12-7-2003', 'Laki-laki', 'Gunggungan Lor', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '5', 'B', 'Sunan Kudus', 'Kudus 02', 'HASAN BASRI', 'NURFIYAH', '085220602876', '20161070', '', '-----6--8-', 1, 0, 'Y'),
(71, 20161071, '', '', 'AHMAD ZAINURI FATAHILLAH', 'PROBOLINGGO', '17-6-2004', 'Laki-laki', 'Sumberkatimoho', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '4', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'M. CHALIL', 'AISA', '085211799779', '20161071', '', '-----6--8-', 1, 0, 'Y'),
(72, 20161072, '', '', 'ANIS SUSANTO', 'PROBOLINGGO', '13-4-2004', 'Laki-laki', 'Krampilan', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 02', 'SUID', 'SALAMA', '085259541156', '20161072', '', '-----6-7-8-', 1, 0, 'Y'),
(73, 20161073, '', '', 'DAFI RIZALDI', 'PROBOLINGGO', '5-12-2003', 'Laki-laki', 'Wangkal', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '5', 'A', 'Sunan Bonang', 'Bonang 04', 'SARJONO', 'SUNARSIH', '085235580733', '20161073', '', '--3---6-7-8-', 1, 0, 'Y'),
(74, 20161074, '', '', 'FADHLUR ROHMAN', 'PROBOLINGGO', '21-7-2003', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '3', 'B', 'Sunan Giri', 'Giri 01', 'FADILLAH', 'MUSLEHAH', '082331351705', '20161074', '', '-----6--8-', 1, 0, 'Y'),
(75, 20161075, '', '', 'IRFAN ABBASTIAN KAHFI', 'SITUBONDO', '30-10-2003', 'Laki-laki', 'Suboh', 'Suboh', 'KAB. SITUBONDO', 'Jawa Timur', 'XII A', 'SMK', '4', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'DARUS SALAM', 'HERLINA', '082242828549', '20161075', '', '-----6--8-', 1, 0, 'Y'),
(76, 20161076, '', '', 'M. ARIEL IKHSAN NURWAHID', 'PROBOLINGGO ', '15-5-2005', 'Laki-laki', 'Sumurdalam', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Drajat', 'Drajat 02', 'MOH EKSAN', 'FITRIATUN HASANAH', '085231229869', '20161076', '', '-----6--8-', 1, 0, 'Y'),
(77, 20161077, '', '', 'M. SAID AGIL IMAM AL MUNAWAR', 'BANYUWANGI', '23-7-2003', 'Laki-laki', 'Kedungrejo', 'Muncar', 'KAB. BANYUWANGI', 'Jawa Timur', 'XII A', 'SMK', '5', 'A', 'Sunan Giri', 'Giri 01', 'SUCIPTO', 'SITI MAIMUNAH', '089630108746', '20161077', '', '-----6-7-8-', 1, 0, 'Y'),
(78, 20161078, '', '', 'MAULANA HASBI', 'PROBOLINGGO', '5-10-2003', 'Laki-laki', 'Kotaanyar', 'Kotaanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Drajat', 'Drajat 02', 'NURUDDIN', 'YULIS ANDRIANI', '085232108350', '20161078', '', '-----6--8-', 1, 0, 'Y'),
(79, 20161079, '', '', 'MOH. FATONI RAMADANI IRSYAD', 'PRBOLINGGO', '2-11-2006', 'Laki-laki', 'Bladokulon', 'Tegalsiwalan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'C', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'MOH JAZIM', 'ENDANG HASANA', '082245812080', '20161079', '', '-----6--8-', 1, 0, 'Y'),
(80, 20161080, '', '', 'MOHAMMAD NURUDDIN', 'PROBOLINGGO', '18-2-2004', 'Laki-laki', 'Kalirejo', 'Dringu', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', 'Ust/Ustd', 'Ust/Ustd', 'Sunan Bonang', 'Bonang 03', 'AKHMAD', 'TUTIK SRI RAHAYU', '085257720440', '20161080', '', '1-------8-', 1, 0, 'Y'),
(81, 20161081, '', '', 'MUHAMMAD ANGGA  PRAMODITA', 'PROBOLINGGO', '23-10-2003', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '2', 'C', 'Sunan Drajat', 'Drajat 02', 'MUHAMMAD', 'SITI ASIAWATI', '082315734613', '20161081', '', '-----6--8-', 1, 0, 'Y'),
(82, 20161082, '', '', 'SYAMSUL ARIFIN (B)', 'PROBOLINGGO', '11-9-2003', 'Laki-laki', 'Soka\"an', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', 'Ust/Ustd', 'Ust/Ustd', 'Sunan Kalijogo', 'Kalijogo 01', 'AHMAD SHOLEH ', 'SUKARSI', '085236357548', '20161082', '', '1-------8-', 1, 0, 'Y'),
(83, 20161083, '', '', 'A. BADIK HASANUDDIN WAHID', 'PROBOLINGGO ', '9-1-2004', 'Laki-laki', 'Pandean', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '6', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'SYAMSUDDIN', 'ALMH. USWATUN HASANAH', '082131529602', '20161083', '', '---4--6--8-', 1, 0, 'Y'),
(84, 20161084, '', '', 'ACHMAD HOLILURROHMAN', 'KALIKAJAR KULON ', '29-8-2004', 'Laki-laki', 'Kalikajar Kulon', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 02', 'SAMSUDDIN', 'SA\'DIYAH', '085784322182', '20161084', '', '-----6--8-', 1, 0, 'Y'),
(85, 20161085, '', '', 'AGUS HIDAYATULLAH', 'PROBOLINNGO', '31-8-2003', 'Laki-laki', 'Jabungsisir', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Drajat', 'Drajat 02', 'SAMSUL HAIDI', 'MUSIK ATI', '085258877130', '20161085', '', '-----6--8-', 2, 2, 'Y'),
(86, 20161086, '', '', 'AHMAD RIZAL MUSTOFA', 'PROBOLINGGO', '8-5-2004', 'Laki-laki', 'Liprak Wetan', 'Banyuanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '5', 'A', 'Sunan Ampel', 'Ampel 05', 'MUSTOFA', 'RARA SAMIYATI', '085234639465', '20161086', '', '--3-4--6-7-8-', 1, 0, 'Y'),
(87, 20161087, '', '', 'AHMAD ZAHIR', 'PROBOLINGGO', '14-1-2005', 'Laki-laki', 'Alastengah', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '5', 'B', 'Sunan Giri', 'Giri 03', 'ABD RAZAK', 'SUBAIDA', '082331219642', '20161087', '', '-----6--8-', 1, 0, 'Y'),
(88, 20161088, '', '', 'DANIAL AZIZ', 'PAMEKASAN ', '7-11-2004', 'Laki-laki', 'Bangkes', 'Kadur', 'KAB. PAMEKASAN', 'Jawa Timur', 'XII B', 'SMK', '5', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'MOH.THOHIR RIYADI ', 'IMTIHANAH', '082334011518', '20161088', '', '-----6-7-8-', 1, 0, 'Y'),
(89, 20161089, '', '', 'EDI SUSANTO', 'PROBOLINGGO', '11-9-2003', 'Laki-laki', 'Prasi', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'ABD RAHMAN', 'INDRA WATI', '08', '20161089', '', '-----6--8-', 1, 0, 'Y'),
(90, 20161090, '', '', 'HADZIQ UBAIDILLAH', 'PROBOLINNGO', '14-2-2004', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'A', 'Sunan Giri', 'Giri 02', 'SYAMSURI', 'YULI ANTIN', '082332309797', '20161090', '', '-----6-7-8-', 1, 0, 'Y'),
(91, 20161091, '', '', 'IRFAN MAULANA MALIK', 'PROBOLINGGO', '24-7-2004', 'Laki-laki', 'Kertonegoro', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'A', 'Sunan Kudus', 'Kudus 02', 'HERIYANTO', 'MARYAMI', '085258773311', '20161091', '', '-----6--8-', 1, 0, 'Y'),
(92, 20161092, '', '', 'JAWAIRUL ARIFIN', 'SURABAYA', '18-12-2003', 'Laki-laki', 'Wonokusumo', 'Semampir', 'KOTA SURABAYA', 'Jawa Timur', 'XII A', 'SMK', '5', 'A', 'Sunan Bonang', 'Bonang 02', 'ACHMAD ZAINI', 'NUR HAYATI', '081358571399', '20161092', '', '--3---6--8-', 1, 0, 'Y'),
(93, 20161093, '', '', 'M. RIZQI', 'PROBOLINGGO', '17-5-2004', 'Laki-laki', 'Alastengah', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Kalijogo', 'Kalijogo 01', 'SLAMET', 'ASIA', '082233085884', '20161093', '', '-----6--8-', 1, 0, 'Y'),
(94, 20161094, '', '', 'MOH. JUPRI EFENDI', 'PROBOLINGGO', '12-4-2004', 'Laki-laki', 'Alastengah', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '2', 'C', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'MOH  JAMALUDDIN', 'FATHIMAH AZ ZAHRO ', '082234770243', '20161094', '', '-----6--8-', 1, 0, 'Y'),
(95, 20161095, '', '', 'MOHAMMAD ZAINI WIJAYA', 'PROBOLINGGO', '12-10-2004', 'Laki-laki', 'Asembakor', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'MARSUDI', 'MISNAINI', '081357890626', '20161095', '', '--3---6--8-', 1, 0, 'Y'),
(96, 20161096, '', '', 'MUHAMMAD ROMLI ', 'PROBOLINNGO', '10-1-2003', 'Laki-laki', 'Semampir', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Drajat', 'Drajat 02', 'HUSNAN', 'SYAHRIYAH', '085221463313', '20161096', '', '--3---6-7-8-', 1, 0, 'Y'),
(97, 20161097, '', '', 'PUTRA TIRTA SALINDRA', 'PROBOLINGGO', '14-8-2003', 'Laki-laki', 'Sogaan', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 02', 'M.SUNARAI', 'INDRAWATI', '082338865193', '20161097', '', '-----6--8-', 1, 0, 'Y'),
(98, 20161098, '', '', 'RIJALURAHMANIL MUQTADIR', 'PROBOLINGGO', '16-5-2003', 'Laki-laki', 'Talkandang', 'Kotaanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '4', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 02', 'HARIYANTO', 'TITIK SUARTIN', '085204570365', '20161098', '', '-----6-7-8-', 1, 0, 'Y'),
(99, 20191100, '', '', 'ABDULLAH MASHWAN ULIL ALBAB', 'PROBOLINGGO', '14-1-2004', 'Laki-laki', 'Bulu', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '4', 'A', 'Sunan Kalijogo', 'Kalijogo 01', 'MUHAMMAD MAHRUS SHOLIHIN', 'ASIH AWALIYATUN NI\'MAH', '082231334772', '20191100', '', '-----6--8-', 1, 0, 'Y'),
(100, 20191102, '', '', 'MOCHAMMAD FAUZAN', 'PROBOLINGGO', '2-9-2003', 'Laki-laki', 'Kedung Asem', 'Wonoasih', 'KOTA PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '1', 'A', 'Sunan Ampel', 'Ampel 01', 'SUKARNO', 'ENIK SOFIAH', '085233258948', '20191102', '', '-----6--8-', 1, 0, 'Y'),
(101, 20191104, '', '', 'MUHAMMAD QOMARUL MUNIR', '-', '--', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '1', 'A', 'Sunan Ampel', 'Ampel 01', '-', '-', '-', '20191104', '', '-----6--8-', 1, 0, 'Y'),
(102, 20191105, '', '', 'ANDY DANUARTA', 'PROBOLINGGO', '10-4-2004', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '3', 'B', 'Sunan Ampel', 'Ampel 03', 'AS\'ADI', 'FATIMAH', '085230866713', '20191105', '', '-----6--8-', 1, 0, 'Y'),
(103, 20191106, '', '', 'MAULANA ARRIDHO', 'DENPASAR BARAT', '14-4-2004', 'Laki-laki', 'Liprak Wetan', 'Banyuanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '1', 'A', 'Sunan Ampel', 'Ampel 02', 'ABU ALI MUSTOFA', 'FADLIANA HUSEIN', '085338517258', '20191106', '', '-----6--8-', 1, 0, 'Y'),
(104, 20191107, '', '', 'MOHAMMAD HAFIZ ALFANSYAH', 'PROBOLINNGO', '9-10-2004', 'Laki-laki', 'Ketawanggede', 'Lowokwaru', 'KOTA MALANG', 'Jawa Timur', 'XII B', 'SMK', '4', 'A', 'Sunan Kalijogo', 'Kalijogo 02', 'SAIRUL HASAN', 'NUR HIDAYATI', '083835300900', '20191107', '', '-----6--8-', 1, 0, 'Y'),
(106, 20191109, '', '', 'MUHAMMAD ZAINUL HAQ NANFIDZ HIMMANA', 'BONDOWOSO', '2-7-2003', 'Laki-laki', 'Kotakulon', 'Bondowoso', 'KAB. BONDOWOSO', 'Jawa Timur', 'XII B', 'SMK', '2', 'A', 'Sunan Kudus', 'Kudus 03', 'MUHAMMAD SAIFUL ISLAM', 'HALIMA', '085258948770', '20191109', '', '-----6-7-8-', 1, 0, 'Y'),
(107, 20191110, '', '', 'SAMSUL HUDA', 'PROBOLINGGO', '16-3-2004', 'Laki-laki', 'Kertosuko', 'Krucil', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '2', 'A', 'Sunan Giri', 'Giri 01', 'MOH TOYYIB', 'QOWIYATUL ISTI HASANAH', '085335735606', '20191110', '20191110.jpg', '--3---6--8-', 1, 0, 'Y'),
(108, 20191111, '', '', 'SHOHIBUL MUSLIM', 'PROBOLINGGO', '20-6-2004', 'Laki-laki', 'Alastengah', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII B', 'SMK', '1', 'A', 'Sunan Kudus', 'Kudus 03', 'SADIN', 'USWATUN HASANAH', '085810011902', '20191111', '20191111.png', '-----6--8-', 1, 0, 'Y'),
(135, 20171156, '', '', 'ABDUL WAHID ZAINI', 'PROBOLINGGO', '26-9-2004', 'Laki-laki', 'Wangkal', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '5', 'A', 'Sunan Giri', 'Giri 03', 'NURSALAM', 'SUBAIDA', '085283328961', '20171156', '', '-----6--8-', 2, 0, 'Y'),
(138, 20201142, '', '', 'ADNAN MASYHUDI', 'PROBOLINGGO ', '29-12-2003', 'Laki-laki', 'Sebaung', 'Gending', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '1', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'TURMUDI', 'SUPIYAH', '082233668520', '20201142', '', '-----6--8-', 2, 0, 'Y'),
(139, 20171147, '', '', 'AHMAD RIF\'AN FAUZI', 'PROBOLINGGO', '13-4-2004', 'Laki-laki', 'Paiton', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '5', 'A', 'Sunan Drajat', 'Drajat 01', 'HASAN HASYIM', 'NADZIROH', '081233740540', '20171147', '', '-----6--8-', 2, 0, 'Y'),
(140, 20171157, '', '', 'ALBI ALUUF FAUZI', 'PROBOLINGGO', '23-3-2005', 'Laki-laki', 'Gunggungan Lor', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 02', 'FAUSI', 'YULIATIN', '085331381708', '20171157', '', '-----6--8-', 2, 0, 'Y'),
(141, 20171158, '', '', 'BUSTANUL FIRDAUS', 'LUMAJANG', '6-12-2004', 'Laki-laki', 'Lubruk Lor', 'Lumajang', 'KAB. LUMAJANG', 'Jawa Timur', 'XI', 'SMK', '4', 'A', 'Sunan Giri', 'Giri 03', 'MASHURI', 'DEWI FITRIANINGSIH', '085236827831', '20171158', '', '-----6--8-', 2, 0, 'Y'),
(142, 20171148, '', '', 'CHUSNUL BASORI', 'PROBOLINGGO', '1-4-2004', 'Laki-laki', 'Tarokan', 'Banyuanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '5', 'B', 'Sunan Kudus', 'Kudus 03', 'MOH SLAMET', 'LEWATI', '085231219347', '20171148', '', '-----6--8-', 0, 4, 'Y'),
(144, 20171172, '', '', 'FARHAN MIRZA RIFANI', 'PROBOLINGGO', '31-12-2003', 'Laki-laki', 'Sukoharjo', 'Kanigaran', 'KOTA PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'A', 'Sunan Kalijogo', 'Kalijogo 01', 'DIDIK SURYA RIFANI', 'LAILATUL QOMARIA', '082335488394', '20171172', '20171172.jpg', '-----6--8-', 2, 0, 'Y'),
(145, 20171152, '', '', 'HAMDI IQBAL RIDWANI', 'SITUBONDO', '24-5-2004', 'Laki-laki', 'Kalimas', 'Besuki', 'KAB. SITUBONDO', 'Jawa Timur', 'XI', 'SMK', '3', 'A', 'Sunan Kalijogo', 'Kalijogo 01', 'HODRIYANTO', 'HARTINI', '085257771628', '20171152', '', '-----6--8-', 2, 0, 'Y'),
(146, 20171159, '', '', 'IMAM JALALUDIN ', 'PROBOLINGGO', '11-7-2005', 'Laki-laki', 'Krampilan', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'B', 'Sunan Maulana Malik Ibrahim', 'Malik 02', 'ABD BASID', 'HERLIN', '082331331118', '20171159', '', '-----6--8-', 2, 2, 'Y'),
(147, 20171160, '', '', 'KALIMULLAH', 'PROBOLINGGO', '25-8-2004', 'Laki-laki', 'Jambangan', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 03', 'ARIF SUBIANTO', 'IMROATUL HASANAH ', '082734206777', '20171160', '', '--3---6-7-8-', 2, 0, 'Y'),
(148, 20171161, '', '', 'KHOLILULLAH', 'PROBOLINGGO ', '25-8-2004', 'Laki-laki', 'Jambangan', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 03', 'ARIF SUGIANTORO', 'IMROATUL HASANAH', '082734206777', '20171161', '', '--3---6-7-8-', 2, 0, 'Y'),
(149, 20171153, '', '', 'M ALFA HOSEN', 'PROBOLINGGO', '31-7-2005', 'Laki-laki', 'Sebaung', 'Gending', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'B', 'Sunan Ampel', 'Ampel 02', 'MUHAMMAD HOSEN', 'ROCHMAWATI', '085233049072', '20171153', '', '-----6-7-8-', 2, 0, 'Y'),
(150, 20171169, '', '', 'M. HABIBULLAH ', 'PROBOLINGGO', '13-3-2005', 'Laki-laki', 'Petunjungan', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 02', 'ALM.ABDUR KADIR', 'HOLISATUN HASANAH', '081246843532', '20171169', '', '--3---6--8-', 1, 3, 'Y'),
(151, 20171171, '', '', 'M. RIZQI KAMIL RAMADHANI', 'PROBOLINGGO', '21-10-2004', 'Laki-laki', 'Mojolegi', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'A', 'Sunan Giri', 'Giri 03', 'MOH RIDHO\'I', 'SUTRIATI', '082299326445', '20171171', '', '-----6--8-', 2, 0, 'Y'),
(152, 20201146, '', '', 'MOH. IRFAN MAULANA', 'PROBOLINGGO', '16-8-2004', 'Laki-laki', 'Sogaan', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XII A', 'SMK', '1', 'C', 'Sunan Ampel', 'Ampel 01', 'MOH. MAKSUM', 'NIWATI', '082265129413', '20201146', '20201146.jpg', '-----6--8-', 2, 0, 'Y'),
(153, 20171162, '', '', 'MOH.ABDILLAH ZAINUL QURRY', 'PROBOLINGGO', '18-5-2005', 'Laki-laki', 'Sindetlami', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '5', 'A', 'Sunan Giri', 'Giri 03', 'ABD KAHAR', 'JAMILA', '085233197889', '20171162', '', '-----6-7-8-', 2, 0, 'Y'),
(154, 20171163, '', '', 'MOH.KHOLILUL.HAMDANI', 'PROBOLINGGO', '22-7-2005', 'Laki-laki', 'Mojolegi', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '5', 'A', 'Sunan Giri', 'Giri 03', 'IS MAIL', 'SITI AISYAH', '085233735352', '20171163', '20171163.png', '-----6--8-', 2, 0, 'Y'),
(155, 20171150, '', '', 'MOHAMMMAD NASIRUDDIN', 'PROBOLINGGO', '29-7-2005', 'Laki-laki', 'Randujalak', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '5', 'A', 'Sunan Giri', 'Giri 03', 'HASANUDDIN', 'LU UL MUTAWARIKA', '085231645328', '20171150', '', '-----6--8-', 2, 0, 'Y'),
(156, 20201143, '', '', 'MUH.RIFKI ZAMZAMI', 'PROBOLINGGO', '16-1-2005', 'Laki-laki', 'Jatiurip', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'B', 'Sunan Ampel', 'Ampel 02', 'MUKHTAR', 'MUTMAINNATUL QULUB', '085258840722', '20201143', '', '--3---6--8-', 2, 3, 'Y'),
(157, 20171154, '', '', 'MUHAMMAD AIDIL MAKMUN', 'PRBOLINGGO', '9-6-2005', 'Laki-laki', 'Alassumur Kulon', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'SURATNO ', 'YUMYATI', '085258895120', '20171154', '', '-----6--8-', 2, 0, 'Y'),
(158, 20171164, '', '', 'MUHAMMAD HENDRA FEBRIANTO', 'PROBOLINGGO', '6-2-2004', 'Laki-laki', 'Sumber Wetan', 'Kedopak', 'KOTA PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'B', 'Sunan Drajat', 'Drajat 02', 'ASES', 'SARIPA', '082330444213', '20171164', '', '-----6-7-8-', 4, 2, 'Y'),
(159, 20171165, '', '', 'NAUVAL SYA\'BANI IBNU FAHLAN', 'PROBOLINGGO', '16-9-2004', 'Laki-laki', 'Kebonagung', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '3', 'A', 'Sunan Kudus', 'Kudus 03', 'MISLAN', 'MUSRIFAH', '085204616894', '20171165', '', '-----6--8-', 2, 0, 'Y'),
(160, 20171166, '', '', 'RIF\'AN ULIL ABSHOR', 'PROBOLINGGO', '17-8-2004', 'Laki-laki', 'Nogosaren', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 03', 'BIHARUDIN', 'DEWI ERFITA ', '081334528428', '20171166', '20171166.jpg', '-----6--8-', 2, 0, 'Y'),
(161, 20171155, '', '', 'RONALD BUDI ABDUL WAHID', 'PROBOLINGGO', '9-11-2005', 'Laki-laki', 'Pesawahan', 'Tiris', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 03', 'AHMAD BUDI IRWANTO', 'DEWI ARINTA', '082146093044', '20171155', '20171155.jpg', '-----6--8-', 2, 0, 'Y'),
(163, 20201145, '', '', 'SODIKUL HAKKI', 'PROBOLINGGO', '3-5-2006', 'Laki-laki', 'Jatiurip', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '1', 'A', 'Sunan Ampel', 'Ampel 04', 'MUHAMMAD', 'ASMUNA', '085233050264', '20201145', '', '-----6--8-', 2, 0, 'Y'),
(164, 20171168, '', '', 'SYAIFULLAH', 'PROBOLINGGO', '20-4-2004', 'Laki-laki', 'Jabungsisir', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', '4', 'B', 'Sunan Kudus', 'Kudus 03', 'JUPRI SUGIANTO', 'TUTIK RAHMATUL MAULA', '082332861210', '20171168', '', '-----6--8-', 2, 0, 'Y'),
(195, 20181206, '', '', 'A.RIZQI MAULANA', 'PROBOLINGGO', '16-4-2006', 'Laki-laki', 'Mojolegi', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '3', 'B', 'Sunan Giri', 'Giri 01', 'SUGENG', 'UMI SALAMA', '082336370978', '20181206', '', '-----6--8-', 2, 0, 'Y'),
(197, 20181208, '', '', 'ACH. ROZAAN DESTIANTO', 'PROBOLINGGO', '22-12-2004', 'Laki-laki', 'Ketapang', 'Kademangan', 'KOTA PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '4', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'BUDI SAMPURNO', 'HENY NOVIANITA', '081231452525', '20181208', '', '-----6--8-', 2, 0, 'Y'),
(198, 20181209, '', '', 'ASFIAN HASAN MASSYAD ', 'PROBOLINGGO', '30-4-2006', 'Laki-laki', 'Sidomukti', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '4', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'MOH. TAUFIKIL A.', 'ASTRI IVO A.', '085756706914', '20181209', '', '-----6--8-', 2, 0, 'Y'),
(201, 20181212, '', '', 'IQBAL ALALLAH ', 'PROBOLINGGO', '25-3-2006', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 02', 'GITO', 'AMINA', '085230101963', '20181212', '', '-----6--8-', 2, 0, 'Y'),
(202, 20181213, '', '', 'IRFAN MAULANA', 'PROBOLINGGO', '10-3-2005', 'Laki-laki', 'Gunggungan Lor', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 01', 'TAUFIQ', 'AMINAH', '085258794802', '20181213', '', '-----6--8-', 2, 0, 'Y'),
(208, 20181219, '', '', 'M.QOMARIZ ZAMAN ', 'PROBOLINGGO', '17-12-2006', 'Laki-laki', 'Kregenan', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 02', 'HUSNI', 'SITI ROHMATUL JANNAH', '082332568184', '20181219', '', '-----6--8-', 2, 0, 'Y'),
(209, 20181220, '', '', 'MOCH.HILMI HIDAYATULLAH ', 'PROBOLINGGO', '16-7-2006', 'Laki-laki', 'Rangkang', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'B', 'Sunan Kalijogo', 'Kalijogo 02', 'AHMAD', 'SITI MAIMUNAH', '082140496184', '20181220', '', '-----6--8-', 2, 0, 'Y'),
(212, 20181223, '', '', 'MUH YUSRON KARIM', 'PROBOLINGGO', '18-2-2006', 'Laki-laki', 'Karanganyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 03', 'SAIFUDDIN', 'SUBAIRIYAH', '082985809423', '20181223', '', '-----6--8-', 2, 0, 'Y'),
(213, 20181224, '', '', 'MUHAMMAD AFINI MAULANA', 'PROBOLINGGO', '19-9-2005', 'Laki-laki', 'Kandang Jati Kulon', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 02', 'HAMSIN', 'SUNARSIH', '085257625932', '20181224', '', '-----6--8-', 2, 0, 'Y'),
(218, 20181229, '', '', 'ZAKARIA  MAULANA ZAINI', 'PROBOLINGGO', '19-2-2006', 'Laki-laki', 'Krampilan', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 03', 'ZAINUDDIN', 'SRI TRISNANI', '085230217225', '20181229', '', '-----6--8-', 2, 0, 'Y'),
(222, 20181234, '', '', 'RENDRA', 'PROBOLINGGO', '16-1-2006', 'Laki-laki', 'Brabe', 'Maron', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 02', 'SHOLEH', 'YUYUN', '08533065102', '20181234', '', '-----6--8-', 2, 0, 'Y'),
(223, 20181235, '', '', 'AHMAD FARUQ JUFRIYADI', 'SITUBONDO', '29-1-2006', 'Laki-laki', 'Sumberejo', 'Besuki', 'KAB. SITUBONDO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Ampel', 'Ampel 02', 'SLAMET SUNARYO', 'SUMIYATI', '082260127565', '20181235', '', '-----6--8-', 2, 0, 'Y'),
(230, 20181242, '', '', 'M. ROBERT ROBBANI', 'PROBOLINGGO', '17-7-2006', 'Laki-laki', 'Sukodadi', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '4', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 01', 'ENDANG ROCHMAN', 'LILIK FAUZIYAH', '085236069375', '20181242', '', '-----6--8-', 2, 0, 'Y'),
(241, 20181253, '', '', 'ABU BAKAR', 'PROBOLINGGO ', '24-9-2006', 'Laki-laki', 'Krucil', 'Krucil', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '4', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'SAIFUL BAHRI', 'IHSANI AYULESTARI', '-', '20181253', '', '-----6--8-', 2, 0, 'Y'),
(242, 20181254, '', '', 'ACHMAD AFIN AFANDI', 'PROBOLINGGO', '11-11-2005', 'Laki-laki', 'Randumerak', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '3', 'A', 'Sunan Giri', 'Giri 02', 'SYAIFUL HAQ', 'HINDUN NAFISAH', '085236153097', '20181254', '', '-----6--8-', 2, 0, 'Y'),
(243, 20181255, '', '', 'AHMAD FAISOL', 'PROBOLINGGO', '5-1-2006', 'Laki-laki', 'Krobungan', 'Krucil', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Kudus', 'Kudus 02', 'ABD.AZIZ', 'UMMI KULSUM', '08', '20181255', '20181255.jpg', '-----6--8-', 2, 0, 'Y'),
(246, 20181258, '', '', 'ANDIKA RESTU SETIAWAN', 'SITUBONDO ', '18-1-2006', 'Laki-laki', 'Selomukti', 'Mlandingan', 'KAB. SITUBONDO', 'Jawa Timur', 'X B', 'SMK', '3', 'B', 'Sunan Ampel', 'Ampel 03', 'HAIRUL WARA', 'NUR AINI', '085349387490', '20181258', '', '-----6--8-', 2, 0, 'Y'),
(247, 20181259, '', '', 'BABUR RAHMAN', 'PROBOLINGGO ', '26-8-2006', 'Laki-laki', 'Duren', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '4', 'A', 'Sunan Kudus', 'Kudus 01', 'ABD SENIN', 'SULASTRI', '085330112147', '20181259', '', '-----6--8-', 2, 0, 'Y'),
(248, 20181260, '', '', 'DZULKIFLI', 'PROBOLINGGO ', '20-4-2006', 'Laki-laki', 'Alaskandang', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Ampel', 'Ampel 02', 'MASTO', 'SOFIATUN', '082333820532', '20181260', '', '--3---6--8-', 2, 0, 'Y'),
(249, 20181261, '', '', 'HAMDAN AQIL HAFIDHI ', 'PROBOLINGGO', '10-6-2006', 'Laki-laki', 'Sambirampak Lor', 'Kotaanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '3', 'A', 'Sunan Kudus', 'Kudus 02', 'ABD.YAZID', 'MUSYAROFAH', '085334504095', '20181261', '', '-----6--8-', 2, 0, 'Y'),
(250, 20181262, '', '', 'M. SHOLEHUDDIN', 'PROBOLINGGO', '22-9-2003', 'Laki-laki', 'Jabungsisir', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'A', 'Sunan Kudus', 'Kudus 03', 'ALIMAKKI', 'HASANAH', '085230588009', '20181262', '', '--3---6--8-', 2, 0, 'Y'),
(251, 20181263, '', '', 'M.ARIF HIDAYATULLAH', 'PROBOLINGGO', '13-11-2005', 'Laki-laki', 'Krucil', 'Krucil', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Maulana Malik Ibrahim', 'Malik 02', 'HERUDDIN', 'MILA AN', '085257795442', '20181263', '', '-----6--8-', 2, 0, 'Y'),
(256, 20181268, '', '', 'MOH MOHTAR HELMI', 'PROBOLINGGO', '8-5-2006', 'Laki-laki', 'Rangkang', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'A', 'Sunan Ampel', 'Ampel 01', 'MOH BUSAR', 'SUMILA', '082338621004', '20181268', '', '-----6--8-', 2, 0, 'Y'),
(257, 20181269, '', '', 'MOH.FARUQ ARROZI', 'PROBOLINGGO', '9-6-2006', 'Laki-laki', 'Sukokerto', 'Pejarakan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '4', 'A', 'Sunan Giri', 'Giri 02', 'EDI SUNOKO', 'SITI ROMLAH', '085024575971', '20181269', '', '--3---6--8-', 2, 0, 'Y'),
(259, 20181271, '', '', 'MOH.ROMZI ZIDNI', 'PROBOLINGGO', '7-11-2006', 'Laki-laki', 'Klenanglor', 'Banyuanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 03', 'SAMSUL HUDA', 'FA\'IDAH', '082245601160', '20181271', '20181271.jpg', '-----6--8-', 2, 0, 'Y'),
(260, 20181272, '', '', 'MOHAMAD SALMAN ALFARISY', 'PROBOLINGGO', '4-8-2005', 'Laki-laki', 'Kraksaan Wetan', 'Kraksaan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '2', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 03', 'MOH YUSUF', 'SULAIHAKKI', '082244840425', '20181272', '', '-----6--8-', 4, 2, 'Y'),
(261, 20181273, '', '', 'MOHAMMAD ALEX FIRROHMAN', 'PROBOLINGGO', '8-8-2005', 'Laki-laki', 'Sogaan', 'Pakuniran', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 01', 'SUBHAN', 'SUMIATI', '085204858295', '20181273', '20181273.jpg', '--3---6--8-', 2, 0, 'Y'),
(262, 20181274, '', '', 'MOHAMMAD IRHAM', 'PROBOLINGGO', '12-2-2006', 'Laki-laki', 'Alastengah', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', '2', 'C', 'Sunan Kudus', 'Kudus 02', 'ANWAR', 'LIFTININGSIH', '085606216276', '20181274', '', '-----6--8-', 2, 0, 'Y'),
(263, 20181275, '', '', 'MUHAMMAD NUR ISKANDAR', 'SITUBOND', '29-3-2006', 'Laki-laki', 'Blimbing', 'Besuki', 'KAB. SITUBONDO', 'Jawa Timur', 'X A', 'SMK', '3', 'A', 'Sunan Maulana Malik Ibrahim', 'Malik 02', 'MOH.HARIS', 'SUNDARI', '082335158273', '20181275', '20181275.jpg', '-----6--8-', 2, 0, 'Y'),
(266, 20181278, '', '', 'ZAINUL HASAN', 'PROBOLINGGO', '22-4-2005', 'Laki-laki', 'Jabungsisir', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', '3', 'B', 'Sunan Kudus', 'Kudus 03', 'ALIMAKKI', 'HASANAH', '085230588009', '20181278', '20181278.jpg', '--3---6--8-', 2, 0, 'Y'),
(1274, 20211087, '3513152004040003', '3513152201060075', 'AHMAD FIRDAUS', 'PROBOLINGGO', '20-4-2006', 'Laki-laki', 'Duwuhan', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'A', 'Sunan Gunung Jati', 'Jati 02', 'ABD ADIM', 'NUR JANNAH', '082311131197', '', '', '----5---8-', 4, 3, 'Y'),
(1401, 20211233, '6409042206060001', '6406042804070024', 'RIFQI FADIL', 'PENAJAM PASER UTARA', '22-6-2006', 'Laki-laki', 'Sepaku', 'Sepaku', 'KAB. PENAJAM PASER UTARA', 'Kalimantan Timur', 'X A', 'SMK', 'Idad', 'D', 'Sunan Gunung Jati', 'Jati 03', 'SUTRISNO', 'SULFIYANI', '085204848014', '', '', '----5---8-', 2, 0, 'Y'),
(1418, 20211252, '3513122802060002', '3513122709070001', 'SALMAN AL FARISI', 'PROBOLINGGO ', '28-2-2006', 'Laki-laki', 'Sumberanyar', 'Paiton', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'C', 'Sunan Giri', 'Giri 01', 'SARITO', 'SUPIATI', '085235230995', '', '', '----5---8-', 2, 0, 'Y'),
(1468, 20211306, '3513092506050003', '3513090508080003', 'PUTRA KAILA RAMADHANI', 'PROBOLINGGO', '25-6-2005', 'Laki-laki', 'Duren', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', 'Idad', 'A', 'Sunan Ampel', 'Ampel 04', 'MUHAMMAD LATIF', 'SUMIATI', '081333975096', '', '', '----5---8-', 2, 0, 'Y'),
(1472, 20211310, '3513090107020056', '3513091211056988', 'MOH. ARIFIN', 'PROBOLINGGO', '1-7-2006', 'Laki-laki', 'Duren', 'Gading', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'C', 'Sunan Gunung Jati', 'Jati 01', 'NUR', 'KHOLIFAH', '082337329845', '', '', '----5---8-', 1, 0, 'Y'),
(1483, 20211320, '3513161705050002', '3513161711051319', 'FUDEL GOZALI', 'PROBOLINGGO', '17-5-2005', 'Laki-laki', 'Penambangan', 'Pejarakan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'C', 'Sunan Gunung Jati', 'Jati 01', ' SLAMET RIYADI', 'ERMAWATI', '085259522728', '', '', '----5---8-', 1, 0, 'Y'),
(1495, 20211333, '3513152706060003', '3513151611052321', 'ACH. RIZKY', 'PROBOLINGGO', '27-6-2006', 'Laki-laki', 'Duwuhan', 'Krejengan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', 'Idad', 'A', 'Sunan Gunung Jati', 'Jati 02', 'PURNOMO', 'MARFU\'AH', '081336709878', '', '', '----5---8-', 2, 0, 'Y'),
(1497, 20211335, '3513141208050002', '3513160610030007', 'AHMAD SYAUQI HIDAYAT', 'PROBOLINGGO', '12-8-2005', 'Laki-laki', 'Penambangan', 'Pejarakan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', 'Idad', 'A', 'Sunan Gunung Jati', 'Jati 02', 'MARKAM', 'HANIFAH', '08815020224', '', '', '----5---8-', 1, 0, 'Y'),
(1498, 20211337, '3513161901060001', '3513160206080002', 'FAREL KURNIAWAN', 'PROBOLINGGO', '19-1-2006', 'Laki-laki', 'Penambangan', 'Pejarakan', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', 'Idad', 'A', 'Sunan Gunung Jati', 'Jati 02', 'ALM. BUSAIRI', 'ALMH. TUTIK', '082319216340', '', '', '--3--5---8-', 1, 3, 'Y'),
(1518, 20211358, '3512020805040005', '3512022007100001', 'MUHAMMAD ZAINUL FARHAN', 'SITUBONDO', '9-5-2005', 'Laki-laki', 'Kalimas', 'Besuki', 'KAB. SITUBONDO', 'Jawa Timur', 'X B', 'SMK', 'Idad', 'F', 'Sunan Gunung Jati', 'Jati 04', 'MOMON', 'NONENG', '082145749519', '', '', '--3--5---8-', 2, 0, 'Y'),
(1520, 20211360, '3513181703050002', '3513181711051698', 'TAUFIK QURROHMAN', 'PROBOLINGGO', '17-3-2005', 'Laki-laki', 'Sebaung', 'Gending', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X A', 'SMK', 'Idad', 'B', 'Sunan Gunung Jati', 'Jati 04', 'ALI IMRON SARIYADI', 'GHONNIYAH', '082235906311', '', '', '----5---8-', 1, 0, 'Y'),
(1525, 20211366, '3513131801050001', '3513131411053955', 'NUR HADI IMAMUDDIN', 'PROBOLINGGO', '18-1-2005', 'Laki-laki', 'Besukagung', 'Besuk', 'KAB. PROBOLINGGO', 'Jawa Timur', 'XI', 'SMK', 'Idad', 'B', 'Sunan Ampel', 'Ampel 01', 'WIRYONO', 'NUR FATIMAH', '082264533996', '', '', '----5---8-', 2, 0, 'Y'),
(1528, 20211370, '3513061611050002', '3513061311080003', 'M. ARIEF AUFANI', 'PROBOLINGGO', '16-11-2005', 'Laki-laki', 'Klenangkidul', 'Banyuanyar', 'KAB. PROBOLINGGO', 'Jawa Timur', 'X B', 'SMK', 'Idad', 'B', 'Sunan Gunung Jati', 'Jati 04', 'BUKHORI', 'SUNNATUR ROHMA', '082330444247', '', '', '----5---8-', 2, 0, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_santri`
--
ALTER TABLE `tb_santri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_santri`
--
ALTER TABLE `tb_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1567;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
