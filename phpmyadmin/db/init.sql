-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB-1:10.4.11+maria~bionic


--
-- Table structure for table assignments'
--
DROP DATABASE IF EXISTS registart;
CREATE DATABASE registart;
CREATE USER 'registart'@'%' identified by 'database7';
GRANT ALL PRIVILEGES on registart.* to 'registart'@'%';
use registart;

DROP TABLE IF EXISTS assignments;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE assignments (
  OrganizerID int(11) NOT NULL,
  StudentID int(11) NOT NULL,
  LastContact datetime DEFAULT NULL,
  Status int(11) NOT NULL,
  Medium int(11) NOT NULL,
  PRIMARY KEY (OrganizerID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table assignments
--

LOCK TABLES assignments WRITE;
/*!40000 ALTER TABLE assignments DISABLE KEYS */;
/*!40000 ALTER TABLE assignments ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table organizations
--

DROP TABLE IF EXISTS organizations;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE organizations (
  ID int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(255) NOT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table organizations
--

LOCK TABLES organizations WRITE;
/*!40000 ALTER TABLE organizations DISABLE KEYS */;
/*!40000 ALTER TABLE organizations ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table organizers
--

DROP TABLE IF EXISTS organizers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE organizers (
  ID int(11) NOT NULL,
  FirstN varchar(255) DEFAULT NULL,
  LastN varchar(255) DEFAULT NULL,
  OrganizationID int(11) DEFAULT NULL,
  Email varchar(255) DEFAULT NULL,
  Password varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table organizers
--

LOCK TABLES organizers WRITE;
/*!40000 ALTER TABLE organizers DISABLE KEYS */;
/*!40000 ALTER TABLE organizers ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table relationships
--

DROP TABLE IF EXISTS relationships;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE relationships (
  OrganizerID int(11) NOT NULL,
  TargetID int(11) NOT NULL,
  Relationship float DEFAULT NULL,
  PRIMARY KEY (OrganizerID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table relationships
--

LOCK TABLES relationships WRITE;
/*!40000 ALTER TABLE relationships DISABLE KEYS */;
/*!40000 ALTER TABLE relationships ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table students
--

DROP TABLE IF EXISTS students;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE students (
  FirstN varchar(255) NOT NULL,
  LastN varchar(255) NOT NULL,
  ID varbinary(255) NOT NULL,
  Email varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table students
--

LOCK TABLES students WRITE;
/*!40000 ALTER TABLE students DISABLE KEYS */;
/*!40000 ALTER TABLE students ENABLE KEYS */;
UNLOCK TABLES;
-- Dump completed on 2020-01-27 20:12:17
