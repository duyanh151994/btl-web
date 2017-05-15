-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2017 lúc 06:01 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duyanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madonhang` int(20) NOT NULL,
  `mabanh` int(20) NOT NULL,
  `madouong` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `douong`
--

CREATE TABLE `douong` (
  `madouong` int(20) NOT NULL,
  `tendouong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoiluong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `tenkh` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donhang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pizza`
--

CREATE TABLE `pizza` (
  `mabanh` int(20) NOT NULL,
  `tenbanh` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kichthuoc` int(3) NOT NULL,
  `debanh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `mabanh` (`mabanh`),
  ADD KEY `madouong` (`madouong`);

--
-- Chỉ mục cho bảng `douong`
--
ALTER TABLE `douong`
  ADD PRIMARY KEY (`madouong`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`donhang`);

--
-- Chỉ mục cho bảng `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`mabanh`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `giaohang` (`donhang`);

--
-- Các ràng buộc cho bảng `douong`
--
ALTER TABLE `douong`
  ADD CONSTRAINT `douong_ibfk_1` FOREIGN KEY (`madouong`) REFERENCES `chitietdonhang` (`madouong`);

--
-- Các ràng buộc cho bảng `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`mabanh`) REFERENCES `chitietdonhang` (`mabanh`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
