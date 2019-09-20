-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cve_database
-- ------------------------------------------------------
-- Server version	5.5.29-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cves`
--

DROP TABLE IF EXISTS `cves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(2000) DEFAULT NULL,
  `score` decimal(10,1) NOT NULL,
  `complexity` varchar(200) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cves`
--

LOCK TABLES `cves` WRITE;
/*!40000 ALTER TABLE `cves` DISABLE KEYS */;
INSERT INTO `cves` VALUES (1,'CVE-2019-1010260','https://www.cvedetails.com/cve/CVE-2019-1010260/','2019-06-28 09:53:10','Exec Code',9.3,'Medium','Using ktlint to download and execute custom rulesets can result in arbitrary code execution as the served jars can be compromised by a MITM. This attack is exploitable via Man in the Middle of the HTTP connection to the artifact servers. This vulnerability appears to have been fixed in 0.30.0 and later; after commit 5e547b287d6c260d328a2cb658dbe6b7a7ff2261.'),(2,'CVE-2019-1010258','https://www.cvedetails.com/cve/CVE-2019-1010257/','2019-06-28 09:53:10','Overflow Mem. Corr.',4.3,'Medium','nanosvg library nanosvg after commit c1f6e209c16b18b46aa9f45d7e619acf42c29726 is affected by: Buffer Overflow. The impact is: Memory corruption leading to at least DoS. More severe impact vectors need more investigation. The component is: it\'s part of a svg processing library. function nsvg__parseColorRGB in src/nanosvg.h / line 1227. The attack vector is: It depends library usage. If input is passed from the network, then network connectivity is enough. Most likely an attack will require opening a specially crafted .svg file.'),(3,'CVE-2019-1010257','https://www.cvedetails.com/cve/CVE-2019-1010257/','2019-03-27 00:00:00','+Info',7.5,'Low','An Information Disclosure / Data Modification issue exists in article2pdf_getfile.php in the article2pdf Wordpress plugin 0.24, 0.25, 0.26, 0.27. A URL can be constructed which allows overriding the PDF file\'s path leading to any PDF whose path is known and which is readable to the web server can be downloaded. The file will be deleted after download if the web server has permission to do so. For PHP versions before 5.3, any file can be read by null terminating the string left of the file extension.'),(4,'CVE-2019-1003099','https://www.cvedetails.com/cve/CVE-2019-1003099/','2019-06-28 09:55:59',NULL,4.0,'Low','A missing permission check in Jenkins openid Plugin in the OpenIdSsoSecurityRealm.DescriptorImpl#doValidate form validation method allows attackers with Overall/Read permission to initiate a connection to an attacker-specified server.'),(5,'CVE-2019-1003098','https://www.cvedetails.com/cve/CVE-2019-1003098/','2019-04-03 23:00:00','CSRF',4.3,'Medium','A cross-site request forgery vulnerability in Jenkins openid Plugin in the OpenIdSsoSecurityRealm.DescriptorImpl#doValidate form validation method allows attackers to initiate a connection to an attacker-specified server.'),(6,'CVE-2019-1003097	','https://www.cvedetails.com/cve/CVE-2019-1003097/','2019-04-03 23:00:00',NULL,4.0,'Low','Jenkins Crowd Integration Plugin stores credentials unencrypted in the global config.xml configuration file on the Jenkins master where they can be viewed by users with access to the master file system.'),(7,'CVE-2019-4250	','https://www.cvedetails.com/cve/CVE-2019-4250/','2019-06-25 23:00:00','XSS',0.0,'???','IBM Jazz Foundation products (IBM Rational Collaborative Lifecycle Management 6.0 through 6.0.6.1) is vulnerable to cross-site scripting. This vulnerability allows users to embed arbitrary JavaScript code in the Web UI thus altering the intended functionality potentially leading to credentials disclosure within a trusted session. IBM X-Force ID: 159648.'),(8,'CVE-2019-4238','https://www.cvedetails.com/cve/CVE-2019-4238/','2019-04-24 23:00:00','XSS',3.5,'Medium','IBM InfoSphere Information Server 11.3, 11.5, and 11.7 is vulnerable to cross-site scripting. This vulnerability allows users to embed arbitrary JavaScript code in the Web UI thus altering the intended functionality potentially leading to credentials disclosure within a trusted session. IBM X-Force ID: 159464.'),(9,'CVE-2019-4202','https://www.cvedetails.com/cve/CVE-2019-4202/','2019-06-14 23:00:00',NULL,10.0,'Low','IBM API Connect 5.0.0.0 and 5.0.8.6 Developer Portal is vulnerable to command injection. An attacker with a specially crafted request can run arbitrary code on the server and gain complete access to the system. IBM X-Force ID: 159123.'),(10,'CVE-2019-2446','https://www.cvedetails.com/cve/CVE-2019-2446/','2019-01-16 00:00:00',NULL,2.1,'Low','Vulnerability in the Oracle VM VirtualBox component of Oracle Virtualization (subcomponent: Core). Supported versions that are affected are prior to 5.2.24 and prior to 6.0.2. Easily exploitable vulnerability allows low privileged attacker with logon to the infrastructure where Oracle VM VirtualBox executes to compromise Oracle VM VirtualBox. Successful attacks of this vulnerability can result in unauthorized access to critical data or complete access to all Oracle VM VirtualBox accessible data. CVSS 3.0 Base Score 5.5 (Confidentiality impacts). CVSS Vector: (CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N).');
/*!40000 ALTER TABLE `cves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-02 15:01:38
