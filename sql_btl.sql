CREATE DATABASE  IF NOT EXISTS `quanlisanpham` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quanlisanpham`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlisanpham
-- ------------------------------------------------------
-- Server version	8.0.30
--
-- Table structure for table `category`
--
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `category`
--
LOCK TABLES `category` WRITE;
INSERT INTO `category` VALUES (1,'Trẻ em',NULL,NULL),(2,'Nam',NULL,NULL),(3,'Nữ',NULL,NULL),(4,'Phụ Kiện Khác',NULL,NULL),(5,'Giảm Giá',NULL,NULL),(6,'Sản phẩm mới',NULL,NULL),(7,'Sản phẩm bán chạy',NULL,NULL),(8,'Sản phẩm phổ biến',NULL,NULL);
UNLOCK TABLES;
--
-- Table structure for table `feedback`
--
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(39) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `subject_name` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `feedback`
--
LOCK TABLES `feedback` WRITE;
INSERT INTO `feedback` VALUES (1,'Duong','Thang','Chithang0210@gmail.com','0373728765','phản hồi','chất lượng sản phẩm tốt giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,77,NULL),(2,'Nguyen','Tuan','Nguyentuan@gmail.com','0324728755','phản hồi','chất lượng sản phẩm không tốt giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,78,NULL),(3,'Vo','Khai','vovankhai@gmail.com','0224728755','phản hồi giày','chất lượng giày  tốt giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,79,NULL),(4,'Le','Tuan','letuan@gmail.com','0254728755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,80,NULL),(5,'Nguyen','Khai','nguyenKhai@gmail.com','0234728755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,81,NULL),(6,'Nguyen','Manh','nguyenmanh@gmail.com','0254728255','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,82,NULL),(7,'Nguyen','Son','nguyenson@gmail.com','0654728755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,83,NULL),(8,'Nguyen','Cuong','nguyencuong@gmail.com','0963551123','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,84,NULL),(9,'Nguyen','Huy','nguyenhuy@gmail.com','0254728725','phản hồi áo thun','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,85,NULL),(10,'Duong','Minh','DuongMinh@gmail.com','0254728755','phản hồi giay','chất lượng sản phẩm không tốt đề nghị khắc phục',NULL,'2022-08-10 20:30:30',NULL,86,NULL),(11,'Nguyen','Ha My','nguyenhamy@gmail.com','0244728755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,101,NULL),(12,'Truong','Tram','truongbaotram@gmail.com','0254728745','phản hồi áo','chất lượng giày dặn giá cả hợp lí',NULL,NULL,NULL,102,NULL),(13,'Le','Hoang','nguyenLe@gmail.com','0254728755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,2,NULL),(14,'Nguyen','Hoang','nguyen@gmail.com','0254728752','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,67,NULL),(15,'Nguyen','Hoang','nguyen@gmail.com','0254728754','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,88,NULL),(16,'Nguyen','Hoang','nguyen@gmail.com','02547218755','phản hồi áo','chất lượng áo giày dặn giá cả hợp lí',NULL,'2022-08-10 20:30:30',NULL,89,NULL),(17,'Võ','Văn Khải','VankhaiMom0210@gmail.com','0982542311','Đánh giá sản phẩm','Chất lượng sản phẩm chất lượng chưa được tốt',88,'2022-08-10 20:30:30',NULL,88,NULL),(18,'Lê Thị','Mỹ Kiều','Mykieu12@gmail.com','0443239765','Đánh giá chất lượng phục vụ','nhân viên có thái độ không tốt với khách hàng',96,'2022-08-10 20:30:30',NULL,90,NULL),(19,'Nguyễn','Huy Hoàng','Huyhoang21@gmail.com','0933238765','Đánh giá sản phẩm','Sản phẩm không đúng với hình ảnh',98,'2022-09-10 20:30:30',NULL,91,NULL),(20,'Nguyễn','Hùng Cường','HungCuong12@gmail.com','0423239765','Đánh giá chất lượng phục vụ','nhân viên phục vụ tận tình chu đáo',100,'2022-08-10 10:30:30',NULL,92,NULL),(21,'Nguyễn Thanh','Huy','ThanhHuy12@gmail.com','0243239765','Đánh giá chất lượng phục vụ','nhân viên phục vụ tốt đánh giá cao lần sau sẽ ghé.',99,'2022-08-10 20:30:30',NULL,93,NULL),(22,'Vũ','Anh Dũng','Anhdung21@gmail.com','0243239765','Đánh giá chất lượng sản phẩm','áo đẹp, chất vãi giày dặn',97,'2022-08-10 20:30:30',NULL,94,NULL),(23,'Nguyễn','Văn Mạnh','VanManh@gmail.com','0453239765','Đánh giá chất lượng phục vụ','nhân viên có thái độ không tốt với khách hàng',103,'2022-08-10 20:30:30',NULL,95,NULL),(24,'Nguyễn','Văn Cường','vancuong0210@gmail.com','0943239765','Đánh giá chất lượng phục vụ','nhân viên có thái độ không tốt với khách hàng',104,'2022-08-10 20:30:30',NULL,96,NULL),(25,'Trần','Ngọc Linh','Ngoclinh@gmail.com','0433239765','Đánh giá chất lượng phục vụ','nhân viên có thái độ không tốt với khách hàng',101,'2022-08-10 20:30:30',NULL,97,NULL);
UNLOCK TABLES;
--
-- Table structure for table `galery`
--
DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) DEFAULT NULL,
  `thumbnail_01` varchar(250) DEFAULT NULL,
  `thumbnail_02` varchar(250) DEFAULT NULL,
  `thumbnail_03` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `galery`
--
LOCK TABLES `galery` WRITE;
INSERT INTO `galery` VALUES (1,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(2,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(3,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(4,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(5,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(6,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(7,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(8,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(9,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(10,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(11,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(12,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(13,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(14,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(15,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(16,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(17,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg'),(18,NULL,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg');
UNLOCK TABLES;
--
-- Temporary view structure for view `getalladmin`
--
DROP TABLE IF EXISTS `getalladmin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `getallproduct`
--
DROP TABLE IF EXISTS `getallproduct`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `getalluser`
--
DROP TABLE IF EXISTS `getalluser`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `order_detail`
--
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `count_number` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orderproduct` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `order_detail`
--
LOCK TABLES `order_detail` WRITE;
INSERT INTO `order_detail` VALUES (1,'order_01','sneaker_01',1600000,2),(2,'order_02','sneaker_02',1600000,1),(3,'order_03','sneaker_03',1600000,5),(4,'order_04','sneaker_04',1650000,4),(5,'order_05','sneaker_05',1800000,2),(6,'order_06','sneaker_06',1800000,1),(7,'order_07','sneaker_07',1800000,4),(8,'order_08','balo_01',1400000,2),(9,'order_09','balo_02',770000,2);
UNLOCK TABLES;
--
-- Table structure for table `orderproduct`
--
DROP TABLE IF EXISTS `orderproduct`;
CREATE TABLE `orderproduct` (
  `order_id` varchar(20) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `orderproduct`
--
LOCK TABLES `orderproduct` WRITE;
INSERT INTO `orderproduct` VALUES ('order_01','Dương Chí Thắng','Chithang0210@gmail.com','0373728765','Hue','nothing','2021-08-11 13:23:44',1,2),('order_02','Nguyễn Trung Dũng','trungdung@gmail.com','0373728763','Ninh Thuan','nothing','2021-08-11 13:23:44',0,NULL),('order_03','Trần Văn Nam','Vannam@gmail.com','0373728765','Ho Chi Minh','nothing','2021-08-11 13:23:44',1,NULL),('order_04','Nguyễn Lê Phước Thịnh','Phuocthinh0210@gmail.com','0373728765','Ho Chi Minh','nothing','2021-08-11 13:23:44',0,NULL),('order_05','Nguyễn Hải Triều','Haitrieu0210@gmail.com','0373728765','Hà Nội','nothing','2021-08-11 13:23:44',1,NULL),('order_06','Nguyễn Hữu Thắng','Huuthang@gmail.com','0273728765','Hà Nội','nothing','2021-08-11 13:23:44',0,NULL),('order_07','Lê Mạnh Trường','manhtruong1230@gmail.com','0373728765','Hà Tĩnh','nothing','2021-08-11 13:23:44',1,NULL),('order_08','Nguyễn Văn Chung','VanChung@gmail.com','0373728725','Quảng Bình','nothing','2021-08-11 13:23:44',1,NULL),('order_09','Dương Chí Cường','Chicuong0210@gmail.com','0372728765','Hue','nothing','2021-08-11 13:23:44',1,NULL),('order_10','Lê Thị Mỹ Kiều','Mykieu12@gmail.com','0372876542','Daklak','dat ao ','2022-08-11 13:23:44',1,96),('order_11','Nguyễn Hùng Cường','Hungcuong','0872123157','Binh Phuoc','dat giay','2022-07-11 12:22:30',1,100),('order_12','Võ Văn Khải','Vovankhai@gmail.com','03732338765','Binh Dinh','nothing','2021-08-11 12:29:44',1,88),('order_13','Trần Ngọc Linh','Ngoclinh123@gmail.com','0443238765','Gò Vấp,Ho Chi Minh','dat ao','2022-05-22 10:12:59',1,101),('order_14','Nguyễn Văn Mạnh','vanmanh2011@gmail.com','0443235765','Gò Vấp,Ho Chi Minh','dat ao','2022-08-22 09:03:30',1,103),('order_15','Nguyễn Mạnh Cường','Manhcuong12@gmail.com','0952515151','Gò Vấp,Ho Chi Minh','dat giay','2022-06-24 09:09:30',1,102),('order_16','Trần Thái Linh','tranthailinh@gmail.com','0946234567','Hà Nội','dat giay','2022-08-22 08:30:30',1,105),('order_17','Lâm Đình Khoa','lamdinhkhoa@gmail.com','0946244567','Đồng Tháp','dat ao','2022-08-22 08:30:30',1,106),('order_18','Phùng Thanh Độ','phungthanhdo@gmail.com','0296244567','Cao Bằng','dat giay','2022-08-22 08:30:30',1,107),('order_19','Nguyễn Thanh Tuấn','Thanhtuan0210@gmail.com','0372628765','Vung tau','nothing','2021-07-11 13:23:44',1,89),('order_20','Nguyễn Thanh Huy','ThanhHuy0210@gmail.com','0372628765','Ho Chi Minh','nothing','2021-06-11 13:23:44',0,99),('order_21','Nguyễn Huy Hoang','huyhoang@gmail.com','0373725765','Ho Chi Minh','nothing','2021-08-10 13:23:44',1,98),('order_22','Vũ Anh Dũng','vuanhdung0@gmail.com','0373720765','Lam Dong','nothing','2021-06-02 13:23:44',0,97),('order_23','Lê Gia Huy','giahuy0210@gmail.com','0373728765','Ho Chi Minh','nothing','2021-08-11 13:23:44',1,NULL),('order_24','Lê Văn Nam','vannam0210@gmail.com','0373728765','Ho Chi Minh','nothing','2021-08-11 13:23:44',0,NULL),('order_25','Lê Văn Dương','VanDuong0@gmail.com','0373728765','Ho Chi Minh','nothing','2021-08-11 13:23:44',1,NULL);
UNLOCK TABLES;
--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` varchar(30) NOT NULL,
  `category_id` varchar(30) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `product`
--
LOCK TABLES `product` WRITE;
INSERT INTO `product` VALUES ('balo01','Balo nam va nu','Poly Chuck Plus 1.0',770000,550000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/balo-4.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('balo02','balo nam va nu','Speed 2 Backpack',700000,500000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/balo-3.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('balo03','balo nam va nu','Sport Duffel',1000000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/balo-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('shirt01','áo nam','MetalConsHoodie',1400000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/T-shirt-2.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('shirt02','áo nam','Converse Collegiate',600000,400000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/T-shirt.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('sneaker_01','giày nam','One Star Sunbaked',1600000,1200000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-1.jpg','san pham giay dep','2022-09-10 09:30:30',NULL,0),('sneaker_02','giày nam','One Star Sunbaked',1600000,1200000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-3.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('sneaker_03','giày nữ','One Star Sunbaked',1650000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-4.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('sneaker_04','giày nữ','One Star Love',1800000,1400000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-onestar-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ',NULL,NULL,0),('sneaker_05','giày nam','One Stproductproductar Love',1800000,1400000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-onestar-2.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_06','giày nam','One Star Love',1800000,1200000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-onestar-3.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('sneaker_07','giày nam','One Star Love',1800000,1400000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-onestar-4.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,0),('sneaker_08','giày nữ','Converse Star Chevron Jooger',950000,600000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/jogger.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_09','giày trẻ em','One Star Love',1800000,1200000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-onestar-1.jpg','san pham giay dep chat luong cao','2022-09-10 09:30:30',NULL,0),('sneaker_10','giày trẻ em','Jack Purcell Pro',1050000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-8.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_11','giày nam','One Star Pro',1050000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-7.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_12','giày nữ','Chuck Taylor AllStar',1120000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-6.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_13','giày nữ','84 Thunderbolt',1120000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-5.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_14','giày nam','Chuck Taylor AllStar',1400000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-4.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_15','giày nam','Break Point Leather',1120000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-3.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_16','giày nữ','Cons Auckland',9150000,500000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-2.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_17','giày nam','Chuck Taylor Classic',1250000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-classic-3.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_18','giày nam','Cons PL 67',1050000,900000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_19','giày nữ','Chuck Taylor All Star Creatures Boston x London Transport',800000,500000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/sale-off-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_20','giày nam','Chuck Taylor All Star Simple Step Gaming Camo',900000,600000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/kid-1-1-600x384.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('sneaker_21','giày nam ','Chuck Taylor All Star Simple Step Summer Fundamentals',750000,600000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/kid-2-600x384.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL),('sneaker_22','giày nữ','Chuck Taylor All Star Simple Step Summer Fundamentals',900000,600000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/kid-4-600x384.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_23','giày trẻ em','Chuck Taylor All Star Simple Step Boston x London Transport',900000,600000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/kid-6-600x384.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_24','giày nam','Chuck Taylor All Star Simple Step Watermelon',800000,500000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/kid-3-600x384.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_25','giày trẻ em','Chuck Taylor Classic',1250000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-classic-4.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_26','giày trẻ em','Chuck Taylor Classic',1250000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-classic-5.jpg','thiết kế năng động khỏe khoắn kết họp với nhiều ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_27','giày trẻ em','Chuck Taylor Classic',1250000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-classic-6.jpg','thiết kế năng động khỏe khoắn','2022-09-10 09:30:30',NULL,NULL),('sneaker_28','giày nam','Chuck Taylor Classic',1250000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-classic-7.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_29','giày nữ','One Star Sunbaked',1660000,1200000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',1),('sneaker_39','giày trẻ em','One Star Sunbaked',1650000,1000000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/women-sunbaked-2.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30','2022-10-10 09:30:30',0),('trousers_01','quần nam','Converse X Suicidal',700000,500000,'http://mauweb.monamedia.net/converse/wp-content/uploads/2019/05/T-shirt-1.jpg','thiết kế năng động khỏe khoắn kết hợp với nhiều loại chất liệu da dạng ','2022-09-10 09:30:30',NULL,NULL);
UNLOCK TABLES;
--
-- Table structure for table `role`
--
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code_admin` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'admin_01','Dương Chí Thắng','2022-08-10 20:30:30','2022-09-10 20:30:30'),(2,'admin_02','Nguyễn Thanh Tuấn','2022-08-10 20:30:30',NULL);
UNLOCK TABLES;
--
-- Table structure for table `transaction`
--
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `payment` int DEFAULT NULL,
  `payment_info` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `sercurity` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `transaction`
--
LOCK TABLES `transaction` WRITE;
INSERT INTO `transaction` VALUES (1,1,2,'Dương Chí Thắng','Chithang0210@gmail.com','0373728765',2,3200000,'Thanh Toán Khi Nhận Hàng','Đã Phê Duyệt','an toan san pham','2022-09-10 10:20:20','sneaker_01'),(2,0,88,'Võ Văn Khải','VankhaiMom0210@gmail.com','0982542311',2,3200000,'Thanh toán online','Chưa Phê duyệt','an toan san pham','2022-09-10 10:20:20','sneaker_02'),(3,0,89,'Nguyễn Thanh Tuấn','Tuannguyen31@gmail.com','0243728765',2,3400000,'Thanh Toán Khi Nhận Hàng','Chưa Phê Duyệt','an toan san pham','2022-09-12 10:20:20','sneaker_03'),(4,1,105,'Trần Thái Linh','tranthailinh@gmail.com','0946234567',1,1800000,'Thanh Toán Online','Đã Phê Duyệt','an toan san pham','2022-09-12 10:20:20','sneaker_04'),(5,1,106,'Lâm Đình Khoa','lamdinhkhoa@gmail.com','0946244567',4,7200000,'Thanh Toán Khi Nhận Hàng','Đã Phê Duyệt','an toan san pham','2022-08-22 08:30:30','sneaker_04'),(6,1,107,'Phùng Thanh Độ','phungthanhdo@gmail.com','0296244567',2,3600000,'Thanh Toán Khi Nhận Hàng','Đã Phê Duyệt','an toan san pham','2022-08-22 08:30:30','sneaker_05'),(7,0,96,'Lê Thị Mỹ Kiều','Mykieu12@gmail.com','0443239765',3,7200000,'Thanh Toán Khi Nhận Hàng','Chưa Phê Duyệt','an toan san pham','2022-08-22 08:30:30','sneaker_06'),(8,1,100,'Nguyễn Hùng Cường','Hungcuong0221@gmail.com','0443238365',2,2000000,'Thanh Toán Online ','Đã Phê Duyệt','an toan san pham','2022-08-22 08:30:30','sneaker_07'),(9,0,99,'Nguyễn Thanh Huy','thanhhuy21@gmail.com','0923456722',2,2500000,'Thanh Toán Khi Nhận Hàng','Chưa Phê Duyệt','an toan san phaalter ','2022-08-22 08:30:30','sneaker_08');
UNLOCK TABLES;
--
-- Table structure for table `user`
--
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(40) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `user`
--
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (2,'Dương Chí Thắng','Chithang0210@gmail.com','0373728765','Phu Vang,Hue','lonelyboyagain2002','2022-09-10 10:20:20','2022-10-10 10:10:10',NULL,NULL,NULL,0),(88,'Võ Văn Khải','VankhaiMom0210@gmail.com','0982542311','Phu My, Binh Dinh','Khaithichkieu123','2022-09-10 10:20:20','2022-10-11 10:12:20',NULL,NULL,NULL,0),(89,'Nguyễn Thanh Tuấn','Tuannguyen31@gmail.com','0243728765','Vung tau','toibingu123','2022-09-12 10:20:20','2022-10-09 10:20:45',NULL,NULL,NULL,0),(90,'Trần Minh Long','Minhlong21@gmail.com','0423728765','Q5,Ho Chi Minh','hasgdhhda','2022-08-12 10:20:20','2022-10-09 10:06:39',NULL,NULL,NULL,0),(91,'Trần Ngọc Hân','NgocHan21@gmail.com','0443748765','Binh Thanh,Ho Chi Minh','akjs23jdb','2022-09-12 10:20:20','2022-10-08 10:10:10',NULL,NULL,NULL,0),(92,'Lê Hoài Thương','HoaiThuong21@gmail.com','0445238765','Binh Tan,Ho Chi Minh','a2js23jdb','2022-09-13 10:20:20','2022-10-10 10:10:11',NULL,NULL,NULL,0),(93,'Phan Thị Thanh','Phanthanh21@gmail.com','0943238725','Tan Binh,Ho Chi Minh','hsabhs9973d','2022-08-11 10:20:20','2022-10-10 10:10:12',NULL,NULL,NULL,0),(94,'Lê Hà Vinh','havinh21@gmail.com','0743238765','Q3,Ho Chi Minh','dbdbsg65','2022-08-10 11:20:20','2022-09-10 10:10:30',NULL,NULL,NULL,0),(95,'Lê Nhật Minh','NhatMinh21@gmail.com','0543238765','Q3,Ho Chi Minh','anhyeuem123','2022-07-11 09:09:20','2022-09-11 20:30:30',NULL,NULL,NULL,0),(96,'Lê Thị Mỹ Kiều','Mykieu12@gmail.com','0443239765','Dak Lak','a2js23jdb','2022-06-11 10:10:20','2022-09-12 20:30:20',NULL,NULL,NULL,0),(97,'Vũ Anh Dũng','Anhdung21@gmail.com','0442238765','Lam Dong','anhdung123','2022-06-11 10:20:20','2022-08-12 20:30:30',NULL,NULL,NULL,0),(98,'Nguyen Huy Hoang','Huyhoang21@gmail.com','0933238765','Q12,Ho Chi Minh','huyhoang123','2022-07-11 20:20:20','2022-07-12 20:30:20',NULL,NULL,NULL,0),(99,'Nguyễn Thanh Huy','thanhhuy21@gmail.com','092345672','Dong Thap','a2js23jdb','2022-06-23 19:30:45','2022-09-12 20:30:30',NULL,NULL,NULL,0),(100,'Nguyễn Hùng Cường','Hungcuong0221@gmail.com','0443238365','Binh Phuoc','abscdww12','2022-06-22 10:10:10','2022-05-12 20:20:20',NULL,NULL,NULL,0),(101,'Trần Ngọc Linh','Ngoclinh123@gmail.com','0443238765','Q4,Ho Chi Minh','a2js23jdb','2022-05-22 10:12:59','2022-04-12 20:20:20',NULL,NULL,NULL,0),(102,'Nguyễn Mạnh Cường','Manhcuong12@gmail.com','0952515151','Gò Vấp,Ho Chi Minh','a2js23jdb','2022-06-24 09:09:30','2022-03-04 20:20:20',NULL,NULL,NULL,0),(103,'Nguyễn Văn Mạnh','vanmanh2011@gmail.com','0443235765','Gò Vấp,Ho Chi Minh','bdvvdasvgg','2022-08-22 09:03:30','2022-02-02 20:20:20',NULL,NULL,NULL,0),(104,'Nguyễn Văn Cường','vancuong0201@gmail.com','0943238225','Lam Dong','ddhab124hj2','2022-08-22 08:30:30','2022-02-01 16:30:30',NULL,NULL,NULL,0),(105,'Trần Thái Linh','tranthailinh@gmail.com','0946234567','Hà Nội','nhismbimchua','2022-08-22 08:30:30','2022-02-01 16:30:30',NULL,NULL,NULL,0),(106,'Lâm Đình Khoa','lamdinhkhoa@gmail.com','0946244567','Đồng Tháp','rambo123','2022-08-22 08:30:30','2022-02-01 16:30:30',NULL,NULL,NULL,0),(107,'Phùng Thanh Độ','phungthanhdo','0296244567','Cao Bằng','domixi123','2022-08-22 08:30:30','2022-08-22 08:30:30',NULL,NULL,NULL,0);
UNLOCK TABLES;
DELIMITER ;
DELIMITER ;;
--
-- Dumping events for database 'quanlisanpham'
--
--
-- Dumping routines for database 'quanlisanpham'
--
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkAdmin`(
    IN input_name VARCHAR(255),
    OUT result VARCHAR(255)
)
BEGIN
    
    DECLARE CheckNameAdmin varchar(20) DEFAULT '';
     
  
    SELECT code_admin INTO CheckNameAdmin FROM role
    WHERE name = input_name;
 
  
    IF (CheckNameAdmin = 'admin_01') THEN
            SET result = 'Đây là tài khoản admin';
	ELSE
            SET result = 'Không tìm thấy tài khoản admin';
    END IF;
END ;;
DELIMITER ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkUser`(
    IN input_user_id VARCHAR(255),
    OUT result VARCHAR(255)
)
BEGIN
    
    DECLARE CheckUserId int(20) DEFAULT 0;
     
  
    SELECT user_id INTO CheckUserId FROM user
    WHERE user_id = input_user_id;
 
  
    IF (CheckUserId <= 0) THEN
            SET result = 'Không tìm Thấy User';
	ELSE
            SET result = 'Đã tìm thấy user';
            select * from user where user_id = CheckUserId;  
    END IF;
END ;;
DELIMITER ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInfoUser`()
BEGIN
   select user_id,fullname,email, phone_number,address from quanlisanpham.user;
END ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProduct`()
BEGIN
   select * from quanlisanpham.product;
END ;;
DELIMITER ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Users_Buy_Two_More_Product`(in amount_product int(10))
BEGIN
	SELECT user_id,fullname,amount FROM transaction
    WHERE amount > amount_product;
END ;;
DELIMITER ;

