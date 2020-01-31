-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: example
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
-- Table structure for table 'assignments'
--
CREATE DATABASE registart;
CREATE USER 'registart'@'%' identified by 'database7';
GRANT ALL PRIVILEGES on registart.* to 'registart'@'%';
use registart;

DROP TABLE IF EXISTS 'assignments';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'assignments' (
  'OrganizerID' int(11) NOT NULL,
  'StudentID' int(11) NOT NULL,
  'LastContact' datetime DEFAULT NULL,
  'Status' int(11) NOT NULL,
  'Medium' int(11) NOT NULL,
  PRIMARY KEY ('OrganizerID')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'assignments'
--

LOCK TABLES 'assignments' WRITE;
/*!40000 ALTER TABLE 'assignments' DISABLE KEYS */;
/*!40000 ALTER TABLE 'assignments' ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table 'organizations'
--

DROP TABLE IF EXISTS 'organizations';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'organizations' (
  'ID' int(11) NOT NULL AUTO_INCREMENT,
  'Name' varchar(255) NOT NULL,
  PRIMARY KEY ('ID')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'organizations'
--

LOCK TABLES 'organizations' WRITE;
/*!40000 ALTER TABLE 'organizations' DISABLE KEYS */;
/*!40000 ALTER TABLE 'organizations' ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table 'organizers'
--

DROP TABLE IF EXISTS 'organizers';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'organizers' (
  'ID' int(11) NOT NULL,
  'FirstN' varchar(255) DEFAULT NULL,
  'LastN' varchar(255) DEFAULT NULL,
  'OrganizationID' int(11) DEFAULT NULL,
  'Email' varchar(255) DEFAULT NULL,
  'Password' varchar(255) DEFAULT NULL,
  PRIMARY KEY ('ID')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'organizers'
--

LOCK TABLES 'organizers' WRITE;
/*!40000 ALTER TABLE 'organizers' DISABLE KEYS */;
/*!40000 ALTER TABLE 'organizers' ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table 'relationships'
--

DROP TABLE IF EXISTS 'relationships';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'relationships' (
  'OrganizerID' int(11) NOT NULL,
  'TargetID' int(11) NOT NULL,
  'Relationship' float DEFAULT NULL,
  PRIMARY KEY ('OrganizerID')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'relationships'
--

LOCK TABLES 'relationships' WRITE;
/*!40000 ALTER TABLE 'relationships' DISABLE KEYS */;
/*!40000 ALTER TABLE 'relationships' ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table 'students'
--

DROP TABLE IF EXISTS 'students';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'students' (
  'FirstN' varchar(255) NOT NULL,
  'LastN' varchar(255) NOT NULL,
  'ID' varbinary(255) NOT NULL,
  'Email' varchar(255) DEFAULT NULL,
  'Phone' varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'students'
--

LOCK TABLES 'students' WRITE;
/*!40000 ALTER TABLE 'students' DISABLE KEYS */;
/*!40000 ALTER TABLE 'students' ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-27 20:12:17
