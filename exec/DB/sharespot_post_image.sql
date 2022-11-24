CREATE DATABASE  IF NOT EXISTS `sharespot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sharespot`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: i7a505.p.ssafy.io    Database: sharespot
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `post_image`
--

DROP TABLE IF EXISTS `post_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_image` (
  `file_idx` bigint NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `file_path` text NOT NULL,
  PRIMARY KEY (`file_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_image`
--

LOCK TABLES `post_image` WRITE;
/*!40000 ALTER TABLE `post_image` DISABLE KEYS */;
INSERT INTO `post_image` VALUES (1,2,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7bfd6286-dbd3-4001-be42-8b9f8b0fdaae_장어.jpg'),(2,2,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/5fa6137c-119a-4c25-9585-4aa79000c1f9_장어2.jpg'),(3,4,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7940017f-9ac0-4f46-8d50-1c5783b7344a_1231321321321321321321321313.PNG'),(4,5,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/c0ad15d5-391c-45ea-b0ef-b427de88ed2a_KakaoTalk_20200504_164659954.jpg'),(5,5,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/21e67c22-7e8b-49af-baa9-74dd32f7d152_e-mail.jpg'),(6,6,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/be223427-017c-43c3-8512-736946b8d667_떡뽁이.jpg'),(7,7,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/e51b6583-e2de-4a50-b859-7bd58b4d38d0_군자 텐동.jpg'),(8,7,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/5b4554d0-1764-4a91-9daf-ebd7606cb477_군자 치킨.jpg'),(9,8,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/faff9427-714a-4cdd-98df-561de8c1c0fd_동네.jpg'),(10,9,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/58ccf27e-95a5-4bfb-aad1-41372271642b_멀캠.jpg'),(11,10,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/73a36657-aff1-4614-8eb2-63f53ebfb42e_햄버거.jpg'),(12,10,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ca370272-5132-4de7-92cf-5d6b0e3aca22_햄버거2.jpg'),(13,11,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/b3ecfb34-3554-4c06-ae9b-81549168da73_술안주.jpg'),(14,11,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/16ff22bf-2704-418f-9805-3ad03345ef91_술안주2.jpg'),(15,12,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/9a1584c9-5ae7-4074-ad84-9b5df6ad12bd_케이크.jpg'),(16,12,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/455b04e6-b12e-4a11-b4ac-3101cb4adc61_케이크2.jpg'),(17,13,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/1edd1f25-45c2-43b1-a867-0a274272351f_빵.jpg'),(18,13,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ffd7579a-fe10-437c-88ae-cd30049cffae_빵2.jpg'),(19,14,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/19133bb0-ad35-47eb-870b-807d6b940e4b_뭉티기.jpg'),(20,14,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/f4ac6469-8120-47b5-967e-76e9a7da4efe_뭉티기2.jpg'),(21,15,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/4358e719-8107-4edb-828b-fae7264b3251_수플레.jpg'),(22,15,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/e2eeccee-7e9c-4486-9941-cb94612c633d_수플레2.jpg'),(23,16,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/3cb1adf1-ac63-4c4e-b4f3-8cbfcf2c8b7c_샐러드.jpg'),(24,16,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/1e5b3899-967c-485e-9167-2e1f1ce72ac1_샐러드2.jpg'),(25,17,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/8e339f5f-32a6-441e-8213-6e56f90ffb8a_노티드.jpg'),(26,17,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/761b36bf-9225-4263-bacc-4bce0b5653ca_노티드2.jpg'),(27,18,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/cb1668e8-3a52-4eff-9451-1c6c1d58223e_텐동.jpg'),(28,18,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ce8e0a51-4e13-4f70-b9f1-c92091543e5d_텐동2.jpg'),(29,19,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/d4ad95ae-2cd2-4a16-bf70-11aa2c0baafc_쌀국수2.jpg'),(30,19,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/dfff0308-acd0-46a7-8a91-58050583c828_쌀국수.jpg'),(31,20,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/b4ffa32d-e7ed-4dd5-8b9d-525b6bf911ba_곱전2.jpg'),(32,20,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/170182b3-c0f0-41c6-a387-025e1532c96c_곱전.jpg'),(33,21,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7be38182-04f6-4aa4-b8a1-9c08897631f9_20210824_132148.jpg'),(34,22,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/59264d3a-73a0-4154-abb2-f466f4766322_20210824_132148.jpg'),(35,23,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/e27723bc-e441-4731-99a6-915e68bda69e_20210824_132148.jpg'),(36,24,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/3aae6581-854f-4ba6-87a5-69327b6e0f3a_20210824_132148.jpg'),(37,25,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/cf1df65d-f2e0-4910-b69e-de51c5cd9b1e_20210824_132148.jpg'),(38,26,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ce9b3bb8-2999-478c-84f5-a9b64e880149_IMG_3281.JPG'),(39,26,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ef82f432-7436-484b-947f-b26c3b06a910_IMG_3394.JPG'),(40,26,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/a8d7bddd-78cd-41f6-b7e6-04bb67cd3f21_IMG_3432.JPG'),(41,27,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/80f4b444-074e-4b0e-86b7-423042b6fa27_20210824_132148.jpg'),(42,28,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/faa2904c-4d1c-4e82-aa10-54f013833d11_야구장.jpg'),(43,29,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/815f25f4-71f5-4bfb-bc94-974fd4dc49f4_강릉.jpg'),(44,29,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7efe0339-b520-4fc2-b5cc-41cb6aa45037_강릉1.jpg'),(45,30,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/c2423eff-e92d-4d91-a742-ffd1734894cd_전주.jpg'),(46,31,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/62faf743-a229-4503-9e82-152120a2933e_레서판다.jpg'),(47,31,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/03d700b2-a352-4e72-bb6d-e258ed16e140_판다.jpg'),(48,32,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7b6667ce-9774-4026-ab19-23ae570f1955_블라디.jpg'),(49,32,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/d0d9e4fb-31ff-453a-b03d-b363f5284c07_블라디1.jpg'),(50,33,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/7b6667ce-9774-4026-ab19-23ae570f1955_블라디.jpg'),(51,33,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/d0d9e4fb-31ff-453a-b03d-b363f5284c07_블라디1.jpg'),(52,34,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/57c1452c-45c2-492b-bb77-255b65dd3dca_동네.jpg'),(53,35,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/c4d7e251-36f0-4355-97f3-5966bf42c83f_성수 카페.jpg'),(54,36,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/5025d4bc-fdd4-41b0-b9e0-f7668f687f36_갈십리.jpg'),(55,37,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/ba9060f0-6d8d-4d7c-a90b-141f75d9c962_PHOTO_1873.JPG'),(56,38,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/9430b227-d1fd-467e-828f-df9dfccb395c_PHOTO_1523.JPG'),(57,38,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/cb5d9fc4-c29f-4499-91cc-206efd01f940_PHOTO_1565.JPG'),(58,39,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/4451a0b2-ac7b-49c4-a794-c01f0290e356_PHOTO_2633.JPG'),(59,39,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/fc4b1440-0d5c-4c1c-9338-5d072233ff38_PHOTO_2653.JPG'),(60,39,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/2cca7cb3-e18b-460c-bbe9-634167096049_PHOTO_2627.JPG'),(61,40,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/9dc7aa3d-31e1-4570-845e-6bdbd18dfb54_고양이.jpg'),(62,41,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-17/5480a7b6-f86b-4c9b-b640-2c3d9ec988a8_칼국수.jpg'),(63,42,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/03baf7af-6953-40e2-9b61-10ad3eef7416_식단표 (2).JPG'),(64,43,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/28eceb82-d1c8-4282-b994-6d4942f18508_식단표 (2).JPG'),(65,44,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/dbcd6ae8-bbe1-4b71-834c-d81c0d31054a_KakaoTalk_20220818_090610885.jpg'),(66,45,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/30dff440-c5fa-4d80-8960-05624f232ac5_bee_sad.jpg'),(67,46,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/ab3d9309-3e5e-424e-95f8-968443542560_bee_angry.png'),(68,47,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/451934c8-d1d7-4d2d-bab9-fdc9c454e8f8_식단표 (2).JPG'),(69,48,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/29526d8f-e841-4c69-8f06-ebd405f44fa9_20210824_132148.jpg'),(70,49,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/fb6df910-5d31-48bd-ae45-a5089d4f22d6_20210824_132148.jpg'),(71,50,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/3e3dea23-88e2-4d65-b036-b744ddab493a_20210824_132148.jpg'),(72,51,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/1cea4606-37d6-4021-8ffd-bf931814c15a_20210824_132148.jpg'),(73,53,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/19fffdef-a89c-41f7-a8ac-48a157f19532_20210824_132148.jpg'),(74,55,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/94101607-29ab-4c46-8e07-d0d208ebff06_코빅.jpg'),(75,55,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/0aff18f8-dc52-485d-a92d-4091516ce77e_코빅2.jpg'),(76,55,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/568c2a9c-7d5f-4639-ae7c-390f10e8cfee_코빅3.jpg'),(77,56,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/cd336262-f20f-48eb-85cb-4a7a49022ec5_넬.jpg'),(78,56,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/76b4bdb4-3a21-4472-a44c-d9feb0202e6a_넬2.jpg'),(79,57,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/10aff8a9-95e1-458c-9801-9e3c2e00cb0f_에드시런.jpg'),(80,57,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/1ceb591e-611d-452e-b713-ec18d68a0269_에드시런2.jpg'),(81,58,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/75bfaed4-147f-4b4e-bac1-6dfd7cc4e3e0_태양의서커스.jpg'),(82,58,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/ddf7db5a-8e3f-4a16-bef7-325657ea2a1c_태양의서커스2.jpg'),(83,59,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/b489b1df-15d5-4ab2-a48d-f20fd882ce18_싸이.jpg'),(84,59,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/9a573a43-d281-4143-867a-de2e9f093b2f_싸이2.jpg'),(85,59,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/f0603d53-04da-4ed0-b80e-c021682ce207_싸이3.jpg'),(86,60,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/765f36c3-38c3-4568-8e31-6e595713d929_잠실야구장1.jpg'),(87,60,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/da17ef3b-0a07-4f06-99ba-67a1fba8bf7c_잠실야구장2.jpg'),(88,61,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/fef3f40e-90ce-4628-9cf1-e5179e9e9e2b_축구.jpg'),(89,62,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/8f85d98a-eb1a-40bb-a31e-cdffe2e105fd_20220605_160200.jpg'),(90,63,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/a02cd299-492e-4032-9357-93a2a2080de5_boardgame.jpg'),(91,64,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/4df41aad-d502-426b-a45b-e62a9becb6df_창경궁2.jpg'),(92,64,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/b596ea6f-6a2a-47cc-a8db-49d06de8c2e4_창경궁.jpg'),(93,65,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/377efb76-9ae7-4f29-9cc8-cc33a185a673_빠지.jpg'),(94,66,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/a1ac17d2-62e9-441d-8c8d-114c289018dc_화담숲1.jpg'),(95,66,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/988d39af-7915-47bb-bed0-d208ac30b16d_화담숲2.jpg'),(96,67,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/15a46df4-d6d6-498e-b298-01d6aba5585b_테니스.jpg'),(97,68,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/808e750b-b1a8-43ec-951e-cf412782fbdf_서울대공원.jpg'),(98,68,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/ffe22772-e251-4d27-85ff-88824648e637_서울대공원2.jpg'),(99,68,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/62d84bac-2071-47ad-8a71-40a5884802bb_서울대공원3.jpg'),(100,69,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/ed5b81d1-ceff-41fb-b126-88f9c8cac438_1549615226666-10.jpg'),(101,69,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/35f72ce0-9994-4dbf-97a9-4fdeee797a5e_20190208_132240.jpg'),(102,70,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/b7269054-f038-4611-a3cb-448bee539cd4_20211230_174636.jpg'),(103,70,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/4cfde450-f3d0-4c1b-b5f2-22edda04b998_20211230_170003.jpg'),(104,81,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/443f8605-4969-4ff2-9063-3c705e2addfd_i13578939271.jpg'),(105,82,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/a6c6a978-5f5c-4c4e-a538-82e906d0b995_rn_image_picker_lib_temp_ad04f2e1-5375-4edc-ad82-b3dfde18beb9.jpg'),(106,82,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/5464bb0c-facc-4a93-ade0-e703ef11a467_식단표 (2).JPG'),(107,83,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/6648743a-d5c1-4862-bc2f-4e8c5c5ec102_B9207B30-C1C6-42C4-9496-66CC77A0889B.jpeg'),(108,84,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/71560bc7-af27-4977-9508-eb8dd378249c_IMG_20190624_161736_273.jpg'),(109,85,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/0b3aa7c5-55ac-4ea8-b647-d6a73a82d648_서울_5반_김태웅.jpeg'),(110,86,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/63491eb7-4f55-4810-8415-dfb53e541ace_20220818_214555.jpg'),(111,87,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/5ced28c7-352c-44c8-867f-f888f756f976_서울_5반_김태웅.jpeg'),(112,89,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/1a4ba209-e857-46d9-9c34-c91160194ae0_20220604_182046.jpg'),(113,90,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/ffb6dc76-0c7d-4c4f-857d-97413955cc7f_20210717_151644.jpg'),(114,91,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-18/b295d922-6425-4944-8ec3-ef174ed07ffe_1660833570387.png'),(115,93,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-19/7709d993-7e2c-4626-a3a7-6a5223ea8bdc_37C7848B-CE83-4282-8FFE-2E0A17289006.jpeg'),(116,93,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-19/4a7855f0-50d8-40ab-b039-347e124e8cae_D6527108-46AB-4E13-8498-E141792B55E4.jpeg'),(117,93,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-19/74d638f2-c95a-4a35-a7ea-996a92c5a9bb_BAB8C89B-8C41-43D3-A0B9-236698888158.jpeg'),(118,94,'https://i7a505.p.ssafy.io/api/file?imagePath=/home/ubuntu/src/image/2022-08-19/72c58bbe-f1b9-4c52-96a6-af3a88921de9_rn_image_picker_lib_temp_8dabe3eb-188c-49c2-a04b-cea3c802dc8e.jpg');
/*!40000 ALTER TABLE `post_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 10:18:13