-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 02:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmiiuninus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_image` varchar(100) DEFAULT NULL,
  `about_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_image`, `about_description`) VALUES
(1, 'about1.jpg', '<div xss=\"removed\" xss=removed><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">POROZ (Perkumpulan Organisasi Pengelola Zakat) adalah asosiasi lembaga pengelola zakat yang bersifat nirlaba dan independen, sebagai wadah berhimpun Lembaga Amil Zakat (LAZ), terutama yang berbasis organisasi masyarakat Islam. POROZ dideklarasikan pada Jumat, 9 Februari 2018, bertepatan dengan 23 Jumadil Awal 1439 Hijriyah. Saat ini POROZ berkedudukan atau sekretariat di Jl. Kramat Raya No.45, Kramat, Senen, Jakarta Pusat.</span></span></span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(1, 'Karya', 'articles'),
(2, 'Berita', 'news'),
(3, 'Agenda', 'opinion');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT current_timestamp(),
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text DEFAULT NULL,
  `comment_status` int(11) DEFAULT 0,
  `comment_parent` int(11) DEFAULT 0,
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(3, '2022-09-26 07:05:47', 'ray', 'a@gmail.com', 'ggwp kintil<br>', 1, 0, 13, 'user_blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gabung`
--

CREATE TABLE `tbl_gabung` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `home_caption_1` varchar(200) DEFAULT NULL,
  `home_caption_2` varchar(200) DEFAULT NULL,
  `home_bg_heading` varchar(50) DEFAULT NULL,
  `home_bg_testimonial` varchar(50) DEFAULT NULL,
  `home_bg_testimonial2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `home_caption_1`, `home_caption_2`, `home_bg_heading`, `home_bg_testimonial`, `home_bg_testimonial2`) VALUES
(1, 'Welcome to', 'Tingkatkan Pengetahuan dan Skil-mu bersama kami', 'hero-img3.JPG', 'IMG_20201205_120601-min_(1).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_massage` text DEFAULT NULL,
  `inbox_created_at` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `member_link` varchar(50) DEFAULT NULL,
  `member_desc` text DEFAULT NULL,
  `member_image` varchar(50) DEFAULT NULL,
  `member_created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `navbar_id` int(11) NOT NULL,
  `navbar_name` varchar(50) DEFAULT NULL,
  `navbar_slug` varchar(200) DEFAULT NULL,
  `navbar_parent_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`navbar_id`, `navbar_name`, `navbar_slug`, `navbar_parent_id`) VALUES
(1, 'Home', NULL, 0),
(2, 'Profil', 'about', 0),
(13, 'Edukasi', 'edu', 0),
(17, 'Contact', 'contact', 0),
(18, 'HTML Dasar', 'category/html-dasar', 13),
(19, 'CSS Dasar', 'category/css-dasar', 13),
(20, 'JavaScript Dasar', 'category/javascript-dasar', 13),
(21, 'PHP Dasar', 'category/php-dasar', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_contents` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT current_timestamp(),
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT 0,
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(2, 'PMII UNINUS warnai kampus dengan diskusi', 'Media menulis yang saat ini dapat mendukung hal tersebut pun sudah tidak terhitung, baik yang cetak maupun non cetak, segala bentuk platform sudah berkeliaran bebas serta dapat dinikmati oleh masyarakat tanpa batas. ', '<p style=\"text-align: justify; \">Telah dilaksanakan diskusi rutinan setiap minggu yang diselenggarakan oleh Pergerakan Mahasiswa Islam Indonesia komisariat Universitas Islam Nusantara Cabang Kota Bandung. Diskusi tersebut merupakan kegiatan yang digadang-gadang mampu meningkatkan produktivitas mahasiswa untuk dapat menghadapi bonus demografi ke depan.</p><p style=\"text-align: justify; \"><br></p>', '8e3184f7ee997218bde6207100a81b22.jpg', '2022-08-22 17:44:23', NULL, 2, 'pmii,pmiimendunia,kemahasiswaan,kebangsaan,pemuda', 'e-koran-media-komunis-wadah-menulis-untuk-aktivis', 1, 5, 5),
(3, 'Perlunya Edukasi ASWAJA, PMII UNINUS Adakan Ngaji Mingguan', 'Kader PCI PMII Jerman mengatakan bahwa penyelenggaraan Ngaji Media ini merupakan bentuk upaya meningkatkan kecerdasan dalam bermedia sosial. ', '<p style=\"text-align: justify; \">Pergerakan Mahasiswa Islam Indonesia (PMII) Komisariat Universitas Islam Nusantara telah mengadakan Ngaji Mingguan.&nbsp;</p>', '75e2265b18c01f5c899a856a237afeb3.jpg', '2021-10-22 17:46:21', NULL, 2, 'pmii,keindonesiaan,keislaman,kemahasiswaan,kebangsaan', 'perlunya-edukasi-media--pmii-iain-pontianak-adakan-ngaji-media', 1, 4, 4),
(4, 'PMII UNINUS Kupas Tuntas Studi Gender', '', '<p style=\"text-align: justify; \">Kajian tentang studi gender selalu menjadi pembahasan yang tidak terlupakan oleh Pergerakan Mahasiswa Islam Indonesia, khususnya di PMII UNINUS. Dalam kegiatan ini PMII menyuarakan kepada mahasiswa agar tidak perlu takut lagi terhadap tindak kekerasan seksual khususnya di wilayah kampus dengan menegakan UU TPKS.</p>', '02cb51b183b493726ef2481c83d43f50.jpg', '2022-05-31 14:26:54', NULL, 3, 'pmii,kemahasiswaan', 'pmii-maju', 1, 4, 6),
(5, 'MAPABA Menjadi Gerbang Awal Ber-PMII', '', '', '36690594b6a7c32fe37d10b25cf20442.jpg', '2022-06-02 13:47:48', NULL, 3, 'pmii,kemahasiswaan,pemuda', 'bukber-bersama', 1, 1, 6),
(6, 'PMII UNINUS kawal Muspimcab', '', '', '122ed33bd05785c91afd24235daec5a0.jpg', '2022-09-13 16:50:35', NULL, 2, 'pmii', 'pmii-uninus-kawal-muspimcab', 1, 1, 1),
(7, 'Adakan Pelatihan Desain, PMII UNINUS Mendunia', '', '', '4a38b1c25458729e68c6967dbcb6a337.jpg', '2022-09-13 16:52:00', NULL, 1, 'pmii', 'karya-tulis', 1, 0, 1),
(8, 'PMII UNINUS Gelar Kajian Kenaikan BBM', '', '', '3f66f90756c16b45383b3929ee803ec1.jpg', '2022-09-13 17:01:23', NULL, 3, 'pmii,keindonesiaan,kemahasiswaan,kebangsaan', 'pmii-uninus-gelar-diskusi-', 1, 0, 1),
(9, 'Diskusi Pekan Kreasi Mahasiswa, PMII UNINUS Garda Kemajuan Bangsa', '', '', 'c16f570e580e0f2cea6aeb48121b163a.jpg', '2022-09-13 17:35:22', NULL, 1, 'pmii', 'diskusi-pekan-kreasi-mahasiswa--pmii-uninus-garda-kemajuan-bangsa', 1, 0, 1),
(10, 'PMII UNINUS Gelar Aksi Tolak Kenaikan BBM', '', '', 'c0e2d3e81c32ab6517bfec39c4fdcfe7.jpg', '2022-09-13 17:44:21', NULL, 1, 'pmii', 'pmii-uninus-gelar-aksi-tolak-kenaikan-bbm', 1, 2, 1),
(13, 'anjy', '', '<p>gasss<br></p>', 'd9304396c44e3a80ff03534e00e83978.JPG', '2022-09-26 07:05:08', NULL, 2, 'pmiimedia', 'anjy', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT current_timestamp(),
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(76, '2020-07-28 16:21:13', '::1', 21),
(77, '2020-10-20 16:54:43', '::1', 21),
(78, '2020-11-14 13:44:03', '::1', 21),
(79, '2020-11-15 18:46:15', '::1', 21),
(80, '2020-11-16 05:45:04', '::1', 18),
(81, '2020-11-16 15:05:16', '::1', 20),
(82, '2020-11-16 15:43:04', '::1', 19),
(83, '2020-11-16 17:05:16', '::1', 20),
(84, '2020-11-16 17:05:24', '::1', 21),
(85, '2020-11-16 18:05:02', '::1', 19),
(86, '2020-11-16 18:29:45', '::1', 18),
(87, '2020-11-17 03:20:38', '::1', 22),
(88, '2020-11-21 05:27:58', '::1', 22),
(89, '2020-11-21 05:34:10', '::1', 18),
(90, '2020-11-21 06:15:43', '::1', 19),
(91, '2020-11-21 06:38:27', '::1', 20),
(92, '2020-11-21 17:00:55', '::1', 22),
(93, '2020-11-21 17:03:12', '::1', 18),
(94, '2020-11-21 17:40:27', '::1', 21),
(95, '2020-11-22 10:34:32', '::1', 19),
(96, '2020-11-22 11:42:07', '::1', 20),
(97, '2021-07-01 13:40:40', '::1', 22),
(98, '2021-07-01 14:02:35', '::1', 21),
(99, '2021-07-02 06:22:44', '::1', 21),
(100, '2021-07-03 06:07:16', '::1', 22),
(101, '2021-07-03 06:31:25', '::1', 21),
(102, '2021-07-03 13:40:24', '::1', 18),
(103, '2021-07-03 13:40:52', '::1', 19),
(104, '2021-07-03 15:23:26', '::1', 20),
(105, '2021-07-03 17:02:54', '::1', 22),
(106, '2021-07-03 17:11:15', '::1', 20),
(107, '2021-07-03 17:14:33', '::1', 21),
(108, '2021-07-04 04:41:56', '::1', 19),
(109, '2021-07-04 05:00:05', '::1', 18),
(110, '2021-07-04 09:45:57', '::1', 23),
(111, '2021-07-04 10:36:53', '::1', 24),
(112, '2021-07-04 10:38:58', '::1', 25),
(113, '2021-07-04 10:51:42', '::1', 26),
(114, '2021-07-04 10:52:29', '::1', 27),
(115, '2021-07-04 11:07:30', '::1', 29),
(116, '2021-07-04 11:22:43', '::1', 30),
(117, '2021-07-04 11:23:08', '::1', 28),
(118, '2021-07-07 09:18:27', '::1', 30),
(119, '2021-07-07 10:12:18', '::1', 27),
(120, '2021-07-07 10:19:01', '::1', 25),
(121, '2021-07-24 14:21:43', '::1', 30),
(122, '2021-07-24 16:33:33', '::1', 28),
(123, '2021-07-26 13:17:09', '::1', 30),
(124, '2021-07-26 15:42:11', '::1', 27),
(125, '2021-07-26 15:52:11', '::1', 25),
(126, '2021-07-26 16:01:51', '::1', 23),
(127, '2021-07-26 16:10:44', '::1', 29),
(128, '2021-07-26 17:36:25', '::1', 33),
(129, '2021-07-26 17:42:10', '::1', 31),
(130, '2021-07-27 03:18:13', '::1', 32),
(131, '2021-07-27 03:20:08', '::1', 28),
(132, '2021-07-27 03:20:32', '::1', 24),
(133, '2021-07-29 10:35:41', '::1', 32),
(134, '2021-07-29 11:06:55', '::1', 33),
(135, '2021-07-29 11:07:47', '::1', 24),
(136, '2021-07-29 11:07:59', '::1', 23),
(137, '2021-07-30 10:21:56', '::1', 28),
(138, '2021-07-30 10:28:44', '::1', 33),
(139, '2021-07-30 10:29:02', '::1', 23),
(140, '2021-07-30 11:42:20', '::1', 31),
(141, '2021-07-30 17:13:03', '::1', 33),
(142, '2021-08-18 17:03:58', '::1', 33),
(143, '2021-08-31 18:35:19', '::1', 33),
(144, '2021-09-04 17:07:00', '::1', 33),
(145, '2021-10-22 15:12:33', '::1', 32),
(146, '2021-10-22 15:50:21', '::1', 33),
(147, '2021-10-22 16:17:10', '::1', 24),
(148, '2021-10-22 17:48:56', '::1', 3),
(149, '2021-10-22 17:50:40', '::1', 2),
(150, '2021-11-15 15:22:53', '::1', 2),
(151, '2022-05-31 14:41:59', '::1', 4),
(152, '2022-06-02 13:49:07', '::1', 5),
(153, '2022-08-31 19:44:51', '::1', 4),
(154, '2022-08-31 19:52:49', '::1', 3),
(155, '2022-09-02 14:52:55', '::1', 4),
(156, '2022-09-13 09:02:39', '::1', 2),
(157, '2022-09-13 15:40:38', '::1', 1),
(158, '2022-09-13 15:41:36', '::1', 3),
(159, '2022-09-13 15:41:54', '::1', 4),
(160, '2022-09-14 03:09:43', '::1', 10),
(161, '2022-09-14 03:12:54', '::1', 2),
(162, '2022-09-14 15:14:46', '::1', 3),
(163, '2022-09-17 10:19:51', '::1', 11),
(164, '2022-09-18 18:54:36', '::1', 11),
(165, '2022-09-20 02:45:51', '127.0.0.1', 2),
(166, '2022-09-25 15:40:11', '127.0.0.1', 12),
(167, '2022-09-26 04:51:49', '127.0.0.1', 6),
(168, '2022-09-26 07:05:19', '127.0.0.1', 13),
(169, '2022-09-26 12:18:13', '127.0.0.1', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_favicon` varchar(50) DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_logo_big` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL,
  `site_wa` varchar(15) DEFAULT NULL,
  `site_mail` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_favicon`, `site_logo_header`, `site_logo_footer`, `site_logo_big`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`, `site_wa`, `site_mail`) VALUES
(2, 'PMII RAFTEK', 'Pengurus Rayon Pergerakan Mahasiswa Islam Indonesia', 'Website Resmi Pengurus Rayon PMII Teknik Komisariat UNINUS', 'favicon1.png', 'apple-touch-icon2.png', 'favicon.png', 'logobig.jpg', 'https://www.facebook.com/pmiiteknik_uninus', 'https://twitter.com/pmiiteknik_uninus', 'https://www.instagram.com/pmiiteknik_uninus', 'Jl. Binong Jati No. 200, Kec. Batununggal, Kota Bandung', 'https://www.linkedin.com/in/pmiiteknik_uninus', '0878823966955', 'pmiirayonteknik06@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe`
--

CREATE TABLE `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT current_timestamp(),
  `subscribe_status` int(11) DEFAULT 0,
  `subscribe_rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscribe`
--

INSERT INTO `tbl_subscribe` (`subscribe_id`, `subscribe_email`, `subscribe_created_at`, `subscribe_status`, `subscribe_rating`) VALUES
(1, 'pandu@gmail.com', '2022-08-31 19:22:45', 1, 0),
(2, 'firdaus.nur1986@gmail.com', '2022-09-02 14:51:59', 1, 0),
(3, 'asrirahayu11211@gmail.com', '2022-09-14 03:10:28', 1, 0),
(4, 'andi@gmail.com', '2022-09-14 03:23:31', 0, 0),
(5, 'nasrul@gmail.com', '2022-09-14 14:25:39', 1, 0),
(6, 'bai@gmail.com', '2022-09-14 14:53:47', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'pmii'),
(2, 'pmiidev'),
(3, 'pmiimedia'),
(4, 'pmiimaju'),
(7, 'pmiimendunia'),
(8, 'keindonesiaan'),
(9, 'keislaman'),
(10, 'kemahasiswaan'),
(11, 'kebangsaan'),
(12, 'pemuda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) DEFAULT NULL,
  `team_org` varchar(50) DEFAULT NULL,
  `team_content` text DEFAULT NULL,
  `team_image` varchar(50) DEFAULT NULL,
  `team_twitter` varchar(50) DEFAULT NULL,
  `team_facebook` varchar(50) DEFAULT NULL,
  `team_instagram` varchar(50) DEFAULT NULL,
  `team_linked` varchar(50) DEFAULT NULL,
  `team_created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`team_id`, `team_name`, `team_org`, `team_content`, `team_image`, `team_twitter`, `team_facebook`, `team_instagram`, `team_linked`, `team_created_at`) VALUES
(1, 'Agil Abdul Ghani', 'Ketua Rayon', '', '6a1536aaab03de7d5962e2f200a85ea6.png', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 09:37:35'),
(2, 'Muhamad Rizal Alfarizi', 'Wakil Ketua ', '', 'bec9a0ffcf6510ecb674a41fbeca2090.png', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 09:38:56'),
(3, 'Alam Maulana', 'Sekretaris', '', '3d8c90622444478edb4f6243d951c2fc.png', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 09:51:25'),
(4, 'Ilyas Khoirul Alimnis', 'Wakil Sekretaris', '', '8334a4a3c3522da5848cfcd904cf991e.png', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 09:52:29'),
(5, 'Ayu Sri Rahayu', 'Bendahara', '', '57b09176ff076a9280acc3d6c68978f3.jpg', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 10:04:27'),
(6, 'Dina Gricela', 'Wakil Bendahara', '', '9befe2b9ba3b7587f0ed5410ecf7c74c.png', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 10:05:31'),
(7, 'Astri Nurazizah', 'Biro Kaderisasi Dan Pengembangan Organisasi/PAO', '', 'f78202759ef82b0a9a62885b915991a5.jpg', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 10:05:59'),
(8, 'Fajar A Gita', 'Biro Jarpolkam', '', '9945179812b9b940c887e31a0fb09cfe.jpg', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 10:06:34'),
(9, 'Annisa Nurfitria', 'Biro Nalar Dan Intelektual ', '', '3986d3e196901e10955eb8db8031d019.jpg', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2021-08-10 10:07:00'),
(10, 'Mulki Sulaeman', 'Biro Dakwah Dan Kajian Islam', '', '6ae250a55d9563267b437c02a2963a3f.jpg', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2022-09-26 06:46:34'),
(11, 'Rifqi Munawar Ridwan', 'Lembaga Media ', '', '2f33ea9095970e7c6a8488b790cb5c13.JPG', 'https://twitter.com/', 'https://facebook.com/', 'https://www.instagram.com/rifqi_munawar/', 'https://www.tiktok.com/@rifqi_munawar', '2022-09-26 06:50:35'),
(12, 'Ridwan Nurdiansyah', 'Lembaga Pengembangan Minat Dan Bakat', '', 'a31861cd2351476f3e6abff7f1df91d1.JPG', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', '2022-09-26 06:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `testimonial_name` varchar(50) DEFAULT NULL,
  `testimonial_org` varchar(50) DEFAULT NULL,
  `testimonial_content` text DEFAULT NULL,
  `testimonial_image` varchar(50) DEFAULT NULL,
  `testimonial_created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`testimonial_id`, `testimonial_name`, `testimonial_org`, `testimonial_content`, `testimonial_image`, `testimonial_created_at`) VALUES
(1, 'Angga Nugraha', 'PR PMII Teknik', 'PMII telah memadukan potensi jaringan antar pengelola organisasi untuk menjadi kekuatan yang menyatukan strategi pemberdayaan melalui kaderisasi.', '3ff07ca20e7acd5ca7bff893ac043c68.png', '2021-07-30 09:48:07'),
(2, 'Tan Sukma', 'PR PMII Saintek', 'Gerakan kami untuk mendorong berbagai  usaha pengembangan ekonomi produktif yang berkelanjutan. Melakukan upaya pengembangan SDM dalam bidang pengelolaan UMKM.', 'e497eda35658c5984707fa25eb945b8e.png', '2021-07-30 09:57:52'),
(3, 'Edi Muktiono', 'PR PMII Eksakta', 'PMII membangun jaringan dan kerjasama guna membangun hubungan aspiratif dengan pemerintah. Dengan kerjasama yang baik dengan pengelola gerakan nasional dan internasional.', '0cbf1a5492b39e3a92288117f8487eb5.png', '2021-07-30 10:02:22'),
(4, 'Dewi Sri', 'PR PMII Algoritma', 'Ikhtiar kami untuk mewujudkan organisasi pengelola rayon yang transparan, amanah dan profesional untuk meningkatkan taraf kehidupan masyarakat yang sejahtera.', '0082e8fdb74eb6c977c3aa25bd45418f.png', '2021-07-30 10:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(1, 'pmiiuninus', 'pkpmiiuninus.official@gmail.com', 'c650f91b92359af1e6c42d88e944cc36', '', '1', 'logokomi.png'),
(5, 'Admin Dev', 'admin@gmail.com', 'c650f91b92359af1e6c42d88e944cc36', '1', '1', '225fc323cfd8ddae21b10991a6468916.png'),
(6, 'PMII UNINUS', 'pmiiuninus@gmail.com', 'c650f91b92359af1e6c42d88e944cc36', '1', '1', '313336989c4723d1938733e9fb9e8012.png'),
(7, 'rifqi', 'rifqi@gmail.com', '72561baf6079c338cc2dd68e98d52055', '2', '1', 'c90074420a16625ae59342bf0decc792.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT current_timestamp(),
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-05-08 02:07:09', '::1', 'Chrome'),
(541342, '2019-05-21 05:55:14', '::1', 'Firefox'),
(541343, '2019-08-28 07:08:22', '::1', 'Firefox'),
(541344, '2019-12-17 06:04:57', '::1', 'Firefox'),
(541345, '2019-12-18 01:34:25', '::1', 'Firefox'),
(541346, '2019-12-19 02:21:23', '::1', 'Firefox'),
(541347, '2019-12-20 07:47:00', '::1', 'Firefox'),
(541348, '2019-12-28 02:58:34', '::1', 'Firefox'),
(541349, '2019-12-29 08:48:39', '::1', 'Firefox'),
(541350, '2019-12-30 03:24:04', '::1', 'Firefox'),
(541351, '2019-12-31 02:47:15', '::1', 'Firefox'),
(541352, '2020-01-01 02:24:55', '::1', 'Firefox'),
(541353, '2020-01-02 01:58:25', '::1', 'Firefox'),
(541354, '2020-01-03 03:15:30', '::1', 'Firefox'),
(541355, '2020-01-04 03:31:49', '::1', 'Firefox'),
(541356, '2020-01-05 06:58:35', '127.0.0.1', 'Firefox'),
(541357, '2020-01-06 06:03:25', '::1', 'Firefox'),
(541358, '2020-01-07 00:57:59', '::1', 'Firefox'),
(541359, '2020-01-08 05:53:44', '::1', 'Firefox'),
(541360, '2020-01-12 04:18:15', '::1', 'Firefox'),
(541361, '2020-01-27 13:54:20', '::1', 'Chrome'),
(541362, '2020-01-27 17:03:12', '::1', 'Chrome'),
(541363, '2020-01-29 06:16:34', '::1', 'Chrome'),
(541364, '2020-01-29 17:07:41', '::1', 'Chrome'),
(541365, '2020-02-01 07:10:48', '::1', 'Chrome'),
(541366, '2020-02-08 04:10:12', '::1', 'Chrome'),
(541367, '2020-03-23 11:34:09', '::1', 'Chrome'),
(541368, '2020-04-10 16:29:23', '::1', 'Chrome'),
(541369, '2020-04-11 13:57:38', '::1', 'Chrome'),
(541370, '2020-04-16 06:37:49', '::1', 'Chrome'),
(541371, '2020-04-20 12:31:53', '::1', 'Chrome'),
(541372, '2020-07-11 13:37:15', '::1', 'Chrome'),
(541373, '2020-07-27 10:39:05', '::1', 'Chrome'),
(541374, '2020-07-28 03:21:12', '::1', 'Chrome'),
(541375, '2020-10-18 16:51:19', '::1', 'Chrome'),
(541376, '2020-10-19 03:59:15', '::1', 'Chrome'),
(541377, '2020-10-20 05:15:15', '::1', 'Chrome'),
(541378, '2020-10-20 17:05:05', '::1', 'Chrome'),
(541379, '2020-10-22 00:42:32', '::1', 'Chrome'),
(541380, '2020-10-23 16:47:35', '::1', 'Chrome'),
(541381, '2020-11-06 10:22:09', '::1', 'Chrome'),
(541382, '2020-11-14 05:17:18', '::1', 'Chrome'),
(541383, '2020-11-14 17:06:44', '::1', 'Chrome'),
(541384, '2020-11-15 17:00:03', '::1', 'Chrome'),
(541385, '2020-11-16 17:05:16', '::1', 'Chrome'),
(541386, '2020-11-18 04:08:49', '::1', 'Chrome'),
(541387, '2020-11-19 13:09:52', '::1', 'Chrome'),
(541388, '2020-11-19 17:45:32', '::1', 'Chrome'),
(541389, '2020-11-21 05:06:14', '::1', 'Chrome'),
(541390, '2020-11-21 17:00:54', '::1', 'Chrome'),
(541391, '2020-12-26 14:24:04', '::1', 'Chrome'),
(541392, '2021-07-01 13:35:17', '::1', 'Chrome'),
(541393, '2021-07-01 17:57:09', '::1', 'Chrome'),
(541394, '2021-07-03 05:04:57', '::1', 'Chrome'),
(541395, '2021-07-03 17:02:54', '::1', 'Chrome'),
(541396, '2021-07-07 09:18:16', '::1', 'Chrome'),
(541397, '2021-07-15 02:37:30', '::1', 'Chrome'),
(541398, '2021-07-17 05:19:51', '::1', 'Chrome'),
(541399, '2021-07-18 15:11:33', '::1', 'Chrome'),
(541400, '2021-07-20 07:41:24', '::1', 'Chrome'),
(541401, '2021-07-24 11:47:28', '::1', 'Chrome'),
(541402, '2021-07-25 05:19:56', '::1', 'Chrome'),
(541403, '2021-07-26 00:55:45', '::1', 'Chrome'),
(541404, '2021-07-26 17:34:56', '::1', 'Chrome'),
(541405, '2021-07-29 09:48:11', '::1', 'Chrome'),
(541406, '2021-07-30 07:37:48', '::1', 'Chrome'),
(541407, '2021-07-30 17:13:03', '::1', 'Chrome'),
(541408, '2021-08-11 08:18:27', '::1', 'Chrome'),
(541409, '2021-08-17 18:34:52', '::1', 'Chrome'),
(541410, '2021-08-18 17:03:10', '::1', 'Chrome'),
(541411, '2021-08-19 17:02:58', '::1', 'Chrome'),
(541412, '2021-08-20 17:22:43', '::1', 'Chrome'),
(541413, '2021-08-22 09:32:28', '::1', 'Chrome'),
(541414, '2021-08-23 03:36:58', '::1', 'Chrome'),
(541415, '2021-08-27 02:48:46', '::1', 'Chrome'),
(541416, '2021-08-31 18:35:04', '::1', 'Chrome'),
(541417, '2021-09-02 01:57:14', '::1', 'Chrome'),
(541418, '2021-09-04 17:06:47', '::1', 'Chrome'),
(541419, '2021-10-02 15:28:31', '::1', 'Chrome'),
(541420, '2021-10-12 17:59:47', '::1', 'Chrome'),
(541421, '2021-10-21 15:56:53', '::1', 'Chrome'),
(541422, '2021-10-21 17:00:19', '::1', 'Chrome'),
(541423, '2021-10-22 17:05:50', '::1', 'Chrome'),
(541424, '2021-11-15 15:14:32', '::1', 'Chrome'),
(541425, '2022-01-26 13:21:04', '::1', 'Chrome'),
(541426, '2022-02-11 11:17:46', '::1', 'Chrome'),
(541427, '2022-02-11 17:11:06', '::1', 'Chrome'),
(541428, '2022-05-31 01:37:50', '::1', 'Chrome'),
(541429, '2022-06-01 06:24:16', '::1', 'Chrome'),
(541430, '2022-06-02 01:25:28', '::1', 'Chrome'),
(541431, '2022-06-02 23:21:04', '::1', 'Chrome'),
(541432, '2022-06-07 05:53:40', '::1', 'Chrome'),
(541433, '2022-06-15 16:38:07', '::1', 'Chrome'),
(541434, '2022-07-04 13:45:18', '::1', 'Chrome'),
(541435, '2022-07-14 03:43:39', '::1', 'Chrome'),
(541436, '2022-08-02 07:21:33', '::1', 'Chrome'),
(541437, '2022-08-02 17:42:34', '::1', 'Chrome'),
(541438, '2022-08-11 05:51:09', '::1', 'Chrome'),
(541439, '2022-08-31 07:21:45', '::1', 'Chrome'),
(541440, '2022-08-31 19:22:35', '::1', 'Chrome'),
(541441, '2022-09-02 14:49:40', '::1', 'Chrome'),
(541442, '2022-09-06 06:58:25', '::1', 'Chrome'),
(541443, '2022-09-11 07:05:34', '::1', 'Chrome'),
(541444, '2022-09-12 16:25:23', '::1', 'Chrome'),
(541445, '2022-09-12 17:04:02', '::1', 'Chrome'),
(541446, '2022-09-13 17:05:25', '::1', 'Chrome'),
(541447, '2022-09-14 17:01:24', '::1', 'Chrome'),
(541448, '2022-09-15 17:22:52', '::1', 'Chrome'),
(541449, '2022-09-16 17:00:38', '::1', 'Chrome'),
(541450, '2022-09-18 15:34:35', '::1', 'Chrome'),
(541451, '2022-09-18 18:51:45', '::1', 'Chrome'),
(541452, '2022-09-20 02:41:50', '127.0.0.1', 'Firefox'),
(541453, '2022-09-21 03:32:20', '::1', 'Chrome'),
(541454, '2022-09-25 12:43:36', '127.0.0.1', 'Firefox'),
(541455, '2022-09-26 03:59:00', '127.0.0.1', 'Firefox'),
(541456, '2022-09-26 03:59:00', '127.0.0.1', 'Firefox');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_gabung`
--
ALTER TABLE `tbl_gabung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`navbar_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gabung`
--
ALTER TABLE `tbl_gabung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541457;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
