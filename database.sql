-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 01:52 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_eai`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airline`, `departure`, `arrival`, `class`, `price`, `duration`, `scheduled`, `estimated`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Hong Kong Airlines (HX779)', 'Hong Kong International (HKG)', 'Suvarnabhumi International (BKK)', 'First Class', 6966000, '2h 0m', '2023-06-05T01:05:00+00:00', '2023-06-05T03:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(2, 'Silk Way West (7L692)', 'Hong Kong International (HKG)', 'Heydar Aliyev International (Bina International) (GYD)', 'First Class', 2076000, '4h 0m', '2023-06-05T01:00:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(3, 'Hong Kong Air Cargo (RH4568)', 'Hong Kong International (HKG)', 'Taiwan Taoyuan International (Chiang Kai Shek International) (TPE)', 'Economy', 6165000, '1h 50m', '2023-06-05T01:00:00+00:00', '2023-06-05T02:50:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(4, 'Peach Aviation (MM68)', 'Hong Kong International (HKG)', 'Kansai International (KIX)', 'Premium Economy', 3969000, '4h 50m', '2023-06-05T00:50:00+00:00', '2023-06-05T05:40:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(5, 'Cathay Pacific (CX872)', 'Hong Kong International (HKG)', 'San Francisco International (SFO)', 'Premium Economy', 7903000, '2h 5m', '2023-06-05T00:50:00+00:00', '2023-06-04T22:45:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(6, 'Korean Air (KE178)', 'Hong Kong International (HKG)', 'Seoul (Incheon) (ICN)', 'Economy', 8440000, '4h 40m', '2023-06-05T00:45:00+00:00', '2023-06-05T05:25:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(7, 'Cathay Pacific (CX888)', 'Hong Kong International (HKG)', 'Vancouver International (YVR)', 'Premium Economy', 9348000, '2h 55m', '2023-06-05T00:45:00+00:00', '2023-06-04T21:50:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(8, 'Cargolux (CV7957)', 'Hong Kong International (HKG)', 'Findel (LUX)', 'Premium Economy', 3452000, '9h 15m', '2023-06-05T00:40:00+00:00', '2023-06-05T09:55:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(9, 'Emirates (EK381)', 'Hong Kong International (HKG)', 'Dubai (DXB)', 'Premium Economy', 8588000, '3h 45m', '2023-06-05T00:35:00+00:00', '2023-06-05T04:20:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(10, 'Asiana Airlines (OZ746)', 'Hong Kong International (HKG)', 'Seoul (Incheon) (ICN)', 'First Class', 7763000, '4h 40m', '2023-06-05T00:30:00+00:00', '2023-06-05T05:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(11, 'Cathay Pacific (CX2090)', 'Hong Kong International (HKG)', 'Ted Stevens Anchorage International Airport (ANC)', 'Economy', 7600000, '6h 30m', '2023-06-05T00:25:00+00:00', '2023-06-04T17:55:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(12, 'Qatar Airways (QR815)', 'Hong Kong International (HKG)', 'Doha International (DOH)', 'Premium Economy', 6627000, '3h 40m', '2023-06-05T00:25:00+00:00', '2023-06-05T04:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(13, 'Ethiopian Airlines (ET645)', 'Hong Kong International (HKG)', 'Bole International (ADD)', 'Premium Economy', 2210000, '6h 0m', '2023-06-05T00:25:00+00:00', '2023-06-05T06:25:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(14, 'Cathay Pacific (CX105)', 'Hong Kong International (HKG)', 'Melbourne - Tullamarine Airport (MEL)', 'Premium Economy', 4756000, '10h 55m', '2023-06-05T00:20:00+00:00', '2023-06-05T11:15:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(15, 'Cathay Pacific (CX3384)', 'Hong Kong International (HKG)', 'Ted Stevens Anchorage International Airport (ANC)', 'First Class', 5451000, '6h 0m', '2023-06-05T00:10:00+00:00', '2023-06-04T18:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(16, 'Jiangsu Jingdong Cargo Airlines (JG2629)', 'Hohhot (HET)', 'Chongqing Jiangbei International (CKG)', 'Business', 3367000, '2h 25m', '2023-06-05T02:05:00+00:00', '2023-06-05T04:30:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(17, 'Longhao Airlines (GI4239)', 'Jinan (TNA)', 'Kansai International (KIX)', 'Premium Economy', 1432000, '3h 50m', '2023-06-05T00:10:00+00:00', '2023-06-05T04:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(18, 'Emirates (EK431)', 'Brisbane International (BNE)', 'Dubai (DXB)', 'First Class', 8524000, '8h 10m', '2023-06-05T02:50:00+00:00', '2023-06-05T11:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(19, 'Qantas (QF8431)', 'Brisbane International (BNE)', 'Dubai (DXB)', 'Business', 5427000, '8h 10m', '2023-06-05T02:50:00+00:00', '2023-06-05T11:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(20, 'Air New Zealand (NZ8275)', 'Kerikeri/Bay of Islands (KKE)', 'Auckland International (AKL)', 'Business', 5977000, '0h 45m', '2023-06-05T06:00:00+00:00', '2023-06-05T06:45:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(21, 'Singapore Airlines (SQ4393)', 'Kerikeri/Bay of Islands (KKE)', 'Auckland International (AKL)', 'Business', 7132000, '0h 45m', '2023-06-05T06:00:00+00:00', '2023-06-05T06:45:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(22, 'Central Airlines (I99848)', 'Kansai International (KIX)', 'Wenzhou (WNZ)', 'Premium Economy', 7465000, '2h 0m', '2023-06-05T03:00:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(23, 'Suparna Airlines (Y87952)', 'Kansai International (KIX)', 'Lishe International Airport (NGB)', 'Economy', 5838000, '1h 35m', '2023-06-05T03:00:00+00:00', '2023-06-05T04:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(24, 'YTO Cargo Airlines (YG9164)', 'Kansai International (KIX)', 'Hangzhou (HGH)', 'Premium Economy', 3076000, '2h 20m', '2023-06-05T03:00:00+00:00', '2023-06-05T05:20:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(25, 'China Postal Airlines (CF204)', 'Kansai International (KIX)', 'Guangzhou Baiyun International (CAN)', 'Business', 5441000, '3h 0m', '2023-06-05T02:55:00+00:00', '2023-06-05T05:55:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(26, 'SF Airlines (O37012)', 'Kansai International (KIX)', 'Xianyang (XIY)', 'Premium Economy', 8995000, '3h 0m', '2023-06-05T02:50:00+00:00', '2023-06-05T05:50:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(27, 'YTO Cargo Airlines (YG9134)', 'Kansai International (KIX)', 'Hangzhou (HGH)', 'Economy', 4082000, '1h 50m', '2023-06-05T02:40:00+00:00', '2023-06-05T04:30:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(28, 'SF Airlines (O37558)', 'Kansai International (KIX)', 'Shenzhen (SZX)', 'Premium Economy', 2255000, '3h 20m', '2023-06-05T02:25:00+00:00', '2023-06-05T05:45:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(29, 'SF Airlines (O37552)', 'Kansai International (KIX)', 'Wenzhou (WNZ)', 'Business', 5569000, '1h 5m', '2023-06-05T02:25:00+00:00', '2023-06-05T03:30:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(30, 'China Postal Airlines (CF218)', 'Kansai International (KIX)', 'Shenzhen (SZX)', 'Premium Economy', 3022000, '3h 20m', '2023-06-05T02:20:00+00:00', '2023-06-05T05:40:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(31, 'Korean Air (KE424)', 'Guam International (GUM)', 'Seoul (Incheon) (ICN)', 'Economy', 4585000, '4h 0m', '2023-06-05T02:25:00+00:00', '2023-06-05T06:25:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(32, 'Indonesia AirAsia (QZ533)', 'Perth International (PER)', 'Soekarno-Hatta International (CGK)', 'Premium Economy', 4410000, '3h 45m', '2023-06-05T00:15:00+00:00', '2023-06-05T04:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(33, 'SF Airlines (O36841)', 'Jinan (TNA)', 'Hangzhou (HGH)', 'Premium Economy', 3882000, '1h 35m', '2023-06-05T00:05:00+00:00', '2023-06-05T01:40:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(34, 'Tianjin Air Cargo (HT3823)', 'Weihai (WEH)', 'Narita International Airport (NRT)', 'First Class', 6761000, '3h 55m', '2023-06-05T00:05:00+00:00', '2023-06-05T04:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(35, 'Tianjin Air Cargo (HT3811)', 'Weihai (WEH)', 'Kansai International (KIX)', 'First Class', 1226000, '3h 50m', '2023-06-05T00:05:00+00:00', '2023-06-05T03:55:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(36, 'YTO Cargo Airlines (YG9044)', 'Kansai International (KIX)', 'Shenzhen (SZX)', 'Economy', 6656000, '2h 50m', '2023-06-05T03:00:00+00:00', '2023-06-05T05:50:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(37, 'China Postal Airlines (CF9017)', 'Kunming (KMG)', 'Nanjing Lukou International Airport (NKG)', 'Premium Economy', 6983000, '2h 45m', '2023-06-05T00:05:00+00:00', '2023-06-05T02:50:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(38, 'Delta Air Lines (DL9037)', 'Guam International (GUM)', 'Seoul (Incheon) (ICN)', 'Premium Economy', 3582000, '4h 0m', '2023-06-05T02:25:00+00:00', '2023-06-05T06:25:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(39, 'SF Airlines (O36902)', 'Beijing Capital International (PEK)', 'Hangzhou (HGH)', 'First Class', 8517000, '2h 15m', '2023-06-05T01:00:00+00:00', '2023-06-05T03:15:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(40, 'China Postal Airlines (CF9055)', 'Beijing Capital International (PEK)', 'Nanjing Lukou International Airport (NKG)', 'Business', 3679000, '2h 0m', '2023-06-05T00:45:00+00:00', '2023-06-05T02:45:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(41, 'Emirates (EK307)', 'Beijing Capital International (PEK)', 'Dubai (DXB)', 'First Class', 4618000, '4h 20m', '2023-06-05T00:40:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(42, 'SF Airlines (O37105)', 'Beijing Capital International (PEK)', 'Shenzhen (SZX)', 'Premium Economy', 1469000, '3h 35m', '2023-06-05T00:30:00+00:00', '2023-06-05T04:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(43, 'Air New Zealand (NZ5756)', 'Dunedin International (DUD)', 'Christchurch International (CHC)', 'First Class', 9786000, '1h 5m', '2023-06-05T06:05:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(44, 'Qantas (QF8551)', 'Dunedin International (DUD)', 'Christchurch International (CHC)', 'Business', 3651000, '1h 5m', '2023-06-05T06:05:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(45, 'Etihad Airways (EY4522)', 'Dunedin International (DUD)', 'Christchurch International (CHC)', 'First Class', 3173000, '1h 5m', '2023-06-05T06:05:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(46, 'China Postal Airlines (CF9033)', 'Xianyang (XIY)', 'Nanjing Lukou International Airport (NKG)', 'First Class', 5986000, '2h 5m', '2023-06-05T00:05:00+00:00', '2023-06-05T02:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(47, 'SF Airlines (O37061)', 'Xianyang (XIY)', 'Hangzhou (HGH)', 'Premium Economy', 5887000, '2h 15m', '2023-06-05T00:05:00+00:00', '2023-06-05T02:20:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(48, 'Cathay Pacific (CX880)', 'Hong Kong International (HKG)', 'Los Angeles International (LAX)', 'Premium Economy', 4616000, '1h 30m', '2023-06-05T00:05:00+00:00', '2023-06-04T22:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(49, 'IrAero (IO230)', 'Irkutsk (IKT)', 'New Ulaanbaator International Airport (UBN)', 'Business', 9213000, '0h 55m', '2023-06-05T01:05:00+00:00', '2023-06-05T02:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(50, 'S7 Airlines (S76339)', 'Irkutsk (IKT)', 'Vladivostok (VVO)', 'Business', 3859000, '6h 5m', '2023-06-05T01:00:00+00:00', '2023-06-05T07:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(51, 'Aeroflot (SU5653)', 'Irkutsk (IKT)', 'Novyy (KHV)', 'Economy', 2489000, '5h 10m', '2023-06-05T01:00:00+00:00', '2023-06-05T06:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(52, 'S7 Airlines (S76335)', 'Irkutsk (IKT)', 'Novyy (KHV)', 'Economy', 2946000, '5h 20m', '2023-06-05T00:45:00+00:00', '2023-06-05T06:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(53, 'Lion Air (JT3794)', 'Hasanudin (UPG)', 'Sentani (DJJ)', 'First Class', 1665000, '4h 25m', '2023-06-05T01:40:00+00:00', '2023-06-05T06:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(54, 'Lion Air (JT798)', 'Hasanudin (UPG)', 'Sentani (DJJ)', 'Economy', 6655000, '4h 25m', '2023-06-05T01:40:00+00:00', '2023-06-05T06:05:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(55, 'Virgin Australia (VA74)', 'Faleolo (APW)', 'Brisbane International (BNE)', 'First Class', 3052000, '2h 45m', '2023-06-05T06:10:00+00:00', '2023-06-05T08:55:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(56, 'Fiji Airways (FJ252)', 'Faleolo (APW)', 'Nadi International (NAN)', 'First Class', 9301000, '1h 0m', '2023-06-05T05:15:00+00:00', '2023-06-05T06:15:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(57, 'Central Airlines (I99862)', 'Kansai International (KIX)', 'Weihai (WEH)', 'Economy', 9606000, '2h 0m', '2023-06-05T02:00:00+00:00', '2023-06-05T04:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(58, 'Air China LTD (CA1062)', 'Kansai International (KIX)', 'Shanghai Pudong International (PVG)', 'Economy', 1089000, '1h 25m', '2023-06-05T01:55:00+00:00', '2023-06-05T03:20:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(59, 'Air China LTD (CA1064)', 'Kansai International (KIX)', 'Shanghai Pudong International (PVG)', 'Business', 9752000, '1h 20m', '2023-06-05T01:50:00+00:00', '2023-06-05T03:10:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(60, 'Central Airlines (I99818)', 'Kansai International (KIX)', 'Lishe International Airport (NGB)', 'Economy', 4961000, '2h 0m', '2023-06-05T01:30:00+00:00', '2023-06-05T03:30:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(61, 'Central Airlines (I99856)', 'Kansai International (KIX)', 'Shanghai (HFE)', 'Business', 3806000, '2h 30m', '2023-06-05T01:30:00+00:00', '2023-06-05T04:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(62, 'China Cargo (CK248)', 'Kansai International (KIX)', 'Shanghai Pudong International (PVG)', 'First Class', 7700000, '1h 20m', '2023-06-05T01:15:00+00:00', '2023-06-05T02:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(63, 'Yakutia (R3567)', 'Novyy (KHV)', 'Neryungri (NER)', 'First Class', 5698000, '2h 0m', '2023-06-05T03:00:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(64, 'Qantas (QF138)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Economy', 8276000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(65, 'American Airlines (AA7292)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Economy', 6697000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(66, 'Alaska Airlines (AS5016)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Premium Economy', 9238000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(67, 'China Eastern Airlines (MU4342)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Business', 2267000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(68, 'Emirates (EK5046)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Business', 1711000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(69, 'British Airways (BA7424)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Business', 3343000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(70, 'Finnair (AY5050)', 'Christchurch International (CHC)', 'Sydney Kingsford Smith Airport (SYD)', 'Economy', 6558000, '1h 35m', '2023-06-05T06:00:00+00:00', '2023-06-05T07:35:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(71, 'Air New Zealand (NZ211)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Business', 7587000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(72, 'United Airlines (UA6795)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Business', 4848000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(73, 'Turkish Airlines (TK8769)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Economy', 3658000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(74, 'Thai Airways International (TG4830)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Premium Economy', 2371000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(75, 'Singapore Airlines (SQ4311)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Premium Economy', 6729000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(76, 'Etihad Airways (EY4427)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Economy', 8341000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:01', '2023-06-04 11:51:01'),
(77, 'Air China LTD (CA5119)', 'Christchurch International (CHC)', 'Melbourne - Tullamarine Airport (MEL)', 'Premium Economy', 4257000, '2h 0m', '2023-06-05T06:00:00+00:00', '2023-06-05T08:00:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(78, 'Air New Zealand (NZ582)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Business', 1146000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(79, 'Turkish Airlines (TK8752)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'First Class', 6798000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(80, 'Singapore Airlines (SQ4364)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Premium Economy', 3182000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(81, 'Asiana Airlines (OZ6548)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Economy', 1982000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(82, 'ANA (NH7955)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Economy', 2037000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(83, 'Etihad Airways (EY4494)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Premium Economy', 2669000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(84, 'EVA Air (BR3248)', 'Christchurch International (CHC)', 'Auckland International (AKL)', 'Business', 2073000, '1h 25m', '2023-06-05T05:45:00+00:00', '2023-06-05T07:10:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(85, 'Central Airlines (I99808)', 'Kuala Lumpur International Airport (klia) (KUL)', 'Shenzhen (SZX)', 'First Class', 7185000, '4h 20m', '2023-06-05T00:25:00+00:00', '2023-06-05T04:45:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(86, 'China Postal Airlines (CF9024)', 'Nanchang (KHN)', 'Nanning (NNG)', 'Economy', 7211000, '2h 20m', '2023-06-05T00:30:00+00:00', '2023-06-05T02:50:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(87, 'YTO Cargo Airlines (YG9124)', 'Noibai International (HAN)', 'Qingdao (TAO)', 'Economy', 9804000, '5h 40m', '2023-06-05T00:05:00+00:00', '2023-06-05T05:45:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(88, 'Air China LTD (CA165)', 'Beijing Capital International (PEK)', 'Melbourne - Tullamarine Airport (MEL)', 'Business', 9041000, '13h 30m', '2023-06-05T01:05:00+00:00', '2023-06-05T14:35:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(89, 'SF Airlines (O37109)', 'Beijing Capital International (PEK)', 'Nanjing Lukou International Airport (NKG)', 'Business', 4332000, '2h 15m', '2023-06-05T01:05:00+00:00', '2023-06-05T03:20:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(90, 'Longhao Airlines (GI4368)', 'Kansai International (KIX)', 'Shenzhen (SZX)', 'Economy', 2939000, '3h 45m', '2023-06-05T02:00:00+00:00', '2023-06-05T05:45:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(91, 'YTO Cargo Airlines (YG9052)', 'Kuala Lumpur International Airport (klia) (KUL)', 'Hangzhou (HGH)', 'Economy', 8543000, '4h 50m', '2023-06-05T00:10:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(92, 'YTO Cargo Airlines (YG9056)', 'Kuala Lumpur International Airport (klia) (KUL)', 'Hangzhou (HGH)', 'First Class', 6352000, '5h 10m', '2023-06-05T00:10:00+00:00', '2023-06-05T05:20:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(93, 'S7 Airlines (S76331)', 'Irkutsk (IKT)', 'Yakutsk (YKS)', 'Economy', 6844000, '3h 55m', '2023-06-05T01:05:00+00:00', '2023-06-05T05:00:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(94, 'China Postal Airlines (CF9051)', 'Haikou (HAK)', 'Nanjing Lukou International Airport (NKG)', 'Business', 1969000, '2h 40m', '2023-06-05T00:05:00+00:00', '2023-06-05T02:45:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(95, 'China Southern Airlines (CZ425)', 'Guangzhou Baiyun International (CAN)', 'Stansted (STN)', 'First Class', 1934000, '5h 30m', '2023-06-05T01:00:00+00:00', '2023-06-05T06:30:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(96, 'SF Airlines (O37361)', 'Guangzhou Baiyun International (CAN)', 'Wuxi (WUX)', 'Economy', 4020000, '2h 30m', '2023-06-05T00:55:00+00:00', '2023-06-05T03:25:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(97, 'AirAsia (AK1535)', 'Guangzhou Baiyun International (CAN)', 'Kota-Kinabalu International Airport (BKI)', 'Economy', 5750000, '3h 10m', '2023-06-05T00:25:00+00:00', '2023-06-05T03:35:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(98, 'China Southern Airlines (CZ347)', 'Guangzhou Baiyun International (CAN)', 'Charles De Gaulle (CDG)', 'First Class', 4342000, '6h 30m', '2023-06-05T00:20:00+00:00', '2023-06-05T06:50:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(99, 'Suparna Airlines (Y87911)', 'Guangzhou Baiyun International (CAN)', 'Taiwan Taoyuan International (Chiang Kai Shek International) (TPE)', 'Premium Economy', 3176000, '2h 15m', '2023-06-05T00:20:00+00:00', '2023-06-05T02:35:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02'),
(100, 'Hainan Airlines (HU409)', 'Guangzhou Baiyun International (CAN)', 'Suvarnabhumi International (BKK)', 'Premium Economy', 3560000, '1h 45m', '2023-06-05T00:15:00+00:00', '2023-06-05T02:00:00+00:00', '2023-06-05', '2023-06-04 11:51:02', '2023-06-04 11:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage` bigint(20) NOT NULL DEFAULT 0,
  `reset` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_09_051344_create_flights_table', 1),
(6, '2023_05_31_052857_create_keys_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keys_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
