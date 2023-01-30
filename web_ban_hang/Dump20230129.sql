-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ql_ban_hang
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (81,'Áo dài tay','261442025_4101766376590663_9147791049420680758_n.jpg_1639826878432'),(82,'Áo khoác','261707508_4103848173049150_783336289344425130_n.jpg_1639826894131'),(83,'Áo thun','239612441_3856599727773997_4712611877031229529_n.jpg_1639826905664'),(84,'Quần dài','241565808_3915812861852683_5677673351181724289_n.jpg_1639826927031'),(85,'Đồ bộ','239957790_3856342907799679_2595997204977179069_n.jpg_1639826940521');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf4facxgsxb21nhe3c9y2nk0aw` (`product_id`),
  CONSTRAINT `FKf4facxgsxb21nhe3c9y2nk0aw` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (94,'#ffa64d',93),(98,'#ff9933',97),(99,'#0033cc',97),(103,'#0033cc',102),(104,'#00e600',102),(109,'#99ff99',108),(110,'#00e600',108),(114,'#99ff99',113),(115,'#ffff00',113),(120,'#ffff00',119),(124,'#0000cc',123),(125,'#ffff00',123),(172,'#e60000',171),(173,'#ff0000',171),(201,'#ff3300 ',200),(202,'#0033cc',200),(217,'#0033cc',216),(218,'#ff3300',216),(231,'#ffff66',230),(232,'#0033cc',230),(244,'#000000',243),(245,'#996633',243),(250,'#0033cc',249),(251,'#ff3300',249),(254,'#cc33ff',253),(255,'#0033cc',253),(260,'#ff3300',259),(261,'#00ff00',259),(262,'#ffff66',259),(267,'#996633',266),(268,'#00ff00',266),(269,'#cc33ff',266),(274,'#ffff66',273),(275,'#ff3300',273);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`),
  CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (152,'đẹp','2021-12-21 14:31:19','dong@gmail.com','dong',119,148),(177,'xinh','2021-12-25 06:47:17','dong@gmail.com','dong',119,168),(292,'hkhnukunk','2023-01-05 16:52:01','adidas@gmail.com','a',108,42);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (299);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (74,'<p><strong>Tốt cho tĩnh mạch</strong></p>\r\n\r\n<p>Một cuộc khảo s&aacute;t với 2.000 nam giới Anh do một thương hiệu chuy&ecirc;n sản xuất quần &aacute;o thực hiện cho thấy, 1/2 số người mặc quần jean b&oacute; gặp vấn đề với h&aacute;ng, hơn 1/4 gặp vấn đề về b&agrave;ng quang, 1/5 bị xoắn tinh ho&agrave;n...</p>\r\n\r\n<p>Tiến sĩ Nicholas Morrissey, b&aacute;c sĩ phẫu thuật mạch m&aacute;u của bệnh viện NewYork-Presbyterian (Trung t&acirc;m Y tế ĐH Columbia, Mỹ) cũng nhận được nhiều lời ph&agrave;n n&agrave;n bị t&ecirc; dọc đ&ugrave;i khi mặc quần &aacute;o. &Ocirc;ng Morrissey cho biết, đ&acirc;y l&agrave; biểu hiện của chứng dị cảm meralgia. Một d&acirc;y thần kinh cảm gi&aacute;c xuất ph&aacute;t từ xương chậu cung cấp cảm gi&aacute;c cho c&aacute;c bộ phận ở đ&ugrave;i. V&igrave; vậy, khi mặc quần &aacute;o ống b&oacute;, họ thấy t&ecirc; b&igrave; ch&acirc;n do co thắt.</p>\r\n\r\n<p>Chuy&ecirc;n gia khuy&ecirc;n, tốt nhất kh&ocirc;ng n&ecirc;n mặc quần &aacute;o qu&aacute; chật. Trong trường hợp bất đắc dĩ phải mặc, h&atilde;y cởi ra ngay khi bạn về nh&agrave;.</p>\r\n\r\n<p><strong>Mang vi khuẩn v&agrave;o nh&agrave;</strong></p>\r\n\r\n<p>Bạn kh&ocirc;ng thể bị ốm chỉ v&igrave; mặc một bộ quần &aacute;o cả ng&agrave;y, nhưng vẫn c&oacute; thể mang vi khuẩn v&agrave;o nh&agrave; v&agrave; ph&aacute;t sinh c&aacute;c bệnh nhiễm tr&ugrave;ng. Một số vi khuẩn như Acinetobacter g&acirc;y nhiễm tr&ugrave;ng đường h&ocirc; hấp v&agrave; Staphylococcus aureus c&oacute; thể g&acirc;y vi&ecirc;m ở c&aacute;c bộ phận kh&aacute;c nhau của cơ thể, đồng thời kh&aacute;ng nhiều loại thuốc.</p>\r\n\r\n<p>Jason Tetro, một nh&agrave; nghi&ecirc;n cứu vi sinh cho biết, khả năng nhiễm Acinetobacter kh&aacute; nhỏ, nhưng đ&atilde; c&oacute; những trường hợp vi khuẩn n&agrave;y d&iacute;nh v&agrave;o quần &aacute;o. Trở về nh&agrave; sau một ng&agrave;y d&agrave;i, bạn leo l&ecirc;n giường, chuyển n&oacute; v&agrave;o gối của m&igrave;nh. Bạn c&oacute; thể h&iacute;t phải v&agrave; nhiễm bệnh sau đ&oacute;.</p>\r\n\r\n<p>Tốt nhất, để tr&aacute;nh những bất trắc kh&ocirc;ng đ&aacute;ng c&oacute; cho sức khỏe, nhất l&agrave; trong thời kỳ đại dịch, đ&atilde; về nh&agrave; kh&ocirc;ng n&ecirc;n mặc quần &aacute;o mặc ở ngo&agrave;i đường.</p>\r\n\r\n<p><strong>G&acirc;y mụn</strong></p>\r\n\r\n<p>Nếu bạn bị mụn ở vai hoặc lưng, n&ecirc;n xem x&eacute;t kỹ hơn c&aacute;ch ăn mặc của m&igrave;nh. Quần &aacute;o l&agrave;m từ vải tổng hợp c&oacute; vẻ bắt mắt, nhưng thường khiến da kh&oacute; h&ocirc; hấp, lỗ ch&acirc;n l&ocirc;ng kh&ocirc;ng tho&aacute;ng kh&iacute;, g&acirc;y ra mụn.</p>\r\n\r\n<p>L&yacute; do kh&aacute;c khiến bạn mọc mụn ở cổ hoặc ngực c&oacute; thể do th&oacute;i quen mặc quần &aacute;o tập thể dục sau khi về nh&agrave;. Quần &aacute;o n&agrave;y được thiết kế gi&uacute;p bạn thoải m&aacute;i khi luyện tập. Nhưng nếu kh&ocirc;ng cởi ra sau khi buổi tập kết th&uacute;c sẽ l&agrave;m tắc nghẽn lỗ ch&acirc;n l&ocirc;ng v&agrave; mụn đầu đen.</p>\r\n\r\n<p><strong>Nguy cơ dạ d&agrave;y</strong></p>\r\n\r\n<p>Tiến sĩ Jamie A. Koufman, b&aacute;c sĩ v&agrave; nh&agrave; nghi&ecirc;n cứu về tr&agrave;o ngược axit người Mỹ, cho biết khoảng 37% nh&oacute;m tuổi 20-30 mắc chứng tr&agrave;o ngược. Ngay cả người kh&ocirc;ng c&oacute; nguy cơ cũng c&oacute; thể bị tr&agrave;o ngược nếu thường xuy&ecirc;n mặc quần &aacute;o chật. &quot;Sẽ kh&ocirc;ng hay nếu bạn mặc đồ chật khi đi ăn tối, đặc biệt l&agrave; buổi tối muộn trong ng&agrave;y&quot;, b&agrave; n&oacute;i.</p>\r\n\r\n<p>Theo tiến sĩ John Michael Li, một nh&agrave; thần kinh học tại Trung t&acirc;m Y tế ĐH Rush ở Chicago, rất nhiều người khi mặc quần b&oacute; s&aacute;t bị &quot;hội chứng quần b&oacute;&quot;, g&acirc;y kh&oacute; chịu ở bụng, ợ chua v&agrave; ợ hơi.</p>\r\n','tintuc2.jpg_1639826655922','Tại sao nên thay quần áo ngay khi về nhà?','Tại sao nên thay quần áo ngay khi về nhà?'),(75,'<p>Ch&uacute;ng ta đều th&iacute;ch phom quần &aacute;o mới mua bởi m&agrave;u sắc tươi s&aacute;ng, đường n&eacute;t r&otilde; r&agrave;ng v&agrave; c&aacute;c chi tiết trang tr&iacute; đều sắc n&eacute;t hơn so với khi đ&atilde; giặt.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&aacute;c chuy&ecirc;n gia khuy&ecirc;n bạn kh&ocirc;ng n&ecirc;n mặc những m&oacute;n đồ đ&oacute; khi chưa giặt v&igrave; những l&yacute; do sau.</p>\r\n\r\n<p><strong>Formaldehyde dư tr&ecirc;n mặt vải</strong></p>\r\n\r\n<p>Formaldehyde c&oacute; t&aacute;c dụng loại bỏ nếp nhăn, giữ m&agrave;u v&agrave; chống ăn m&ograve;n n&ecirc;n được sử dụng khi gia c&ocirc;ng quần &aacute;o. Do đ&oacute;, sản phẩm b&aacute;n ra sẽ c&oacute; một lượng formaldehyde tồn dư tr&ecirc;n bề mặt vải.</p>\r\n\r\n<p>Khi quần &aacute;o mới kh&ocirc;ng được giặt sạch, chất formaldehyde tồn dư c&oacute; thể g&acirc;y k&iacute;ch ứng da, g&acirc;y hại đường h&ocirc; hấp nếu bạn h&iacute;t phải, thậm ch&iacute; g&acirc;y ra c&aacute;c triệu chứng như vi&ecirc;m da v&agrave; ngứa da.</p>\r\n\r\n<p><strong>Thuốc nhuộm dư</strong></p>\r\n\r\n<p>Hầu hết c&aacute;c loại vải l&agrave;m từ sợi tổng hợp như polyester, acrylic... đều được nhuộm m&agrave;u bằng thuốc nhuộm azo-aniline. Những loại thuốc nhuộm n&agrave;y c&oacute; thể g&acirc;y ra những phản ứng nghi&ecirc;m trọng tr&ecirc;n da, đặc biệt l&agrave; trẻ nhỏ.</p>\r\n\r\n<p>Do đ&oacute;, khi bạn giặt quần &aacute;o mới mua lần đầu, c&oacute; thể bạn sẽ thấy quần &aacute;o phai nhẹ, l&agrave; dấu hiệu của m&agrave;u nhuộm vải dư thừa s&oacute;t lại.</p>\r\n\r\n<p><strong>Vi khuẩn, nấm v&agrave; c&ocirc;n tr&ugrave;ng</strong></p>\r\n\r\n<p>Một bộ quần &aacute;o, từ kh&acirc;u cắt vải đến kh&acirc;u tạo h&igrave;nh v&agrave; được b&agrave;y b&aacute;n sẽ trải qua nhiều kh&acirc;u, tiếp x&uacute;c với nhiều nh&acirc;n c&ocirc;ng, m&aacute;y m&oacute;c... Qu&aacute; tr&igrave;nh n&agrave;y, mặt vải c&oacute; thể c&oacute; vi khuẩn, nấm, c&ocirc;n tr&ugrave;ng...</p>\r\n\r\n<p><strong>Xử l&yacute; thế n&agrave;o với quần &aacute;o mới mua?</strong></p>\r\n\r\n<p>Quần &aacute;o mới n&ecirc;n được giặt theo hướng dẫn của sản phẩm. T&ugrave;y theo chất liệu vải v&agrave; kiểu d&aacute;ng trang phục, nh&agrave; sản xuất sẽ chỉ định c&aacute;ch giặt ph&ugrave; hợp. Với một số sản phẩm, bạn n&ecirc;n giặt ri&ecirc;ng, kiểm tra xem ch&uacute;ng c&oacute; bị phai m&agrave;u kh&ocirc;ng. Nếu ch&uacute;ng phai m&agrave;u nhiều, n&ecirc;n tiếp tục giặt ri&ecirc;ng v&agrave; sử dụng loại bột giặt ph&ugrave; hợp.</p>\r\n\r\n<p>N&ecirc;n giặt khăn trải giường v&agrave; khăn tắm mới để loại bỏ c&aacute;c h&oacute;a chất tồn dư tr&ecirc;n mặt vải v&igrave; ch&uacute;ng tiếp x&uacute;c trực tiếp với da. Việc giặt cũng sẽ cải thiện khả năng thấm h&uacute;t của vải bằng c&aacute;ch loại bỏ lớp phủ bề mặt.</p>\r\n\r\n<p>Bạn cũng c&oacute; thể ng&acirc;m quần &aacute;o với một ch&uacute;t muối trong v&agrave;i chục ph&uacute;t rồi giặt để khử tr&ugrave;ng v&agrave; gi&uacute;p vải cotton kh&ocirc;ng bị phai m&agrave;u. Sau đ&oacute;, bạn phơi dưới &aacute;nh s&aacute;ng mặt trời - gi&uacute;p l&agrave;m bay hơi formaldehyde chưa ph&acirc;n hủy.</p>\r\n\r\n<p>Với quần &aacute;o s&aacute;ng m&agrave;u c&oacute; khả năng hấp thụ &aacute;nh s&aacute;ng mạnh, n&ecirc;n cất ngay sau khi phơi kh&ocirc;. Việc n&agrave;y quần &aacute;o kh&ocirc;ng bị ngả sang m&agrave;u v&agrave;ng. Quần &aacute;o tối m&agrave;u hấp thụ tia UV c&oacute; thể bị bạc m&agrave;u, do đ&oacute; cũng kh&ocirc;ng n&ecirc;n phơi dưới nắng trực tiếp.</p>\r\n','tintuc3.jpg_1639826738850','Vì sao phải giặt quần áo mới','Chúng ta đều thích phom quần áo mới mua bởi màu sắc tươi sáng, đường nét rõ ràng và các chi tiết trang trí đều sắc nét hơn so với khi đã giặt. '),(229,'<p><s><em><strong>Đ&ocirc;i uy&ecirc;n ương&nbsp;<a href=\"https://vnexpress.net/chu-de/leonardo-dicaprio-3362\">Leonardo DiCaprio</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vnexpress.net/tag/camila-morrone-962568\">Camila Morrone</a>&nbsp;đang tận hưởng&nbsp;<a href=\"https://vnexpress.net/leonardo-dicaprio-di-bien-cung-ban-gai-4413238.html\">kỳ nghỉ</a>&nbsp;đầu năm tr&ecirc;n b&atilde;i biển Caribbe. Cặp sao hẹn h&ograve; hơn bốn năm qua v&agrave; k&iacute;n tiếng về mối quan hệ. Họ tham gia v&agrave;i sự kiện lớn nhưng kh&ocirc;ng bao giờ c&ugrave;ng l&ecirc;n thảm đỏ.</strong></em></s></p>\r\n\r\n<p>Camila Morrone sinh năm 1997, cao 1,75 m, c&oacute; số đo ba v&ograve;ng 86-61-94 cm, mang hai d&ograve;ng m&aacute;u Argentina v&agrave; Mỹ. Leonardo hơn bạn g&aacute;i 23 tuổi, l&agrave; sao hạng A ở Hollywood. Trong một phỏng vấn hồi th&aacute;ng 11 năm ngo&aacute;i với&nbsp;<em>Eonline,&nbsp;</em>t&agrave;i tử cho biết rất th&iacute;ch cuộc sống hiện tại với bạn g&aacute;i.</p>\r\n\r\n<p>Ảnh:&nbsp;<em>Backgrid</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/Leonardo-DiCaprio-2-Mega-1641975604.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6MdMp9AhMSgmnA6ZOSXTHA\" /></p>\r\n\r\n<p>Nhiều năm gắn b&oacute;, cả hai duy tr&igrave; phong c&aacute;ch đời thường đơn giản, năng động, kh&ocirc;ng m&agrave;u m&egrave;. Họ thường mặc t&ocirc;ng m&agrave;u trung t&iacute;nh v&agrave; đơn sắc gồm trắng, xanh dương, đen, x&aacute;m. Quần jeans, &aacute;o ph&ocirc;ng trắng v&agrave; những đ&ocirc;i sneakers d&aacute;ng cơ bản l&agrave; m&oacute;n kh&ocirc;ng thể thiếu trong tủ đồ của hai người. Ảnh:&nbsp;<em>Mega</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/leonardo-dicaprio-camila-morrone-2-1641976866.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9QWAqc8nEhTZ1PEqsnbNFg\" /></p>\r\n\r\n<p>Hồi th&aacute;ng 5/2019, cả hai tham dự Li&ecirc;n hoan phim Cannes. Họ c&ugrave;ng xuống phố với trang phục đơn giản. Camila được t&ocirc;n d&aacute;ng với đầm xẻ ngực tối giản, Leonardo trung th&agrave;nh với &aacute;o ph&ocirc;ng v&agrave; quần jeans. Ảnh:&nbsp;<em>Backgrid</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/leo-1641975604.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mm6vWYBsAyusWWiSZt2mlw\" /></p>\r\n\r\n<p>Cũng trong chuyến đi n&agrave;y, cả hai được bắt gặp chụp h&igrave;nh cho nhau tr&ecirc;n phố. Camila cởi gi&agrave;y cao g&oacute;t, tạo d&aacute;ng với đầm chấm bi đen trắng đồng m&agrave;u với quần &aacute;o của bạn trai. Ảnh:<em>&nbsp;Mega</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Video Player is loading.</p>\r\n\r\n<p>Replay</p>\r\n\r\n<p>Hiện tại&nbsp;0:27</p>\r\n\r\n<p>/</p>\r\n\r\n<p>Thời lượng&nbsp;0:27</p>\r\n\r\n<p>Đ&atilde; tải: 0%</p>\r\n\r\n<p>Tiến tr&igrave;nh: 0%</p>\r\n\r\n<p>Bỏ tắt tiếng</p>\r\n\r\n<p>To&agrave;n m&agrave;n h&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Leonardo DiCaprio v&agrave; bạn g&aacute;i Camila Morrone đi mua sắm ở T&acirc;y Hollywood năm 2019. Video:&nbsp;<em>The Hollywood Fix</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/Leonardo-DiCaprio-1-1641975605.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Uuk4p2PvGGCRBo6Mgt1qHw\" /></p>\r\n\r\n<p>Trong một lần dạo phố, Leonardo v&agrave; bạn g&aacute;i c&ugrave;ng chọn trang phục tối m&agrave;u gồm &aacute;o kho&aacute;c phao, măng t&ocirc; da, t&uacute;i Chanel. Ảnh:&nbsp;<em>Mega</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/leonardo-dicaprio-camila-morrone-1-1641975606.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=usXiWsGIEn4mKYJIDsmGcQ\" /></p>\r\n\r\n<p>M&ugrave;a lạnh, Camila chuộng kiểu phối gồm &aacute;o kho&aacute;c d&aacute;ng d&agrave;i với quần thể thao hoặc quần jeans, mũ beanie. T&agrave;i tử &quot;Titanic&quot; lựa chọn c&aacute;c loại &aacute;o kho&aacute;c được l&agrave;m từ chất liệu chống gi&oacute;, chống nước. Giống bạn g&aacute;i, Leonardo cũng c&oacute; v&agrave;i đ&ocirc;i bốt biker phong c&aacute;ch qu&acirc;n đội để thay đổi. Ảnh:&nbsp;<em>Backgrid</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/Leonardo-DiCaprio-3-1641975606.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=84p55NkPtMEe_BrD8LKRCg\" /></p>\r\n\r\n<p>Cặp sao c&ugrave;ng mặc &aacute;o trắng đồng điệu sneakers khi đi dạo phố ở Mỹ. Ảnh:&nbsp;<em>SplashNews</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/leonardo-dicaprio-camila-morrone-4-1641975608.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=VoJ5khDPR-xm5ibn766-Nw\" /></p>\r\n\r\n<p>Cặp sao c&ugrave;ng chọn mũ l&agrave;m điểm nhấn trong một lần dạo phố. Leonardo đội mũ cao bồi với &aacute;o kho&aacute;c thể thao v&agrave; d&eacute;p l&ecirc; của Nike. Camila diện v&aacute;y denim qu&acirc;y ngực c&ugrave;ng mũ rộng v&agrave;nh. Ảnh:&nbsp;<em>Backgrid</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2022/01/12/leonardo-dicaprio-camila-morrone-backgrid-1641975610.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=caCIdvLvYn96iaHgTgJ8Ig\" /></p>\r\n\r\n<p>Kiểu mặc cả &quot;c&acirc;y&quot; đồng bộ được cả hai lựa chọn với set đồ denim v&agrave; tracksuit. Ảnh:&nbsp;<em>Mega</em></p>\r\n','264061732_4127483870685580_7707083176305634494_n.jpg_1642000732284','Thời trang của Leonardo DiCaprio và người tìn','Leonardo DiCaprio và bạn gái Camila Morrone thích trang phục cơ bản, không họa tiết hay màu sắc lòe loẹt.');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (128,'Hà Tĩnh','2021-12-18 11:46:48','nguyenvietdong9e@gmail.con','Nguyễn Viết Đồng','0326610693',42,'Giao hàng ban ngày giúp mình',3),(135,'Hà Nội','2021-12-18 13:55:43','nguyenvietdong9e@gmail.con','Nguyễn Viết Đồng','0326610693',42,'Giao hàng ban ngay từ thứ 2-6',3),(138,'Hà Tĩnh','2021-12-21 03:07:42','dong@gmail.com','dong','0326610693',42,'ship ban ngày',2),(146,'Hà Tĩnh','2021-12-21 14:23:39','dong@gmail.com','dong','0326610693',42,'giao nhanh nha',2),(149,'Hà Tĩnh','2021-12-21 14:29:07','dong@gmail.com','dong','0326610693',148,'giao hàng',2),(164,'HN','2021-12-24 14:38:26','dong@gmail.com','đồng','0123456789',42,'Giao hàng nhanh',2),(166,'Hà Nội','2021-12-24 14:52:07','admin@gmail.com','Nguyễn Viết Đồng','0326610693',42,'Giao hàng',2),(169,'Hà Tĩnh','2021-12-25 06:39:46','dong@gmail.com','dong','0326610693',168,'giao hàng',3),(178,'Hà Tĩnh','2021-12-25 06:48:05','dong@gmail.com','dong','0326610693',168,'a',1),(180,'Hà Tĩnh','2021-12-25 14:45:30','dong@gmail.com','dong','0326610693',168,'giao hàng nhanh',1),(182,'Hà Tĩnh','2021-12-25 14:46:45','dong@gmail.com','dong','0326610693',168,',,,',2),(184,'Hà Tĩnh','2021-12-25 14:48:03','dong@gmail.com','dong','0326610693',168,'',2),(186,'Hà Tĩnh','2021-12-25 14:54:23','dong@gmail.com','dong','0326610693',168,'a',2),(190,'Nam Định','2021-12-26 11:10:38','hang@gmail.com','Hằng','09876543212',168,'Giao hàng vào ban ngày',2),(192,'Nam Định','2021-12-26 13:22:41','hang@gmail.com','Hằng','09876543212',168,'Giao hàng buổi sáng',0),(194,'Nam Định 2','2021-12-26 13:23:15','hangdong@gmail.com','Hằng ','09876543212',168,'Giao hàng buổi chiều trong tuần',0),(197,'Hà Tĩnh','2021-12-28 07:01:12','dong@gmail.com','dong','0326610693',196,'Giao hang nhanh',0),(207,'Nam Định 2','2021-12-28 07:15:26','hangdong@gmail.com','Hằng Đồng','09876543212',168,'giao hàng',1),(211,'Hà Tĩnh','2022-01-12 14:38:52','dong@gmail.com','dong','0326610693',210,'',0),(213,'Hà Tĩnh','2022-01-12 14:39:59','dong@gmail.com','dong','0326610693',210,'',3),(225,'Hà Tĩnh','2022-01-12 15:15:25','dong@gmail.com','dong','0326610693',224,'',1),(227,'Hà Tĩnh','2022-01-12 15:15:40','dong@gmail.com','dong12','0326610693',224,'',2),(237,'Hà Tĩnh','2022-01-12 15:23:56','dong@gmail.com','dong12','0326610693',224,'',3),(239,'Nam Định 2','2022-01-12 15:46:10','hangdong@gmail.com','Hằng Đồng','09876543212',168,'',3),(241,'Nam Định 2','2022-01-12 15:48:44','hangdong@gmail.com','Hằng ','09876543212',168,'',0),(281,'Hà Tĩnh','2022-01-13 03:01:40','dong@gmail.com','dong','0326610693',280,'',1),(284,'Hà Tĩnh','2022-01-13 03:01:57','dong@gmail.com','dong','0326610693',280,'',1),(286,'Hà Tĩnh','2022-01-13 03:08:43','dong@gmail.com','dong','0326610693',280,'',1),(288,'Hà Tĩnh','2022-01-13 03:09:05','dong@gmail.com','dong','0326610693',280,'',3),(293,'Hà Nội','2023-01-05 16:54:00','member@gmail.com','Nguyễn Viết Đồng','0326610693',42,'',3),(295,'Hà Nội','2023-01-09 12:44:47','member@gmail.com','Nguyễn Viết Đồng','0326610693',42,'',3),(297,'Hà Nội','2023-01-09 12:45:46','member@gmail.com','Nguyễn Viết Đồng','0326610693',42,'',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_detail` (
  `id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `color_id` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `size_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp6h92foixi83p3fyeatvn4r25` (`color_id`),
  KEY `FKgic892mhh720sx9wmoq4cjtgp` (`order_id`),
  KEY `FKlld1musq5vi551sjr67d9r95y` (`size_id`),
  KEY `FKg9ar77rwmbwbablvscd6qt8hh` (`product_id`),
  CONSTRAINT `FKg9ar77rwmbwbablvscd6qt8hh` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKgic892mhh720sx9wmoq4cjtgp` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKlld1musq5vi551sjr67d9r95y` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `FKp6h92foixi83p3fyeatvn4r25` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES (129,150000,150000,1,94,128,95,93),(130,299000,299000,1,110,128,111,108),(137,150000,150000,1,94,135,96,93),(139,150000,150000,1,94,138,95,93),(147,750000,250000,3,98,146,100,97),(150,897000,299000,3,110,149,111,108),(151,210000,210000,1,125,149,126,123),(165,299000,299000,1,109,164,111,108),(167,299000,299000,1,110,166,111,108),(170,840000,210000,4,124,169,127,123),(179,90000,90000,1,120,178,121,119),(181,299000,299000,1,109,180,111,108),(183,299000,299000,1,110,182,111,108),(185,299000,299000,1,109,184,112,108),(187,299000,299000,1,109,186,111,108),(191,299000,299000,1,109,190,112,108),(193,299000,299000,1,110,192,112,108),(195,299000,299000,1,109,194,111,108),(198,897000,299000,3,110,197,111,108),(208,1390000,139000,10,114,207,117,113),(209,1390000,139000,10,115,207,116,113),(212,2085000,139000,15,114,211,118,113),(214,90000,90000,1,120,213,122,119),(226,2085000,139000,15,115,225,118,113),(228,210000,210000,1,124,227,127,123),(238,990000,990000,1,232,237,233,230),(240,990000,990000,1,232,239,233,230),(242,990000,990000,1,232,241,235,230),(282,299000,299000,1,110,281,111,108),(283,995000,199000,5,103,281,107,102),(285,399000,399000,1,244,284,247,243),(287,299000,299000,1,110,286,111,108),(289,299000,299000,1,109,288,112,108),(294,299000,299000,1,110,293,111,108),(296,139000,139000,1,115,295,118,113),(298,399000,399000,1,244,297,248,243);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `pin` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int NOT NULL,
  `supply_id` int NOT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FKqqhaggsk4bjmq4py6ksr01pse` (`supply_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FKqqhaggsk4bjmq4py6ksr01pse` FOREIGN KEY (`supply_id`) REFERENCES `supplys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (93,'2023-01-09 12:46:36','<p><strong>Th&ocirc;ng tin sản phẩm</strong><br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p><strong>Đặc điểm nổi bật:</strong><br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','_1673268396250',_binary '',NULL,82,76,150000.00,'Áo khoác cao cấp',1),(97,'2021-12-27 10:48:31','<p><strong>Th&ocirc;ng tin sản phẩm</strong><br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p><strong>Đặc điểm nổi bật:</strong><br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1639827261847_240591703_3856365524464084_5945883017769432815_n.jpg',_binary '\0',NULL,83,76,250000.00,'Áo thun đẹp',3),(102,'2021-12-27 16:03:17','<p>Xuất xứ: Trung Quốc<br />\r\nChất liệu: jean<br />\r\nKiểu d&aacute;ng quần: Ống rộng<br />\r\nChiều d&agrave;i quần: Chiều d&agrave;i đầy đủ</p>\r\n\r\n<p>? ? Ngập tr&agrave;n mẫu mới ? ?✈ Form rộng Unisex cho nam, nữ &nbsp;?? Nhận THU HỘ ( ship COD ) to&agrave;n quốc ?H&igrave;nh Shop chụp, đảm bảo mặc l&ecirc;n form đẹp như ảnh? Vải đẹp , kh&ocirc;ng x&ugrave; , kh&ocirc;ng co r&uacute;t , mềm mịn d&agrave;y dặn , h&uacute;t mồ h&ocirc;i cực nhanh, mặc si&ecirc;u m&aacute;t .? TQ_unisex -Shop chuy&ecirc;n sỉ c&aacute;c sản phẩm với gi&aacute; si&ecirc;u rẻ nha mọi người<br />\r\nQuần được may bằng loại vải jean d&agrave;y &nbsp;lại cho người mặc cảm gi&aacute;c thật thoải m&aacute;i dể chịu cực k&igrave; khi hoạt động đặc biệt thấm h&uacute;t tốt tho&aacute;ng kh&iacute; gi&uacute;p bạn năng động hơn trong mọi thời tiết</p>\r\n\r\n<p>Mẫu jean s&aacute;ng mầu sẽ gi&uacute;p bạn dể phối đồ cho d&ugrave; bạn phối với loại &aacute;o n&agrave;o hay m&agrave;u n&agrave;o củng hợp ko bao giờ bị lỗi, đ&oacute; l&agrave; l&iacute; do m&agrave; mẫu quần n&agrave;y rất được đại đa số kh&aacute;ch h&agrave;ng chọn lựa v&agrave; l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thi trường thời trang:<br />\r\nChọn sz Theo bảng sz ảnh tr&ecirc;n nha.<br />\r\nQuần Jean baggy d&aacute;ng mới, trẻ trung hơn, s&agrave;nh điệu hơn&nbsp;<br />\r\nChất liệu vải b&ograve; mặc thoải m&aacute;i</p>\r\n','1639827353308_241181059_3876856752414961_1691317947481470325_n.jpg',_binary '\0',NULL,84,76,199000.00,'Quần vải',5),(108,'2021-12-18 11:37:24','<p>M&Ocirc; TẢ SẢN PHẨM ?bộ thể thao nam thu đ&ocirc;ng 3 sọc, quần &aacute;o thể thao nam nữ co gi&atilde;n 4 chiều, đồ bộ adidas cao cấp đủ size 3 m&agrave;u cơ bản kh&ocirc;ng n&ecirc;n so s&aacute;nh gi&aacute; với những loại rẻ tiền chất liệu nỉ dễ x&ugrave; hay loại freesize -Chất vải của đồ bộ thể thao l&agrave; vải thấm h&uacute;t tốt, gi&uacute;p người mặc lu&ocirc;n thoải m&aacute;i dễ chịu -H&agrave;ng may c&ocirc;ng ty với đường may chắc chắn, họa tiết &eacute;p nhiệt rất bền ko bong khi giặt, sản phẩm kh&ocirc;ng bai kh&ocirc;ng x&ugrave; khi giặt -bộ thể thao nam của Vayal c&oacute; thể giặt m&aacute;y thoải m&aacute;i - M&agrave;u đen nam t&iacute;nh mạnh mẽ - Thiết kế thể thao sang trọng - thoải m&aacute;i -Kết hợp theo bộ cực tinh tế v&agrave; mạnh mẽ, thu h&uacute;t mọi &aacute;nh nh&igrave;n - H&agrave;ng đảm bảo sản phẩm y h&igrave;nh, tư chụp kh&ocirc;ng qua bất k&igrave; Photoshop - H&igrave;nh ảnh chụp 100% tại shop N&Oacute;I KH&Ocirc;NG VỚI H&Agrave;NG K&Eacute;M CH&Acirc;T LƯỢNG Tất cả sản phẩm đều c&oacute; video do shop tự quay thật 100% n&ecirc;n ae y&ecirc;n t&acirc;m về chất lượng AE đừng so s&aacute;nh với h&agrave;ng chợ k&eacute;m chất lượng 100k mua về lại ko mặc được. Th&ocirc;ng tin sản phẩm bộ thể thao d&agrave;i tay nam - Logo in chắc chắn - Chất liệu: vải nỉ trơn cao cấp, đường may chắc chắn. - Giặt thoải m&aacute;i đảm bảo ko bai ko x&ugrave; - Thiết kế phong c&aacute;ch, trẻ trung, năng động</p>\r\n','1639827444225_241261763_3907208012713168_1503963830674132739_n.jpg',_binary '',NULL,85,76,299000.00,'Đồ đôi nam nữ',45),(113,'2021-12-18 11:38:42','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1639827521638_266408017_4150746398359327_1412873909514525704_n.jpg',_binary '',NULL,81,77,139000.00,'Áo Louis Vuitton',29),(119,'2021-12-18 11:39:28','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1639827567685_241281729_3856365401130763_5611949830914539579_n.jpg',_binary '',NULL,81,78,90000.00,'Áo adidas',30),(123,'2021-12-18 11:40:20','<p>Xuất xứ: Trung Quốc<br />\r\nChất liệu: jean<br />\r\nKiểu d&aacute;ng quần: Ống rộng<br />\r\nChiều d&agrave;i quần: Chiều d&agrave;i đầy đủ</p>\r\n\r\n<p>? ? Ngập tr&agrave;n mẫu mới ? ?✈ Form rộng Unisex cho nam, nữ &nbsp;?? Nhận THU HỘ ( ship COD ) to&agrave;n quốc ?H&igrave;nh Shop chụp, đảm bảo mặc l&ecirc;n form đẹp như ảnh? Vải đẹp , kh&ocirc;ng x&ugrave; , kh&ocirc;ng co r&uacute;t , mềm mịn d&agrave;y dặn , h&uacute;t mồ h&ocirc;i cực nhanh, mặc si&ecirc;u m&aacute;t .? TQ_unisex -Shop chuy&ecirc;n sỉ c&aacute;c sản phẩm với gi&aacute; si&ecirc;u rẻ nha mọi người<br />\r\nQuần được may bằng loại vải jean d&agrave;y &nbsp;lại cho người mặc cảm gi&aacute;c thật thoải m&aacute;i dể chịu cực k&igrave; khi hoạt động đặc biệt thấm h&uacute;t tốt tho&aacute;ng kh&iacute; gi&uacute;p bạn năng động hơn trong mọi thời tiết</p>\r\n\r\n<p>Mẫu jean s&aacute;ng mầu sẽ gi&uacute;p bạn dể phối đồ cho d&ugrave; bạn phối với loại &aacute;o n&agrave;o hay m&agrave;u n&agrave;o củng hợp ko bao giờ bị lỗi, đ&oacute; l&agrave; l&iacute; do m&agrave; mẫu quần n&agrave;y rất được đại đa số kh&aacute;ch h&agrave;ng chọn lựa v&agrave; l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thi trường thời trang:<br />\r\nChọn sz Theo bảng sz ảnh tr&ecirc;n nha.<br />\r\nQuần Jean baggy d&aacute;ng mới, trẻ trung hơn, s&agrave;nh điệu hơn&nbsp;<br />\r\nChất liệu vải b&ograve; mặc thoải m&aacute;i</p>\r\n','1639827620177_241182434_3876856645748305_1900347980400313917_n.jpg',_binary '',NULL,84,76,210000.00,'Quần nike',21),(171,'2021-12-28 06:51:05','<p>M&Ocirc; TẢ SẢN PHẨM ?bộ thể thao nam thu đ&ocirc;ng 3 sọc, quần &aacute;o thể thao nam nữ co gi&atilde;n 4 chiều, đồ bộ adidas cao cấp đủ size 3 m&agrave;u cơ bản kh&ocirc;ng n&ecirc;n so s&aacute;nh gi&aacute; với những loại rẻ tiền chất liệu nỉ dễ x&ugrave; hay loại freesize -Chất vải của đồ bộ thể thao l&agrave; vải thấm h&uacute;t tốt, gi&uacute;p người mặc lu&ocirc;n thoải m&aacute;i dễ chịu -H&agrave;ng may c&ocirc;ng ty với đường may chắc chắn, họa tiết &eacute;p nhiệt rất bền ko bong khi giặt, sản phẩm kh&ocirc;ng bai kh&ocirc;ng x&ugrave; khi giặt -bộ thể thao nam của Vayal c&oacute; thể giặt m&aacute;y thoải m&aacute;i - M&agrave;u đen nam t&iacute;nh mạnh mẽ - Thiết kế thể thao sang trọng - thoải m&aacute;i -Kết hợp theo bộ cực tinh tế v&agrave; mạnh mẽ, thu h&uacute;t mọi &aacute;nh nh&igrave;n - H&agrave;ng đảm bảo sản phẩm y h&igrave;nh, tư chụp kh&ocirc;ng qua bất k&igrave; Photoshop - H&igrave;nh ảnh chụp 100% tại shop N&Oacute;I KH&Ocirc;NG VỚI H&Agrave;NG K&Eacute;M CH&Acirc;T LƯỢNG Tất cả sản phẩm đều c&oacute; video do shop tự quay thật 100% n&ecirc;n ae y&ecirc;n t&acirc;m về chất lượng AE đừng so s&aacute;nh với h&agrave;ng chợ k&eacute;m chất lượng 100k mua về lại ko mặc được. Th&ocirc;ng tin sản phẩm bộ thể thao d&agrave;i tay nam - Logo in chắc chắn - Chất liệu: vải nỉ trơn cao cấp, đường may chắc chắn. - Giặt thoải m&aacute;i đảm bảo ko bai ko x&ugrave; - Thiết kế phong c&aacute;ch, trẻ trung, năng động</p>\r\n','240664827_3908927329207903_8740461290168670573_n.jpg_1640674265271',_binary '\0',NULL,83,76,100000.00,'Áo',10),(200,'2021-12-28 07:08:06','<p><strong>Th&ocirc;ng tin sản phẩm</strong><br />\r\n<em>- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</em></p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1640675286309_240592575_3908927349207901_4321478868460098762_n.jpg',_binary '',NULL,84,79,2000000.00,'Áo chanel',10),(216,'2022-01-12 14:54:59','<p><strong>Xuất xứ</strong>: Trung Quốc<br />\r\n<em>Chất liệu</em>: jean<br />\r\n<s>Kiểu d&aacute;ng quầ</s>n: Ống rộng<br />\r\nChiều d&agrave;i quần: Chiều d&agrave;i đầy đủ</p>\r\n\r\n<p>? ? Ngập tr&agrave;n mẫu mới ? ?✈ Form rộng Unisex cho nam, nữ &nbsp;?? Nhận THU HỘ ( ship COD ) to&agrave;n quốc ?H&igrave;nh Shop chụp, đảm bảo mặc l&ecirc;n form đẹp như ảnh? Vải đẹp , kh&ocirc;ng x&ugrave; , kh&ocirc;ng co r&uacute;t , mềm mịn d&agrave;y dặn , h&uacute;t mồ h&ocirc;i cực nhanh, mặc si&ecirc;u m&aacute;t .? TQ_unisex -Shop chuy&ecirc;n sỉ c&aacute;c sản phẩm với gi&aacute; si&ecirc;u rẻ nha mọi người<br />\r\nQuần được may bằng loại vải jean d&agrave;y &nbsp;lại cho người mặc cảm gi&aacute;c thật thoải m&aacute;i dể chịu cực k&igrave; khi hoạt động đặc biệt thấm h&uacute;t tốt tho&aacute;ng kh&iacute; gi&uacute;p bạn năng động hơn trong mọi thời tiết</p>\r\n\r\n<p>Mẫu jean s&aacute;ng mầu sẽ gi&uacute;p bạn dể phối đồ cho d&ugrave; bạn phối với loại &aacute;o n&agrave;o hay m&agrave;u n&agrave;o củng hợp ko bao giờ bị lỗi, đ&oacute; l&agrave; l&iacute; do m&agrave; mẫu quần n&agrave;y rất được đại đa số kh&aacute;ch h&agrave;ng chọn lựa v&agrave; l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thi trường thời trang:<br />\r\nChọn sz Theo bảng sz ảnh tr&ecirc;n nha.<br />\r\nQuần Jean baggy d&aacute;ng mới, trẻ trung hơn, s&agrave;nh điệu hơn&nbsp;<br />\r\nChất liệu vải b&ograve; mặc thoải m&aacute;i</p>\r\n','1641999299377_264061732_4127483870685580_7707083176305634494_n.jpg',_binary '',NULL,84,76,123999.00,'Quần nike',12),(230,'2022-01-12 15:22:17','<p><strong>Xuất xứ</strong>: Trung Quốc<br />\r\n<em>Chất liệu</em>: jean<br />\r\nKiểu d&aacute;ng quần: Ống rộng<br />\r\nChiều d&agrave;i quần: Chiều d&agrave;i đầy đủ</p>\r\n\r\n<p>? ? Ngập tr&agrave;n mẫu mới ? ?✈ Form rộng Unisex cho nam, nữ &nbsp;?? Nhận THU HỘ ( ship COD ) to&agrave;n quốc ?H&igrave;nh Shop chụp, đảm bảo mặc l&ecirc;n form đẹp như ảnh? Vải đẹp , kh&ocirc;ng x&ugrave; , kh&ocirc;ng co r&uacute;t , mềm mịn d&agrave;y dặn , h&uacute;t mồ h&ocirc;i cực nhanh, mặc si&ecirc;u m&aacute;t .? TQ_unisex -Shop chuy&ecirc;n sỉ c&aacute;c sản phẩm với gi&aacute; si&ecirc;u rẻ nha mọi người<br />\r\nQuần được may bằng loại vải jean d&agrave;y &nbsp;lại cho người mặc cảm gi&aacute;c thật thoải m&aacute;i dể chịu cực k&igrave; khi hoạt động đặc biệt thấm h&uacute;t tốt tho&aacute;ng kh&iacute; gi&uacute;p bạn năng động hơn trong mọi thời tiết</p>\r\n\r\n<p>Mẫu jean s&aacute;ng mầu sẽ gi&uacute;p bạn dể phối đồ cho d&ugrave; bạn phối với loại &aacute;o n&agrave;o hay m&agrave;u n&agrave;o củng hợp ko bao giờ bị lỗi, đ&oacute; l&agrave; l&iacute; do m&agrave; mẫu quần n&agrave;y rất được đại đa số kh&aacute;ch h&agrave;ng chọn lựa v&agrave; l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thi trường thời trang:<br />\r\nChọn sz Theo bảng sz ảnh tr&ecirc;n nha.<br />\r\nQuần Jean baggy d&aacute;ng mới, trẻ trung hơn, s&agrave;nh điệu hơn&nbsp;<br />\r\nChất liệu vải b&ograve; mặc thoải m&aacute;i</p>\r\n','1642000936508_263648617_4125230654244235_2707538150742822538_n.jpg',_binary '',NULL,84,76,990000.00,'Quần nike1',119),(243,'2022-01-13 01:25:25','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1642037124658_240592575_3908927349207901_4321478868460098762_n.jpg',_binary '',NULL,85,76,399000.00,'Đồ đôi',15),(249,'2022-01-13 01:26:42','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1642037202080_260768482_4095706640529970_4973509082624063293_n.jpg',_binary '\0',NULL,85,78,199000.00,'Đồ mùa đông',20),(253,'2022-01-13 01:29:43','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1642037382624_262807761_4128269023940398_2140309658395159747_n.jpg',_binary '\0',NULL,85,80,400000.00,'Đồ đi chơi',15),(259,'2022-01-13 01:32:25','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1642037545017_261997267_4105913699509264_1498264797163155773_n.jpg',_binary '',NULL,83,131,100000.00,'Áo thun đông',50),(266,'2022-01-13 01:33:05','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','1642037584892_263038416_4118338801600087_8073825086006449328_n.jpg',_binary '\0',NULL,82,78,299000.00,'Áo ấm',100),(273,'2023-01-09 12:46:44','<p>Th&ocirc;ng tin sản phẩm<br />\r\n- Xuất xứ: Trung Quốc<br />\r\n- Chất liệu: len l&ocirc;ng thỏ mềm mịn</p>\r\n\r\n<p>Đặc điểm nổi bật:<br />\r\n- Len d&agrave;y dăhn th&iacute;ch hợp mặc cho mua thu đ&ocirc;ng trong năm với form &aacute;o rộng r&atilde;i thoải m&aacute;i, chất liệu d&agrave;y ấm.<br />\r\n- Sợi len cực mịn đem lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng.<br />\r\n- Kiểu d&aacute;ng trẻ trung năng động dễ phối đồ cho tất cả c&aacute;c c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o hay c&aacute; t&iacute;nh.<br />\r\n- Len &iacute;t d&atilde;o n&ecirc;n c&aacute;c bạn c&oacute; thể giặt m&aacute;y, tuy nhi&ecirc;n n&ecirc;n vắt kiệt nước trước khi phơi.</p>\r\n','_1673268404387',_binary '',NULL,82,76,299000.00,'Áo khoác gió',123);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL,
  `size_name` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhs86kbnk4imwcyupgxp1g5dd2` (`product_id`),
  CONSTRAINT `FKhs86kbnk4imwcyupgxp1g5dd2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (95,'S',93),(96,'X',93),(100,'M',97),(101,'X',97),(105,'X',102),(106,'M',102),(107,'L',102),(111,'M',108),(112,'L',108),(116,'X',113),(117,'M',113),(118,'L',113),(121,'L',119),(122,'M',119),(126,'XL',123),(127,'XXL',123),(174,'X',171),(175,'M',171),(176,'L',171),(203,'X',200),(204,'M',200),(205,'S',200),(206,'L',200),(219,'S',216),(220,'L',216),(221,'X',216),(222,'M',216),(233,'M',230),(234,'L',230),(235,'X',230),(246,'M',243),(247,'X',243),(248,'L',243),(252,'X',249),(256,'X',253),(257,'L',253),(258,'M',253),(263,'S',259),(264,'L',259),(265,'M',259),(270,'L',266),(271,'M',266),(272,'S',266),(276,'X',273),(277,'M',273),(278,'L',273),(279,'S',273);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplys`
--

DROP TABLE IF EXISTS `supplys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplys` (
  `id` int NOT NULL,
  `supply_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplys`
--

LOCK TABLES `supplys` WRITE;
/*!40000 ALTER TABLE `supplys` DISABLE KEYS */;
INSERT INTO `supplys` VALUES (76,'Nike','Hà Tĩnh','dong@gmail.com','0326610693'),(77,'Louis Vuitton','Hà Nội','hung@gmail.com','01234879888'),(78,'Adidas','Hà Nội','adidas@gmail.com','0987678543'),(79,'Chanel','Nam Định','hang@gmail.com','0897651234'),(80,'Puma','Hà Nội','puma@gmail.com','09864561213'),(131,'Dior','Hà Nội','dior@gmail.com','09871243654'),(189,'Hằng','a','hang@gmail.com','0968775537');
/*!40000 ALTER TABLE `supplys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2a$12$T10IVpLAF.RcVyys1RabJujbhJaqoOzBxtHdOSBj6k43ICgcNuT.q','ADMIN','admin',1,NULL,NULL,NULL,NULL),(42,'$2a$12$.lcs1cuyN.RXoNq.wGFt1OWTLi4nYOCiXwXXf96t5tBWTJ8He/J6S','USER','user02',1,'Hà Nội','member@gmail.com','Nguyễn Viết Đồng','0326610693'),(148,'$2a$12$s3K3f/8NkopPBcSDi4a60O/KccvsQp9k4Y5vSd/bOjqbux0ElePu2','USER','user3',1,NULL,NULL,NULL,NULL),(168,'$2a$12$.lcs1cuyN.RXoNq.wGFt1OWTLi4nYOCiXwXXf96t5tBWTJ8He/J6S','USER','user04',1,'Nam Định 2','hangdong@gmail.com','Hằng ','09876543212'),(196,'$2a$12$wZOeDj9BAq7Fx247TBXBYe14dj3pmLeYOGJOLy.fiUQ2sg5vLtFWi','USER','user05',1,'Hà Tĩnh','dong@gmail.com','dong','0326610693'),(210,'$2a$12$p8a4v7XtWChNuGF.1Ww0Mu7V14skiElZlrQZLN39ofOYRujHMJ0l6','USER','user06',1,'Hà Tĩnh','dong@gmail.com','dong','0326610693'),(224,'$2a$12$GBhRSNeu1RhaokGTH9TRY.zhCS8cR0tQSBB0CBrnVzF9iweGBEiaK','USER','user07',1,'Hà Tĩnh','dong@gmail.com','dong12','0326610693'),(280,'$2a$12$BfQgPtWPTL65p1hU8wZn7uAIZVd4iZGu5E44ex3jh01wxIsOjWPQO','USER','user09',0,'Hà Tĩnh','dong@gmail.com','dong','0326610693'),(290,'$2a$12$BOHrOoVC0Ea09pGEtJO5XunRWM6yLUfq2eGoppa/.yTwGKfmBOAN.','USER','user10',1,NULL,NULL,NULL,NULL),(291,'$2a$12$T10IVpLAF.RcVyys1RabJujbhJaqoOzBxtHdOSBj6k43ICgcNuT.q','USER','user11',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 23:30:41
