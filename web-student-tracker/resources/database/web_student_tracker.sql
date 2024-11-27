-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: web_student_tracker
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Aarav','Sharma','aarav.sharma@gmail.com'),(2,'Vivaan','Verma','vivaan.verma@gmail.com'),(3,'Ananya','Gupta','ananya.gupta@gmail.com'),(4,'Diya','Patel','diya.patel@gmail.com'),(5,'Kavya','Iyer','kavya.iyer@gmail.com'),(6,'Rohan','Nair','rohan.nair@gmail.com'),(7,'Ishita','Kapoor','ishita.kapoor@gmail.com'),(8,'Aditya','Singh','aditya.singh@gmail.com'),(9,'Nikhil','Reddy','nikhil.reddy@gmail.com'),(10,'Pooja','Chowdhury','pooja.chowdhury@gmail.com'),(11,'Siddharth','Joshi','siddharth.joshi@gmail.com'),(12,'Sneha','Mishra','sneha.mishra@gmail.com'),(13,'Aryan','Malhotra','aryan.malhotra@gmail.com'),(14,'Riya','Kulkarni','riya.kulkarni@gmail.com'),(15,'Priya','Das','priya.das@gmail.com'),(16,'Abhishek','Chaturvedi','abhishek.chaturvedi@gmail.com'),(17,'Swati','Agarwal','swati.agarwal@gmail.com'),(18,'Varun','Gaba','varun.gaba@gmail.com'),(19,'Meera','Srivastava','meera.srivastava@gmail.com'),(20,'Harsh','Pandey','harsh.pandey@gmail.com'),(22,'lakshay','chaudhary','lakshaychaudhary2003@gmail.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 18:59:32
