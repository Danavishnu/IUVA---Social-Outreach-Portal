CREATE DATABASE  IF NOT EXISTS `iuva` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `iuva`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: iuva
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `causes`
--

DROP TABLE IF EXISTS `causes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `causes` (
  `cause_id` int NOT NULL,
  `cause_name` varchar(50) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`cause_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `causes`
--

LOCK TABLES `causes` WRITE;
/*!40000 ALTER TABLE `causes` DISABLE KEYS */;
INSERT INTO `causes` VALUES (200001,'Save the Girl Child','Save the girl child is an ambitious scheme of the Government of India which is intended to generate massive awareness, improvement  of quality of welfare services for females and helping them (girls and women) access these services better.'),(200002,'Cauveri Calling','Cauvery Calling is a first of its kind campaign, setting the standard for how India’s rivers – the country’s lifelines – can be revitalized. It will initiate the revitalization of Cauvery river and transform the lives of 84 million people.'),(200003,'National Service Scheme','The National Service Scheme (NSS) is an Indian government-sponsored public service program conducted by the Ministry of Youth Affairs[1] and Sports of the Government of India. Popularly known as NSS, the scheme was launched in Gandhiji\'s Centenary year in 1969. Aimed at developing student\'s personality through community service, NSS is a voluntary association of young people in Colleges, Universities and at +2 level working for a campus-community (esp. Villages) linkage.'),(200004,'United By Vote','The #UnitedByVote campaign echoes Benetton’s commitment to India as a purposefully important market. With the successful initiative of #UnitedbyHalf, #UnitedbyFaith,#UnitedbyHope,#UnitedbyHer,#UnitedbyPurpose, #UnitedbyDonts, #UnitedbyChange, #UnitedbyPlay among others; Benetton has been constantly taking initiatives to work towards the five key priorities for gender equality: Sustainable livelihood, Non-discrimination and equal opportunities, Quality education, Access to healthcare and Combating violence.'),(200005,'powerlessqueen','Project Nanhi Kali is jointly managed by the K. C. Mahindra Education Trust and Naandi Foundation that supports the education of underprivileged girls.\n                Since inception, Project Nanhi Kali has empowered and changed the destinies of 3,10,000 underprivileged girls in poor rural, remote tribal and urban areas across 11 states in India. Project Nanhi Kali even works with parents and communities to counsel them of the importance of sending their girls to school.'),(200006,'Cure International India Trust','Every year in India, 50,000 children are born with clubfoot, a congenital deformity where the feet of the infant grows inwardly and makes it difficult to walk. Since 2009, CURE International India Trust (CIIT) has started working towards creating awareness about clubfoot helping eradicate this disability.'),(200007,'HelpAge India','Founded in 1960, HelpAge strives to improve the quality of life of the disadvantaged elderly citizens in India.\n                It works on several fronts such as quality healthcare, universal Pension, action against elder abuse. It also advocates for elder-friendly policies and their implementation.'),(200008,'Make A Difference (MAD)','Make A Difference works towards empowering children in orphanages and shelters.\n                Through education, the organization ensures that these disadvantaged children are economically independent to achieve their dreams.\n                Their volunteers commit a year and spend between 2 and 10 hours every week mentoring, teaching and interacting with children in order to ensure that they get the support and care they need during childhood.'),(200009,'Civil right proct','Civil rights are an expansive and significant set of rights that are designed to protect individuals from unfair treatment; they are the rights of individuals to receive equal treatment (and to be free from unfair treatment or discrimination) in a number of settings -- including education, employment, housing, public accommodations, and more -- and based on certain legally-protected characteristics.');
/*!40000 ALTER TABLE `causes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (16057,'Ram Newton','danavishnu9999@gmail.com','vishnu17','admin'),(100001,'ludwigDDDD1','something1@gmail.com','846ed264e0a0d0999355b088640240b48475b932c565ffdb53e5a8b5ce336d5e','admin'),(100002,'valkyAAAA2','something2@gmail.com','75a8818b43f0e3ced90c96382031e977e0125c0afe182d0c231b67178559a337','admin'),(100003,'toastBBBB3','something3@gmail.com','9895b4735ab13ff8bfdcac9b05ae90f900a37b44976fda2e4ca5c84a2868714c','admin'),(100004,'abeSSSSSSS2','something4@gmail.com','c8de38a869a4babdb3025b6a8e21923532f0ff9d6fb371d929d0e0b10b6e29bf','normal'),(100005,'wendyFFFFF2','something5@gmail.com','f39a94c2a5fc07416c0b70c1332dff866f9f1dfed3a06ebfee7dd391c10091f3','normal'),(100006,'sydDDDDDD2','something6@gmail.com','0ee0d24fb9df74e16c065ba7222b9f5db16708701bbe5894ed900aff42ae271b','normal'),(100007,'moistSSSSS2','something7@gmail.com','4c0462695d17e98c1f4baad657c43fc7fd91a189301519dafdccc6babd3b3fa0','normal'),(100008,'nakamuraHHHHH2','something8@gmail.com','c3ef4e98e83e96a33ebc4536ec098bca654a16c9784bbc4b59f8a88ce89a54ff','admin'),(100009,'French','something9@gmail.com','4e3a2edcd665dc15a71b6e57535cdd2816e7b4b6b2527bcaca35514096f9be6d','admin'),(2461072,'Dana Vishnu','danavishnu9999@gmail.com','1be981d14e878eafa30822071c3b302c71f9c8444c11d43f9bbd8606084c3dc9','admin'),(3743731,'danavishnu','vishnu5522@gmail.com','1be981d14e878eafa30822071c3b302c71f9c8444c11d43f9bbd8606084c3dc9','admin'),(6240360,'Narendra','narendra@gmail.com','e9f0f76a21693a334de62fde92c567f322aa1b890a90fd889bb6251154cdd070','normal');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donation_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `cause_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date_of_donation` date DEFAULT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `user_id` (`user_id`),
  KEY `cause_id` (`cause_id`),
  CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `credentials` (`user_id`),
  CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`cause_id`) REFERENCES `causes` (`cause_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (400001,100001,200001,1000,'2000-02-22'),(400002,100002,200002,1000,'2003-08-21'),(400003,100003,200003,1000,'2002-09-12'),(400004,100004,200004,1000,'2001-10-12'),(400005,100005,200005,1000,'2010-11-11'),(400006,100006,200006,1000,'2000-02-16'),(400007,100007,200007,1000,'2011-02-19'),(400008,100008,200008,1000,'2019-12-18'),(400009,100009,200009,1000,'2018-05-17'),(20131850,3743731,200008,9999,'2020-11-25'),(25316366,3743731,200001,200,'2020-11-26'),(25834519,3743731,200001,1000,'2020-11-25'),(26249844,3743731,200007,100,'2020-11-25'),(27165722,3743731,200009,1999,'2020-11-25');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `user_id` int DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `personal_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `credentials` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES (100001,'luds','aghren','male'),(100002,'valk','rae','female'),(100003,'disguised','toast','male'),(100004,'abe','lols','female'),(100005,'wendy','neytri','female'),(100006,'sydney','nas','male'),(100007,'moist','krip','male'),(100008,'hikaru','naka','female'),(100009,'ryan','higa','female'),(3743731,'Dana','Vishnu','male'),(6240360,'Narendra','Balla','male');
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `post_title` varchar(50) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `credentials` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (300001,'Poverty and homelessness','Poverty and homelessness are worldwide problems. According to Habitat for Humanity, one-quarter of the world\'s population lives in conditions that harm their health and safety. Many do not have shelter, a basic human need for survival.\n                This social issue also goes beyond the 25% of the population directly affected. Because of the lack of shelter for this vulnerable population, there is greater stress on government and social programs, including schools and healthcare systems.',100001),(300002,'Climate','A warmer, changing climate is a threat to the entire world. Climate change affects the entire world population, and the Union of Concerned Scientists calls this social issue \"one of the most devastating problems humanity has ever faced.\"\n                The 800 million people already living in extreme poverty will be impacted most severely. Around the world, people are already noticing warmer winters, more severe storms and rainfall events, and more frequent wildfires. These issues already put stress on governments and systems in many countries.',100002),(300003,'World Population','As the population of the world grows, resources become scarcer. The United Nations reports that the current population of 7.7 billion people is expected to grow in coming decades, with a projection of 8.5 billion people by 2030.\n                The fastest growing areas of the world, such as sub-Saharan Africa, often face already scarce resources like land for farming. As the population becomes more than the country can sustain, people will need to move elsewhere to avoid starvation and homelessness.',100003),(300004,'Immigrant Crisis','People move from one country to another, and in itself, this isn\'t a social problem. However, immigration can place stress on government programs and social systems within a country, and it can be a divisive topic in a society. These immigration-related stresses affect many people.\n                For instance, the Pew Research Center reports that the United States has more immigrants than any other country; 13.6% of the U.S. population identifies as an immigrant. This is a divisive issue in the U.S. population, with some groups calling for stricter immigration laws. Although the majority of U.S. citizens welcome immigrants, a 2019 Gallup poll indicates 23% of people think immigration is the most important social issue facing the country.',100001),(300005,'Know Your Rights!','Civil rights, or the rights of citizens in a country to have equal treatment socially and politically, is another one of the most significant social issues in America and around the world. More than 40 years after the Civil Rights Act passed, almost 60% of African Americans still live in segregated neighborhoods and 90% of African Americans report that racial discrimination is still a major problem.',100002),(300006,'Disparity','A report from the Pew Research Center Fact Tank indicates that about 50% of Americans feel the country needs to do more to address the income gap between men and women. Women still lag behind men in wages and top leadership positions held, although they are now more likely to attain a college degree.\n                Worldwide, the situation is even more extreme. UNICEF reports that 12 million girls are married before they reach adulthood, and 98 million high school-aged girls do not attend school.',100003),(300007,'Life Comes First ','When people are sick or hurt, they need access to medical care to get better. According to the Centers for Disease Control and Prevention (CDC), almost one in 20 U.S. citizens do not obtain needed medical care because of the cost. Worldwide, 97 million people become impoverished by seeking needed medical care, as reported by the World Health Organization (WHO). Governments around the world are working on this problem, as are nonprofit organizations.',100001),(300008,'Healthy > Tasty ','Some types of social problems are health-based, but they also have an impact on socio-economic issues. For instance, the CDC reports that 18.5% of U.S. children are considered obese, having a body mass index at or above the 95th percentile.\n                However, the childhood obesity epidemic doesn\'t affect all children equally. Children in families where the parents have more education and higher incomes are far less likely to be obese than those in families with less education and lower incomes.',100008),(300009,'Bully Me Not ! ','Obesity can also have an impact on another important social issue: bullying. The PACER National Bullying Prevention Center indicates that obesity and other appearance issues are among the top reasons children report being bullied.\n                Despite recent anti-bullying initiatives, more than 20% of American students report being bullied. A third of those being bullied report that it happens at least once or twice each month. Additionally, 24% of middle school students report they have been victims of cyberbullying, or bullying conducted online.',100009);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 19:15:48
