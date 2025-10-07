-- phpMyAdmin SQL Dump
-- version 5.2.2-1.fc42
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2025 at 08:46 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(36) NOT NULL,
  `title` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `slug` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `userId` varchar(36) DEFAULT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `slug`, `stock`, `tags`, `userId`, `category`) VALUES
('10436c59-a063-11f0-986e-bc2411ca7f7f', 'Laptop Dell Inspiron', 1500, 'Laptop de trabajo confiable con procesador Intel i7', 'laptop-dell-inspiron', 20, 'work,office,intel', '5def9195-0d6a-40ec-931a-88528d198fb8', 'computer'),
('10436e69-a063-11f0-986e-bc2411ca7f7f', 'Laptop HP Pavilion', 1200, 'Laptop ligera con pantalla Full HD y Ryzen 5', 'laptop-hp-pavilion', 18, 'work,office,ryzen', '42320b78-7316-435c-90a6-febe3ee31f7a', 'computer'),
('10436f3f-a063-11f0-986e-bc2411ca7f7f', 'Laptop Gamer Asus ROG', 2500, 'Laptop gamer de alto rendimiento con RTX 4060', 'laptop-asus-rog', 10, 'gaming,high-performance,nvidia', '42320b78-7316-435c-90a6-febe3ee31f7a', 'computer'),
('1043707b-a063-11f0-986e-bc2411ca7f7f', 'MacBook Pro 14\"', 2800, 'MacBook para profesionales creativos con M3 Pro', 'macbook-pro-14', 8, 'apple,design,creative', '42320b78-7316-435c-90a6-febe3ee31f7a', 'computer'),
('10437107-a063-11f0-986e-bc2411ca7f7f', 'Monitor LG 27\"', 400, 'Monitor IPS Full HD de 27 pulgadas', 'monitor-lg-27', 30, 'office,display,ips', '42320b78-7316-435c-90a6-febe3ee31f7a', 'monitor'),
('1043718f-a063-11f0-986e-bc2411ca7f7f', 'Monitor Samsung 32 Curvo', 700, 'Monitor curvo 144Hz para gaming inmersivo', 'monitor-samsung-32', 25, 'gaming,curved,144hz', '42320b78-7316-435c-90a6-febe3ee31f7a', 'monitor'),
('10437337-a063-11f0-986e-bc2411ca7f7f', 'Monitor Dell UltraSharp 4K', 650, 'Monitor profesional con resolución 4K', 'monitor-dell-ultrasharp', 12, 'professional,4k,color', '42320b78-7316-435c-90a6-febe3ee31f7a', 'monitor'),
('104373e1-a063-11f0-986e-bc2411ca7f7f', 'Teclado Mecánico Redragon', 120, 'Teclado gamer mecánico RGB con switches azules', 'teclado-redragon', 40, 'keyboard,gaming,rgb', '42320b78-7316-435c-90a6-febe3ee31f7a', 'accessory'),
('10437488-a063-11f0-986e-bc2411ca7f7f', 'Mouse Logitech MX Master 3S', 150, 'Mouse inalámbrico ergonómico con batería recargable', 'mouse-logitech-mx-master-3s', 35, 'mouse,office,wireless', '42320b78-7316-435c-90a6-febe3ee31f7a', 'accessory'),
('104375b8-a063-11f0-986e-bc2411ca7f7f', 'Auriculares HyperX Cloud II', 180, 'Headset gamer con sonido envolvente 7.1', 'headset-hyperx-cloud2', 25, 'gaming,audio,headset', '42320b78-7316-435c-90a6-febe3ee31f7a', 'accessory'),
('1043763c-a063-11f0-986e-bc2411ca7f7f', 'SSD Samsung 990 Pro 2TB', 280, 'Unidad SSD NVMe Gen4 ultrarrápida', 'ssd-samsung-990-pro-2tb', 50, 'storage,nvme,2tb', '42320b78-7316-435c-90a6-febe3ee31f7a', 'accessory'),
('104376b9-a063-11f0-986e-bc2411ca7f7f', 'Silla Gamer Cougar Armor', 300, 'Silla ergonómica para largas sesiones de juego', 'silla-gamer-cougar', 12, 'chair,gaming,ergonomic', '42320b78-7316-435c-90a6-febe3ee31f7a', 'accessory'),
('28ff7baf-a063-11f0-986e-bc2411ca7f7f', 'Laptop Lenovo ThinkPad X1', 1700, 'Laptop empresarial duradera y potente', 'laptop-thinkpad-x1', 15, 'business,office,lenovo', '5def9195-0d6a-40ec-931a-88528d198fb8', 'computer'),
('28ff7de1-a063-11f0-986e-bc2411ca7f7f', 'Laptop Acer Nitro 5', 1100, 'Laptop gamer asequible con RTX 3050', 'laptop-acer-nitro-5', 20, 'gaming,entry-level,laptop', '5def9195-0d6a-40ec-931a-88528d198fb8', 'computer'),
('28ff7e87-a063-11f0-986e-bc2411ca7f7f', 'MacBook Air M2', 1500, 'Laptop ultraligera con chip Apple M2', 'macbook-air-m2', 10, 'apple,lightweight,portable', '5def9195-0d6a-40ec-931a-88528d198fb8', 'computer'),
('28ff7f33-a063-11f0-986e-bc2411ca7f7f', 'Monitor AOC 24\"', 300, 'Monitor gamer 165Hz con FreeSync', 'monitor-aoc-24', 28, 'gaming,freesync,165hz', '5def9195-0d6a-40ec-931a-88528d198fb8', 'monitor'),
('28ff7fa9-a063-11f0-986e-bc2411ca7f7f', 'Monitor MSI Optix 27\"', 500, 'Monitor curvo QHD 165Hz', 'monitor-msi-optix-27', 15, 'gaming,curved,qhd', '5def9195-0d6a-40ec-931a-88528d198fb8', 'monitor'),
('28ff8012-a063-11f0-986e-bc2411ca7f7f', 'Monitor BenQ Designer 32\"', 800, 'Monitor profesional diseñado para diseñadores gráficos', 'monitor-benq-32', 7, 'professional,designer,4k', '5def9195-0d6a-40ec-931a-88528d198fb8', 'monitor'),
('28ff8083-a063-11f0-986e-bc2411ca7f7f', 'Teclado Logitech G Pro X', 130, 'Teclado gamer modular con switches intercambiables', 'teclado-logitech-gpro-x', 20, 'keyboard,gaming,modular', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory'),
('28ff80ef-a063-11f0-986e-bc2411ca7f7f', 'Mouse Razer DeathAdder V3', 90, 'Mouse gamer ultraligero con 30K DPI', 'mouse-razer-deathadder-v3', 25, 'mouse,gaming,razer', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory'),
('28ff815e-a063-11f0-986e-bc2411ca7f7f', 'Auriculares SteelSeries Arctis 7', 200, 'Headset inalámbrico con sonido envolvente DTS', 'headset-steelseries-arctis7', 18, 'gaming,audio,wireless', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory'),
('28ff8287-a063-11f0-986e-bc2411ca7f7f', 'Micrófono Blue Yeti', 120, 'Micrófono USB profesional para streaming y podcasting', 'microfono-blue-yeti', 30, 'audio,streaming,microphone', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory'),
('28ff8306-a063-11f0-986e-bc2411ca7f7f', 'Disco Externo WD 4TB', 140, 'Almacenamiento portátil con USB 3.2', 'disco-externo-wd-4tb', 50, 'storage,usb,external', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory'),
('28ff8390-a063-11f0-986e-bc2411ca7f7f', 'Cámara Logitech StreamCam', 1630, 'Cámara Full HD para videollamadas y streaming', 'camara-logitech-streamcam', 15, 'camera,streaming,fullhd', '5def9195-0d6a-40ec-931a-88528d198fb8', 'accessory');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `productId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `url`, `productId`) VALUES
(7, 'https://picsum.photos/800/600?random=303', '10436e69-a063-11f0-986e-bc2411ca7f7f'),
(8, 'https://picsum.photos/800/600?random=304', '10436e69-a063-11f0-986e-bc2411ca7f7f'),
(9, 'https://picsum.photos/800/600?random=305', '10436f3f-a063-11f0-986e-bc2411ca7f7f'),
(10, 'https://picsum.photos/800/600?random=306', '10436f3f-a063-11f0-986e-bc2411ca7f7f'),
(11, 'https://picsum.photos/800/600?random=307', '1043707b-a063-11f0-986e-bc2411ca7f7f'),
(12, 'https://picsum.photos/800/600?random=308', '1043707b-a063-11f0-986e-bc2411ca7f7f'),
(13, 'https://picsum.photos/800/600?random=309', '10437107-a063-11f0-986e-bc2411ca7f7f'),
(14, 'https://picsum.photos/800/600?random=310', '10437107-a063-11f0-986e-bc2411ca7f7f'),
(15, 'https://picsum.photos/800/600?random=311', '1043718f-a063-11f0-986e-bc2411ca7f7f'),
(16, 'https://picsum.photos/800/600?random=312', '1043718f-a063-11f0-986e-bc2411ca7f7f'),
(17, 'https://picsum.photos/800/600?random=313', '10437337-a063-11f0-986e-bc2411ca7f7f'),
(18, 'https://picsum.photos/800/600?random=314', '10437337-a063-11f0-986e-bc2411ca7f7f'),
(19, 'https://picsum.photos/800/600?random=315', '104373e1-a063-11f0-986e-bc2411ca7f7f'),
(20, 'https://picsum.photos/800/600?random=316', '104373e1-a063-11f0-986e-bc2411ca7f7f'),
(21, 'https://picsum.photos/800/600?random=317', '10437488-a063-11f0-986e-bc2411ca7f7f'),
(22, 'https://picsum.photos/800/600?random=318', '10437488-a063-11f0-986e-bc2411ca7f7f'),
(23, 'https://picsum.photos/800/600?random=319', '104375b8-a063-11f0-986e-bc2411ca7f7f'),
(24, 'https://picsum.photos/800/600?random=320', '104375b8-a063-11f0-986e-bc2411ca7f7f'),
(25, 'https://picsum.photos/800/600?random=321', '1043763c-a063-11f0-986e-bc2411ca7f7f'),
(26, 'https://picsum.photos/800/600?random=322', '1043763c-a063-11f0-986e-bc2411ca7f7f'),
(27, 'https://picsum.photos/800/600?random=323', '104376b9-a063-11f0-986e-bc2411ca7f7f'),
(28, 'https://picsum.photos/800/600?random=324', '104376b9-a063-11f0-986e-bc2411ca7f7f'),
(29, 'https://picsum.photos/800/600?random=325', '28ff7baf-a063-11f0-986e-bc2411ca7f7f'),
(30, 'https://picsum.photos/800/600?random=326', '28ff7baf-a063-11f0-986e-bc2411ca7f7f'),
(31, 'https://picsum.photos/800/600?random=327', '28ff7de1-a063-11f0-986e-bc2411ca7f7f'),
(32, 'https://picsum.photos/800/600?random=328', '28ff7de1-a063-11f0-986e-bc2411ca7f7f'),
(33, 'https://picsum.photos/800/600?random=329', '28ff7e87-a063-11f0-986e-bc2411ca7f7f'),
(34, 'https://picsum.photos/800/600?random=330', '28ff7e87-a063-11f0-986e-bc2411ca7f7f'),
(35, 'https://picsum.photos/800/600?random=331', '28ff7f33-a063-11f0-986e-bc2411ca7f7f'),
(36, 'https://picsum.photos/800/600?random=332', '28ff7f33-a063-11f0-986e-bc2411ca7f7f'),
(37, 'https://picsum.photos/800/600?random=333', '28ff7fa9-a063-11f0-986e-bc2411ca7f7f'),
(38, 'https://picsum.photos/800/600?random=334', '28ff7fa9-a063-11f0-986e-bc2411ca7f7f'),
(39, 'https://picsum.photos/800/600?random=335', '28ff8012-a063-11f0-986e-bc2411ca7f7f'),
(40, 'https://picsum.photos/800/600?random=336', '28ff8012-a063-11f0-986e-bc2411ca7f7f'),
(41, 'https://picsum.photos/800/600?random=337', '28ff8083-a063-11f0-986e-bc2411ca7f7f'),
(42, 'https://picsum.photos/800/600?random=338', '28ff8083-a063-11f0-986e-bc2411ca7f7f'),
(43, 'https://picsum.photos/800/600?random=339', '28ff80ef-a063-11f0-986e-bc2411ca7f7f'),
(44, 'https://picsum.photos/800/600?random=340', '28ff80ef-a063-11f0-986e-bc2411ca7f7f'),
(45, 'https://picsum.photos/800/600?random=341', '28ff815e-a063-11f0-986e-bc2411ca7f7f'),
(46, 'https://picsum.photos/800/600?random=342', '28ff815e-a063-11f0-986e-bc2411ca7f7f'),
(47, 'https://picsum.photos/800/600?random=343', '28ff8287-a063-11f0-986e-bc2411ca7f7f'),
(48, 'https://picsum.photos/800/600?random=344', '28ff8287-a063-11f0-986e-bc2411ca7f7f'),
(49, 'https://picsum.photos/800/600?random=345', '28ff8306-a063-11f0-986e-bc2411ca7f7f'),
(50, 'https://picsum.photos/800/600?random=346', '28ff8306-a063-11f0-986e-bc2411ca7f7f'),
(57, 'https://m.media-amazon.com/images/I/81tgnKK7+aS._AC_SL1500_.jpg', '10436c59-a063-11f0-986e-bc2411ca7f7f'),
(58, 'https://m.media-amazon.com/images/I/61DeOpVV0qL._AC_SL1500_.jpg', '10436c59-a063-11f0-986e-bc2411ca7f7f'),
(59, 'https://picsum.photos/800/600?random=347', '28ff8390-a063-11f0-986e-bc2411ca7f7f'),
(60, 'https://picsum.photos/800/600?random=348', '28ff8390-a063-11f0-986e-bc2411ca7f7f');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `fullName` text NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `roles` text NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullName`, `isActive`, `roles`) VALUES
('42320b78-7316-435c-90a6-febe3ee31f7a', 'user@minishop.com', '$2b$10$/tCe4Zy5xBOky1NhXLmEBusRdE0cK60uY08XAD2mp3K.nIxTYv4Ba', 'User', 1, 'user'),
('5def9195-0d6a-40ec-931a-88528d198fb8', 'admin@minishop.com', '$2b$10$Liql//SIJ1RladGL.xJmTuOAs7cT0o8bysW3Bd22cLwu.w75Sf7hq', 'Admin', 1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_c30f00a871de74c8e8c213acc4` (`title`) USING HASH,
  ADD UNIQUE KEY `IDX_464f927ae360106b783ed0b410` (`slug`) USING HASH,
  ADD KEY `FK_99d90c2a483d79f3b627fb1d5e9` (`userId`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b367708bf720c8dd62fc6833161` (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_99d90c2a483d79f3b627fb1d5e9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_b367708bf720c8dd62fc6833161` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
