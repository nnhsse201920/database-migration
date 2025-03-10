-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: registart
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB-1:10.4.11+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `OrganizerID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `LastContact` datetime DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Medium` int(11) NOT NULL,
  PRIMARY KEY (`OrganizerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizers`
--

DROP TABLE IF EXISTS `organizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizers` (
  `ID` int(11) NOT NULL,
  `FirstN` varchar(255) DEFAULT NULL,
  `LastN` varchar(255) DEFAULT NULL,
  `OrganizationID` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--hi
--
-- Dumping data for table `organizers`
--

LOCK TABLES `organizers` WRITE;
/*!40000 ALTER TABLE `organizers` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `OrganizerID` int(11) NOT NULL,
  `TargetID` int(11) NOT NULL,
  `Relationship` float DEFAULT NULL,
  PRIMARY KEY (`OrganizerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `FirstN` varchar(255) DEFAULT NULL,
  `LastN` varchar(255) DEFAULT NULL,
  `ID` varbinary(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Andrew',' Osepek',' 2',' gmail',' 63'),('Andrew',' Osepek',' Null',' Null',' Null'),('Andrew',' Osepek',' ',' ',' '),('Andrew',' Osepek',' ',' ',''),('Cynthia Aguilar',' Lopez',' ',' ',''),('Mehak',' Ahuja',' ',' ',''),('Marigold',' Alexander',' ',' ',''),('Dylan',' Allen',' ',' ',''),('Rachel',' Alma',' ',' ',''),('Zaineh',' Alrahami',' ',' ',''),('Maria',' Angelovski',' ',' ',''),('Raymond',' Bandzoumouna',' ',' ',''),('Stephanie',' Belfor',' ',' ',''),('Adelyn',' Benaitis',' ',' ',''),('Gabriele',' Bertolozzi',' ',' ',''),('Ryan',' Bianucci',' ',' ',''),('Milica',' Bojovic',' ',' ',''),('Chimere',' Boyd',' ',' ',''),('Grace',' Bradley',' ',' ',''),('Mackenzie',' Bradley',' ',' ',''),('Samantha',' Brigida',' ',' ',''),('Stuart',' Brown',' ',' ',''),('William',' Bruce',' ',' ',''),('Emanuela',' Brudaglio',' ',' ',''),('Stacy',' Buchner',' ',' ',''),('Ana',' Calic',' ',' ',''),('Ian',' Campagna',' ',' ',''),('Daniel',' Campos',' ',' ',''),('Jordan',' Carey',' ',' ',''),('Olivia',' Carmody',' ',' ',''),('Brian',' Casper',' ',' ',''),('Zakai',' Charles',' ',' ',''),('Denis',' Chen',' ',' ',''),('Eric',' Chen',' ',' ',''),('Christina',' Cheng',' ',' ',''),('Jeffrey',' Cheng',' ',' ',''),('Owen',' Chilcoat',' ',' ',''),('Samantha',' Ciappa',' ',' ',''),('Christina',' Ciobotaru',' ',' ',''),('Kelly',' Clarke',' ',' ',''),('Tyler',' Cody',' ',' ',''),('Grace',' Condie',' ',' ',''),('Victoria',' Connelly',' ',' ',''),('Ryan',' Conner',' ',' ',''),('Nibbana',' Cooper',' ',' ',''),('Audrey',' Cordeiro',' ',' ',''),('Roberto',' Cortes',' ',' ',''),('Ian',' Crew',' ',' ',''),('Willie',' Cui',' ',' ',''),('Linnea',' Dale',' ',' ',''),('Angela',' Dauber',' ',' ',''),('Jana',' Dawson',' ',' ',''),('Aurelius',' DelToro',' ',' ',''),('Harpreet',' Dhadde',' ',' ',''),('Holland',' Dillon',' ',' ',''),('Dziugas',' Dir┼╛ys',' ',' ',''),('Kaylin',' Ditmars',' ',' ',''),('Kristen',' Dorsey',' ',' ',''),('Elaina',' Drummond',' ',' ',''),('Bowen',' Duan',' ',' ',''),('Marie',' Edwards',' ',' ',''),('Sofia',' Encarnacion',' ',' ',''),('John',' Essa',' ',' ',''),('Jayden',' Falanco',' ',' ',''),('Dominick',' Feldman',' ',' ',''),('Anna',' Fitzgerald',' ',' ',''),('Catherine',' Fleming',' ',' ',''),('Austin',' Francoeur',' ',' ',''),('Kyle',' Friedman',' ',' ',''),('Pedro',' Gamez',' ',' ',''),('Ariunzaya',' Gantulga',' ',' ',''),('Joanna',' Gao',' ',' ',''),('Sean',' Gibson',' ',' ',''),('Annabel',' Gilligan',' ',' ',''),('Dominick',' Godde',' ',' ',''),('Jake',' Goldstein',' ',' ',''),('Lauryn',' Grier',' ',' ',''),('Maria',' Grimaldo',' ',' ',''),('Allen',' Gu',' ',' ',''),('Helenna',' Gu',' ',' ',''),('Logan',' Guenther',' ',' ',''),('Nathaniel',' Guill',' ',' ',''),('Andrew',' Osepek',' ',' ',''),('Cynthia Aguilar',' Lopez',' ',' ',''),('Mehak',' Ahuja',' ',' ',''),('Marigold',' Alexander',' ',' ',''),('Dylan',' Allen',' ',' ',''),('Rachel',' Alma',' ',' ',''),('Zaineh',' Alrahami',' ',' ',''),('Maria',' Angelovski',' ',' ',''),('Raymond',' Bandzoumouna',' ',' ',''),('Stephanie',' Belfor',' ',' ',''),('Adelyn',' Benaitis',' ',' ',''),('Gabriele',' Bertolozzi',' ',' ',''),('Ryan',' Bianucci',' ',' ',''),('Milica',' Bojovic',' ',' ',''),('Chimere',' Boyd',' ',' ',''),('Grace',' Bradley',' ',' ',''),('Mackenzie',' Bradley',' ',' ',''),('Samantha',' Brigida',' ',' ',''),('Stuart',' Brown',' ',' ',''),('William',' Bruce',' ',' ',''),('Emanuela',' Brudaglio',' ',' ',''),('Stacy',' Buchner',' ',' ',''),('Ana',' Calic',' ',' ',''),('Ian',' Campagna',' ',' ',''),('Daniel',' Campos',' ',' ',''),('Jordan',' Carey',' ',' ',''),('Olivia',' Carmody',' ',' ',''),('Brian',' Casper',' ',' ',''),('Zakai',' Charles',' ',' ',''),('Denis',' Chen',' ',' ',''),('Eric',' Chen',' ',' ',''),('Christina',' Cheng',' ',' ',''),('Jeffrey',' Cheng',' ',' ',''),('Owen',' Chilcoat',' ',' ',''),('Samantha',' Ciappa',' ',' ',''),('Christina',' Ciobotaru',' ',' ',''),('Kelly',' Clarke',' ',' ',''),('Tyler',' Cody',' ',' ',''),('Grace',' Condie',' ',' ',''),('Victoria',' Connelly',' ',' ',''),('Ryan',' Conner',' ',' ',''),('Nibbana',' Cooper',' ',' ',''),('Audrey',' Cordeiro',' ',' ',''),('Roberto',' Cortes',' ',' ',''),('Ian',' Crew',' ',' ',''),('Willie',' Cui',' ',' ',''),('Linnea',' Dale',' ',' ',''),('Angela',' Dauber',' ',' ',''),('Jana',' Dawson',' ',' ',''),('Aurelius',' DelToro',' ',' ',''),('Harpreet',' Dhadde',' ',' ',''),('Holland',' Dillon',' ',' ',''),('Dziugas',' Dir┼╛ys',' ',' ',''),('Kaylin',' Ditmars',' ',' ',''),('Kristen',' Dorsey',' ',' ',''),('Elaina',' Drummond',' ',' ',''),('Bowen',' Duan',' ',' ',''),('Marie',' Edwards',' ',' ',''),('Sofia',' Encarnacion',' ',' ',''),('John',' Essa',' ',' ',''),('Jayden',' Falanco',' ',' ',''),('Dominick',' Feldman',' ',' ',''),('Anna',' Fitzgerald',' ',' ',''),('Catherine',' Fleming',' ',' ',''),('Austin',' Francoeur',' ',' ',''),('Kyle',' Friedman',' ',' ',''),('Pedro',' Gamez',' ',' ',''),('Ariunzaya',' Gantulga',' ',' ',''),('Joanna',' Gao',' ',' ',''),('Sean',' Gibson',' ',' ',''),('Annabel',' Gilligan',' ',' ',''),('Dominick',' Godde',' ',' ',''),('Jake',' Goldstein',' ',' ',''),('Lauryn',' Grier',' ',' ',''),('Maria',' Grimaldo',' ',' ',''),('Allen',' Gu',' ',' ',''),('Helenna',' Gu',' ',' ',''),('Logan',' Guenther',' ',' ',''),('Nathaniel',' Guill',' ',' ',''),('Hi',' Hamman',' ',' ',''),('Doris',' Han',' ',' ',''),('Kasey',' Han',' ',' ',''),('Minhao',' Han',' ',' ',''),('Matthew',' Hanley',' ',' ',''),('Rhys',' Harper',' ',' ',''),('Erin',' Hatlestad',' ',' ',''),('Michael',' Hayes',' ',' ',''),('Jack',' Hinsberger',' ',' ',''),('Seokjoo',' Hong',' ',' ',''),('Seyed',' Hoseini',' ',' ',''),('Abigail',' Huang',' ',' ',''),('Jennifer',' Huang',' ',' ',''),('Katherine',' Huber',' ',' ',''),('Seendy',' Huerta',' ',' ',''),('Marcus',' Hurt',' ',' ',''),('Carter',' Hwang',' ',' ',''),('Taveon',' Jackson',' ',' ',''),('Jaeyun',' Jeong',' ',' ',''),('Desmond',' Johnson',' ',' ',''),('Samuel',' Johnson',' ',' ',''),('Maizie',' Keane',' ',' ',''),('Aidan',' Kerr',' ',' ',''),('Ayesha',' Khan',' ',' ',''),('Ali',' Khorfan',' ',' ',''),('Amy',' Knutson',' ',' ',''),('Kavya',' Koneru',' ',' ',''),('Anneliese',' Kosinski',' ',' ',''),('Alexzondrea',' Kowitz',' ',' ',''),('Daniel',' Kujawa',' ',' ',''),('Aarish',' Lakhani',' ',' ',''),('Holt',' Lapsey',' ',' ',''),('Isabella',' Lee',' ',' ',''),('Vincent',' Lee',' ',' ',''),('John',' Leonard',' ',' ',''),('Jordan',' Leonard',' ',' ',''),('Marissa',' Li',' ',' ',''),('Vince',' Li',' ',' ',''),('Allison',' Lie',' ',' ',''),('Jevin',' Liu',' ',' ',''),('Alexander',' Loid',' ',' ',''),('Abril',' Lopez',' ',' ',''),('Joseph',' Lopez',' ',' ',''),('Yamilex',' Lopez',' ',' ',''),('Erica',' Lu',' ',' ',''),('Binay',' Maharjan',' ',' ',''),('Panteha',' Maleki',' ',' ',''),('Theodore',' Marschitz',' ',' ',''),('Hannah',' Martin',' ',' ',''),('Samantha',' Marwah',' ',' ',''),('James',' Matern',' ',' ',''),('Kierstyn',' Maxwell',' ',' ',''),('Alexis',' Mazariegos',' ',' ',''),('Lillian',' McCormick',' ',' ',''),('Alfred',' Medina',' ',' ',''),('Abigail',' Meikle',' ',' ',''),('Jonathan',' Melim',' ',' ',''),('Kathryn',' Melim',' ',' ',''),('Megan',' Melnikoff',' ',' ',''),('Matthew',' Merriman',' ',' ',''),('Rowland',' Milburn',' ',' ',''),('Meghan',' Miller',' ',' ',''),('Maxwell',' Minor',' ',' ',''),('Samuel',' Molina',' ',' ',''),('Luis',' Montalvo',' ',' ',''),('Avery',' Murphy',' ',' ',''),('Cole',' Myers',' ',' ',''),('Hope',' Nagai',' ',' ',''),('Joshua',' Nelson',' ',' ',''),('Henry',' Neuman',' ',' ',''),('Michael',' Niecikowski',' ',' ',''),('Reet',' Oberoi',' ',' ',''),('Michael',' O\'Connor',' ',' ',''),('Julia',' O\'Dekirk',' ',' ',''),('Taner',' Okusuz',' ',' ',''),('Janessa',' Olan',' ',' ',''),('Morgan',' Osburn',' ',' ',''),('Charles',' Oshaughnessy',' ',' ',''),('Lily',' Owen',' ',' ',''),('Kyle',' Oxenknecht',' ',' ',''),('Serena',' Pace',' ',' ',''),('Samuel',' Palombo',' ',' ',''),('Rebecca',' Pamplin',' ',' ',''),('Jordan',' Parker',' ',' ',''),('Marvin',' Patel',' ',' ',''),('Rahul',' Patel',' ',' ',''),('Grace',' Patrino',' ',' ',''),('Jennifer',' Pearson',' ',' ',''),('Isabella',' Pece',' ',' ',''),('Zoe',' Peika',' ',' ',''),('Evan',' Peterson',' ',' ',''),('Grace',' Petzold',' ',' ',''),('Valerie',' Pierce',' ',' ',''),('Kevin',' Prado',' ',' ',''),('Jared',' Prather',' ',' ',''),('Steve',' Qiu',' ',' ',''),('Katherine',' Radeke',' ',' ',''),('Isabel',' Rang',' ',' ',''),('Daniel',' Rebich',' ',' ',''),('Johnathan',' Rendon',' ',' ',''),('Kyle',' Riley',' ',' ',''),('Jalen',' Robinson',' ',' ',''),('Gavrielle',' Rogers',' ',' ',''),('Ardis',' Roman',' ',' ',''),('Alexander',' Roos',' ',' ',''),('Ethan',' Ross',' ',' ',''),('Sanjana',' Roy',' ',' ',''),('Alexia',' Ruiz',' ',' ',''),('America',' Ruiz',' ',' ',''),('McKenzie',' Rump',' ',' ',''),('Christopher',' Ruocco',' ',' ',''),('Haila',' Ruth',' ',' ',''),('Mikayla',' Saad',' ',' ',''),('Salvador',' Sanchez',' ',' ',''),('Jesus',' Saucedo',' ',' ',''),('McKenna',' Scherzer',' ',' ',''),('Eleanor',' Schuler',' ',' ',''),('Tess',' Scott',' ',' ',''),('Brittney',' Seibert',' ',' ',''),('London',' Sheehan',' ',' ',''),('Jordan',' Shi',' ',' ',''),('Kelly',' Shih',' ',' ',''),('Sara',' Siddiqui',' ',' ',''),('Brigid',' Simek',' ',' ',''),('Collin',' Sincaglia',' ',' ',''),('Clark',' Sinclair-Harry',' ',' ',''),('Denis',' Skricek',' ',' ',''),('Grace',' Slater',' ',' ',''),('Belle',' Smith',' ',' ',''),('Joseph',' Spizzirri',' ',' ',''),('Liberty',' Spreitzer',' ',' ',''),('Zoe',' Staggs',' ',' ',''),('Pengkun',' Su',' ',' ',''),('Ronnia',' Szeto',' ',' ',''),('Nathan',' Talaber',' ',' ',''),('Joshua',' Tennyson',' ',' ',''),('Lavina',' Thadani',' ',' ',''),('Ishan',' Thakor',' ',' ',''),('Ryan',' Thiele',' ',' ',''),('Samuel',' Toliver',' ',' ',''),('Weirui',' Tong',' ',' ',''),('Jose',' Torres',' ',' ',''),('Nicholas',' Tower',' ',' ',''),('Matteo',' Turano',' ',' ',''),('Eric',' Wang',' ',' ',''),('Jubilation',' Wang',' ',' ',''),('Neihl',' Wang',' ',' ',''),('Kyle',' Wasnick',' ',' ',''),('Merritt',' Weese',' ',' ',''),('Willilam',' Wepking',' ',' ',''),('Matthew',' Westra',' ',' ',''),('Alex',' Wheatley',' ',' ',''),('Shayna',' Willett',' ',' ',''),('Damani',' Williams',' ',' ',''),('Shannon',' Workman',' ',' ',''),('Gavriel',' Wright',' ',' ',''),('Zachary',' Xi',' ',' ',''),('Yuri',' Zalas-Perez',' ',' ',''),('Ann',' Zhao',' ',' ',''),('Daniel',' Zhao',' ',' ',''),('Brian',' Zheng',' ',' ',''),('Margaret',' Zhou',' ',' ',''),('Andrew',' Osepek',' ',' ',''),('Cynthia Aguilar',' Lopez',' ',' ',''),('Mehak',' Ahuja',' ',' ',''),('Marigold',' Alexander',' ',' ',''),('Dylan',' Allen',' ',' ',''),('Rachel',' Alma',' ',' ',''),('Zaineh',' Alrahami',' ',' ',''),('Maria',' Angelovski',' ',' ',''),('Raymond',' Bandzoumouna',' ',' ',''),('Stephanie',' Belfor',' ',' ',''),('Adelyn',' Benaitis',' ',' ',''),('Gabriele',' Bertolozzi',' ',' ',''),('Ryan',' Bianucci',' ',' ',''),('Milica',' Bojovic',' ',' ',''),('Chimere',' Boyd',' ',' ',''),('Grace',' Bradley',' ',' ',''),('Mackenzie',' Bradley',' ',' ',''),('Samantha',' Brigida',' ',' ',''),('Stuart',' Brown',' ',' ',''),('William',' Bruce',' ',' ',''),('Emanuela',' Brudaglio',' ',' ',''),('Stacy',' Buchner',' ',' ',''),('Ana',' Calic',' ',' ',''),('Ian',' Campagna',' ',' ',''),('Daniel',' Campos',' ',' ',''),('Jordan',' Carey',' ',' ',''),('Olivia',' Carmody',' ',' ',''),('Brian',' Casper',' ',' ',''),('Zakai',' Charles',' ',' ',''),('Denis',' Chen',' ',' ',''),('Eric',' Chen',' ',' ',''),('Christina',' Cheng',' ',' ',''),('Jeffrey',' Cheng',' ',' ',''),('Owen',' Chilcoat',' ',' ',''),('Samantha',' Ciappa',' ',' ',''),('Christina',' Ciobotaru',' ',' ',''),('Kelly',' Clarke',' ',' ',''),('Tyler',' Cody',' ',' ',''),('Grace',' Condie',' ',' ',''),('Victoria',' Connelly',' ',' ',''),('Ryan',' Conner',' ',' ',''),('Nibbana',' Cooper',' ',' ',''),('Audrey',' Cordeiro',' ',' ',''),('Roberto',' Cortes',' ',' ',''),('Ian',' Crew',' ',' ',''),('Willie',' Cui',' ',' ',''),('Linnea',' Dale',' ',' ',''),('Angela',' Dauber',' ',' ',''),('Jana',' Dawson',' ',' ',''),('Aurelius',' DelToro',' ',' ',''),('Harpreet',' Dhadde',' ',' ',''),('Holland',' Dillon',' ',' ',''),('Dziugas',' Dir┼╛ys',' ',' ',''),('Kaylin',' Ditmars',' ',' ',''),('Kristen',' Dorsey',' ',' ',''),('Elaina',' Drummond',' ',' ',''),('Bowen',' Duan',' ',' ',''),('Marie',' Edwards',' ',' ',''),('Sofia',' Encarnacion',' ',' ',''),('John',' Essa',' ',' ',''),('Jayden',' Falanco',' ',' ',''),('Dominick',' Feldman',' ',' ',''),('Anna',' Fitzgerald',' ',' ',''),('Catherine',' Fleming',' ',' ',''),('Austin',' Francoeur',' ',' ',''),('Kyle',' Friedman',' ',' ',''),('Pedro',' Gamez',' ',' ',''),('Ariunzaya',' Gantulga',' ',' ',''),('Joanna',' Gao',' ',' ',''),('Sean',' Gibson',' ',' ',''),('Annabel',' Gilligan',' ',' ',''),('Dominick',' Godde',' ',' ',''),('Jake',' Goldstein',' ',' ',''),('Lauryn',' Grier',' ',' ',''),('Maria',' Grimaldo',' ',' ',''),('Allen',' Gu',' ',' ',''),('Helenna',' Gu',' ',' ',''),('Logan',' Guenther',' ',' ',''),('Nathaniel',' Guill',' ',' ',''),('Hi',' Hamman',' ',' ',''),('Doris',' Han',' ',' ',''),('Kasey',' Han',' ',' ',''),('Minhao',' Han',' ',' ',''),('Matthew',' Hanley',' ',' ',''),('Rhys',' Harper',' ',' ',''),('Erin',' Hatlestad',' ',' ',''),('Michael',' Hayes',' ',' ',''),('Jack',' Hinsberger',' ',' ',''),('Seokjoo',' Hong',' ',' ',''),('Seyed',' Hoseini',' ',' ',''),('Abigail',' Huang',' ',' ',''),('Jennifer',' Huang',' ',' ',''),('Katherine',' Huber',' ',' ',''),('Seendy',' Huerta',' ',' ',''),('Marcus',' Hurt',' ',' ',''),('Carter',' Hwang',' ',' ',''),('Taveon',' Jackson',' ',' ',''),('Jaeyun',' Jeong',' ',' ',''),('Desmond',' Johnson',' ',' ',''),('Samuel',' Johnson',' ',' ',''),('Maizie',' Keane',' ',' ',''),('Aidan',' Kerr',' ',' ',''),('Ayesha',' Khan',' ',' ',''),('Ali',' Khorfan',' ',' ',''),('Amy',' Knutson',' ',' ',''),('Kavya',' Koneru',' ',' ',''),('Anneliese',' Kosinski',' ',' ',''),('Alexzondrea',' Kowitz',' ',' ',''),('Daniel',' Kujawa',' ',' ',''),('Aarish',' Lakhani',' ',' ',''),('Holt',' Lapsey',' ',' ',''),('Isabella',' Lee',' ',' ',''),('Vincent',' Lee',' ',' ',''),('John',' Leonard',' ',' ',''),('Jordan',' Leonard',' ',' ',''),('Marissa',' Li',' ',' ',''),('Vince',' Li',' ',' ',''),('Allison',' Lie',' ',' ',''),('Jevin',' Liu',' ',' ',''),('Alexander',' Loid',' ',' ',''),('Abril',' Lopez',' ',' ',''),('Joseph',' Lopez',' ',' ',''),('Yamilex',' Lopez',' ',' ',''),('Erica',' Lu',' ',' ',''),('Binay',' Maharjan',' ',' ',''),('Panteha',' Maleki',' ',' ',''),('Theodore',' Marschitz',' ',' ',''),('Hannah',' Martin',' ',' ',''),('Samantha',' Marwah',' ',' ',''),('James',' Matern',' ',' ',''),('Kierstyn',' Maxwell',' ',' ',''),('Alexis',' Mazariegos',' ',' ',''),('Lillian',' McCormick',' ',' ',''),('Alfred',' Medina',' ',' ',''),('Abigail',' Meikle',' ',' ',''),('Jonathan',' Melim',' ',' ',''),('Kathryn',' Melim',' ',' ',''),('Megan',' Melnikoff',' ',' ',''),('Matthew',' Merriman',' ',' ',''),('Rowland',' Milburn',' ',' ',''),('Meghan',' Miller',' ',' ',''),('Maxwell',' Minor',' ',' ',''),('Samuel',' Molina',' ',' ',''),('Luis',' Montalvo',' ',' ',''),('Avery',' Murphy',' ',' ',''),('Cole',' Myers',' ',' ',''),('Hope',' Nagai',' ',' ',''),('Joshua',' Nelson',' ',' ',''),('Henry',' Neuman',' ',' ',''),('Michael',' Niecikowski',' ',' ',''),('Reet',' Oberoi',' ',' ',''),('Michael',' O\'Connor',' ',' ',''),('Julia',' O\'Dekirk',' ',' ',''),('Taner',' Okusuz',' ',' ',''),('Janessa',' Olan',' ',' ',''),('Morgan',' Osburn',' ',' ',''),('Charles',' Oshaughnessy',' ',' ',''),('Lily',' Owen',' ',' ',''),('Kyle',' Oxenknecht',' ',' ',''),('Serena',' Pace',' ',' ',''),('Samuel',' Palombo',' ',' ',''),('Rebecca',' Pamplin',' ',' ',''),('Jordan',' Parker',' ',' ',''),('Marvin',' Patel',' ',' ',''),('Rahul',' Patel',' ',' ',''),('Grace',' Patrino',' ',' ',''),('Jennifer',' Pearson',' ',' ',''),('Isabella',' Pece',' ',' ',''),('Zoe',' Peika',' ',' ',''),('Evan',' Peterson',' ',' ',''),('Grace',' Petzold',' ',' ',''),('Valerie',' Pierce',' ',' ',''),('Kevin',' Prado',' ',' ',''),('Jared',' Prather',' ',' ',''),('Steve',' Qiu',' ',' ',''),('Katherine',' Radeke',' ',' ',''),('Isabel',' Rang',' ',' ',''),('Daniel',' Rebich',' ',' ',''),('Johnathan',' Rendon',' ',' ',''),('Kyle',' Riley',' ',' ',''),('Jalen',' Robinson',' ',' ',''),('Gavrielle',' Rogers',' ',' ',''),('Ardis',' Roman',' ',' ',''),('Alexander',' Roos',' ',' ',''),('Ethan',' Ross',' ',' ',''),('Sanjana',' Roy',' ',' ',''),('Alexia',' Ruiz',' ',' ',''),('America',' Ruiz',' ',' ',''),('McKenzie',' Rump',' ',' ',''),('Christopher',' Ruocco',' ',' ',''),('Haila',' Ruth',' ',' ',''),('Mikayla',' Saad',' ',' ',''),('Salvador',' Sanchez',' ',' ',''),('Jesus',' Saucedo',' ',' ',''),('McKenna',' Scherzer',' ',' ',''),('Eleanor',' Schuler',' ',' ',''),('Tess',' Scott',' ',' ',''),('Brittney',' Seibert',' ',' ',''),('London',' Sheehan',' ',' ',''),('Jordan',' Shi',' ',' ',''),('Kelly',' Shih',' ',' ',''),('Sara',' Siddiqui',' ',' ',''),('Brigid',' Simek',' ',' ',''),('Collin',' Sincaglia',' ',' ',''),('Clark',' Sinclair-Harry',' ',' ',''),('Denis',' Skricek',' ',' ',''),('Grace',' Slater',' ',' ',''),('Belle',' Smith',' ',' ',''),('Joseph',' Spizzirri',' ',' ',''),('Liberty',' Spreitzer',' ',' ',''),('Zoe',' Staggs',' ',' ',''),('Pengkun',' Su',' ',' ',''),('Ronnia',' Szeto',' ',' ',''),('Nathan',' Talaber',' ',' ',''),('Joshua',' Tennyson',' ',' ',''),('Lavina',' Thadani',' ',' ',''),('Ishan',' Thakor',' ',' ',''),('Ryan',' Thiele',' ',' ',''),('Samuel',' Toliver',' ',' ',''),('Weirui',' Tong',' ',' ',''),('Jose',' Torres',' ',' ',''),('Nicholas',' Tower',' ',' ',''),('Matteo',' Turano',' ',' ',''),('Eric',' Wang',' ',' ',''),('Jubilation',' Wang',' ',' ',''),('Neihl',' Wang',' ',' ',''),('Kyle',' Wasnick',' ',' ',''),('Merritt',' Weese',' ',' ',''),('Willilam',' Wepking',' ',' ',''),('Matthew',' Westra',' ',' ',''),('Alex',' Wheatley',' ',' ',''),('Shayna',' Willett',' ',' ',''),('Damani',' Williams',' ',' ',''),('Shannon',' Workman',' ',' ',''),('Gavriel',' Wright',' ',' ',''),('Zachary',' Xi',' ',' ',''),('Yuri',' Zalas-Perez',' ',' ',''),('Ann',' Zhao',' ',' ',''),('Daniel',' Zhao',' ',' ',''),('Brian',' Zheng',' ',' ',''),('Margaret',' Zhou',' ',' ','');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04 20:01:59
