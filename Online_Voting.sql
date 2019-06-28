-- MySQL dump 10.10
--
-- Host: localhost    Database: online_voting
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_cred`
--

DROP TABLE IF EXISTS `admin_cred`;
CREATE TABLE `admin_cred` (
  `admin_name` varchar(45) NOT NULL,
  `admin_id` varchar(45) NOT NULL,
  `admin_pass` varchar(45) NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_cred`
--


/*!40000 ALTER TABLE `admin_cred` DISABLE KEYS */;
LOCK TABLES `admin_cred` WRITE;
INSERT INTO `admin_cred` VALUES ('B Nikitha','admin508','admin508'),('GKY Shastry','admin522','admin522'),('S Sai Kumar','admin557','admin557'),('Master','root','root');
UNLOCK TABLES;
/*!40000 ALTER TABLE `admin_cred` ENABLE KEYS */;

--
-- Table structure for table `cand_reg`
--

DROP TABLE IF EXISTS `cand_reg`;
CREATE TABLE `cand_reg` (
  `name` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pincode` int(6) unsigned NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `party` varchar(45) NOT NULL,
  `cid` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `cnfpwd` varchar(45) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cand_reg`
--


/*!40000 ALTER TABLE `cand_reg` DISABLE KEYS */;
LOCK TABLES `cand_reg` WRITE;
INSERT INTO `cand_reg` VALUES ('Ramesh','56','male','Saidabad','Hyderabad','Telangana',500059,'965486512','rcad@gmail.com','INC','cand1','asdfg','asdfg'),('Shiva','65','male','Faluknama','Hyderabad','Telangana',500056,'7589461235','scand@gmail.com','BJP','cand2','qwerty','qwerty'),('Padmavathi','45','female','12-1-12','Hyderabad','Telangana',500019,'801938789','padma@gmail.com','TRS','cand3','qwerty','qwerty'),('Srinivas','52','male','4-6-99','Adilabad','Telangana',501001,'8654123568','srinivas@yahoo.com','','cand4','qwerty','qwerty'),('David','41','male','8-5-99','Hyderabad','Telangana',500045,'8654145668','david@yahoo.com','CPM','cand5','qwerty','qwerty'),('Fathima','65','female','7-9-8','Hyderabad','Telangana',500051,'9658943568','fathima@yahoo.com','BSP','cand6','qwerty','qwerty');
UNLOCK TABLES;
/*!40000 ALTER TABLE `cand_reg` ENABLE KEYS */;

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `aadhar` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pincode` int(6) unsigned NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `cnfpwd` varchar(45) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--


/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
LOCK TABLES `user_reg` WRITE;
INSERT INTO `user_reg` VALUES ('Aarohi','reddy','30','female','9897963252378','85-96-756','manikonda','Telangana',556933,'9834563236','aarohi1@gmail.com','aarohi','qwerty','qwerty'),('Shekar','reddy','45','male','9785987894378','58-12-176','mallapur','Telangana',505613,'9563525689','shekarrr@gmail.com','arjun','qwerty','qwerty'),('Arya','stark','23','female','789465412323','2-3-645/','Jagityal','Telangana',505013,'9564151236','astark@gmail.com','arya','qwerty','qwerty'),('Bruce','Banner','35','male','9865456894378','58-78-176','Nizamabad','Telangana',507013,'9864745689','bbanner@gmail.com','bruce','qwerty','qwerty'),('Jhansi','rani','30','female','9867963252378','68-756','patancheru','Telangana',559633,'9835555636','jhani123@gmail.com','jhansi','qwerty','qwerty'),('Jon','Barmala','35','male','1235445612378','5-9/176','Amberpet','Telangana',504013,'9874645636','jbarmala@gmail.com','jonb','qwerty','qwerty'),('Kalpana','vanampally','25','female','912365894378','578-52-176','panjagutta','Telangana',589613,'99963258789','kalpanav@gmail.com','kalpana','qwerty','qwerty'),('Kamal','Gattu','19','male','521913397726','17-11/*b','Hyderabad','Telangana',500059,'9441560125','kgattu@gmail.com','kgattu','qwerty','qwerty'),('Krishna','Barmala','20','male','78945612378','2-3-645/b/176','Hyderabad','Telangana',500013,'9874651236','krishna123@gmail.com','krish','qwerty','qwerty'),('lasya','gattu','22','female','9878521472378','85-6-3','Nizampet','Telangana',564533,'9885214536','lasyagattu@gmail.com','lasya','qwerty','qwerty'),('Loki','Odinson','41','male','789464564569','45-6-999','Jotunheim','Telangana',505001,'7656951236','mischief@hotmail.com','loki','qwerty','qwerty'),('Mounika','sama','22','female','9878965252378','85-89-63','kukatpally','Telangana',565133,'9837896536','mounika@gmail.com','mouni','qwerty','qwerty'),('Nikitha','Barmala','19','female','869545769856','89-78-9','Hyderabad','Telangana',505049,'8974569874','nbarmala@gmail.com','nbarmala','qwerty','qwerty'),('Odin','Bohrson','65','male','456464567891','5-6-9','Azgard','Telangana',505000,'7659851569','king@hotmail.com','odin','qwerty','qwerty'),('Pavan','kalyan','45','male','9789687894378','58-92-176','habsiguda','Telangana',589613,'9556325689','pavank@gmail.com','pavan','qwerty','qwerty'),('Pavani','gattu','25','female','978987894378','5-2-176','narayanguda','Telangana',587813,'99999325689','pavani@gmail.com','pavani','qwerty','qwerty'),('Peggy','Caeter','40','female','456145612378','6-89/176','Amberpet','Telangana',504013,'8945645636','pcarter@gmail.com','peggy','qwerty','qwerty'),('Pepper','Potts','19','female','9865445612378','68-8-176','Cherlapalli','Telangana',504013,'9864745636','ppotts@gmail.com','pepper','qwerty','qwerty'),('Sansa','shetty','20','female','9867895612378','68-89-76','malakpet','Telangana',508633,'9836563636','preethi@gmail.com','preethi','qwerty','qwerty'),('Sansa','Potts','20','female','9861545612378','689-9-176','Santoshnagar','Telangana',505013,'9836745636','spotts@gmail.com','sansa','qwerty','qwerty'),('Sai ','Sunka','19','male','456978562314','1-45-78','Karimnagar','Telangana',505001,'8659451231','ssunka@gmail.com','ssunka','qwerty','qwerty'),('Steve','Rogers','39','male','2356444562378','6-89-176','Dilsuknhnagar','Telangana',505013,'9865445636','srogers@gmail.com','steve','qwerty','qwerty'),('Thor','Odinson','45','male','789464567891','5-6-9','Azgard','Telangana',505000,'7659851236','thunder@hotmail.com','thor','qwerty','qwerty'),('Anthony','Stark','39','male','2654895612378','6-8-9','Tower','Telangana',504013,'8965445636','tstark@gmail.com','tony','qwerty','qwerty'),('Yadagiri','Barmala','45','male','2356445612378','5-8/176','Amberpet','Telangana',504013,'5698745636','ybarmala@gmail.com','yadagiri','qwerty','qwerty'),('Yeshwika','reddy','19','female','9897963252378','85-85-6','manikonda','Telangana',563533,'9834963236','yeshuu@gmail.com','yeshu','qwerty','qwerty'),('Yesh','Gattu','20','male','521913397726','10-19','Manthani','Telangana',505184,'8019308536','ygattu@gmail.com','ygattu','qwerty','qwerty');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;

--
-- Table structure for table `voting`
--

DROP TABLE IF EXISTS `voting`;
CREATE TABLE `voting` (
  `uid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`uid`),
  CONSTRAINT `uidcheck` FOREIGN KEY (`uid`) REFERENCES `user_reg` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voting`
--


/*!40000 ALTER TABLE `voting` DISABLE KEYS */;
LOCK TABLES `voting` WRITE;
INSERT INTO `voting` VALUES ('kgattu','Shiva'),('lasya','Padmavathi'),('ssunka','Ramesh'),('ygattu','Ramesh');
UNLOCK TABLES;
/*!40000 ALTER TABLE `voting` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

