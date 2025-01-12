/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.1.49-community : Database - cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cms`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `canteenacc` int(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`,`name`,`canteenacc`) values ('Ashu@001','Admin@123','Ashu',150);

/*Table structure for table `debittrans` */

DROP TABLE IF EXISTS `debittrans`;

CREATE TABLE `debittrans` (
  `type` varchar(20) DEFAULT NULL,
  `from` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `type2` varchar(20) DEFAULT NULL,
  `to` varchar(20) DEFAULT NULL,
  `purchased` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `debittrans` */

insert  into `debittrans`(`type`,`from`,`amount`,`type2`,`to`,`purchased`) values ('Debited','Canteen','5000','Creadit','Raj','Nothing'),('Debited','Raj','5000','Creadit','Canteen','Nothing'),('Debited','Canteen','5000','Creadit','Rohit Solanki','Nothing'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','IOTD Vegetable Samosa'),('Debited','Raj','50','Credited','Canteen','Vegetable Samosa');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `name` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `amount` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp` */

insert  into `emp`(`name`,`id`,`password`,`contact`,`gender`,`age`,`city`,`amount`) values ('Raj','Raj@01','12345678','9876543210','male','20','pithumpur',9250),('Rohit Solanki','Rohit@1','12120000','9876543560','male','20','Indore',5000),('sunny shah','sunny@11','12110000','9874561239','male','19','Indore',0);

/*Table structure for table `iotd` */

DROP TABLE IF EXISTS `iotd`;

CREATE TABLE `iotd` (
  `name1` varchar(50) DEFAULT NULL,
  `quantity1` varchar(50) DEFAULT NULL,
  `price1` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `quantity2` varchar(50) DEFAULT NULL,
  `price2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `quantity3` varchar(50) DEFAULT NULL,
  `price3` varchar(50) DEFAULT NULL,
  `name4` varchar(50) DEFAULT NULL,
  `quantity4` varchar(50) DEFAULT NULL,
  `price4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iotd` */

insert  into `iotd`(`name1`,`quantity1`,`price1`,`name2`,`quantity2`,`price2`,`name3`,`quantity3`,`price3`,`name4`,`quantity4`,`price4`) values ('Chicken Garlic Fry','1','null','Chicken Garlic Fry','2','null','Vegetable Samosa','2','50','Tandoori Chicken Main','2','null');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `ItemID` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `FullPlate` varchar(25) DEFAULT NULL,
  `Type` varchar(25) DEFAULT NULL,
  `Category` varchar(25) DEFAULT NULL,
  `HalfPlate` varchar(25) DEFAULT NULL,
  `Price` varchar(20) DEFAULT NULL,
  `Quantity` varchar(4) DEFAULT NULL,
  UNIQUE KEY `ItemID` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`ItemID`,`Name`,`FullPlate`,`Type`,`Category`,`HalfPlate`,`Price`,`Quantity`) values (2,'Vegetable Samosa','20','Veg','Starters','10','50','55'),(3,'Onion Bhaji ','60','Veg','Starters','30',NULL,NULL),(4,'Potato and Mushroom Chaat','80','Veg','Starters','40',NULL,NULL),(5,'Mushroom Garlic Fry','60','Veg','Starters','30',NULL,NULL),(6,'Chicken Tikka','150','Non-Veg','Starters','75',NULL,NULL),(7,'Tandoori Chicken','250','Non-Veg','Starters','125',NULL,NULL),(8,'Chicken Garlic Fry','200','Non-Veg','Starters','100',NULL,NULL),(9,'Chicken Tikka on Puree','200','Non-Veg','Starters','100',NULL,NULL),(10,'Lamb Tikka','150','Non-Veg','Starters','75',NULL,NULL),(11,'Tandoori King Prawn','200','Non-Veg','SeaFood','100',NULL,NULL),(12,'King Prawn Rosun','200','Non-Veg','SeaFood','100',NULL,NULL),(13,'King Prawn on Puree','200','Non-Veg','SeaFood','100',NULL,NULL),(14,'Prawn Bhuna on Puree','200','Non-Veg','SeaFood','100',NULL,NULL),(15,'Prawn Cocktail','200','Non-Veg','SeaFood','100',NULL,NULL),(16,'Chi/Lam Sashlik Chi','200','Non-Veg','Tandoori Specials','100',NULL,NULL),(17,'Tandoori Deluxe','300','Non-Veg','Tandoori Specials','150',NULL,NULL),(18,'Tandoori Chicken Main','300','Non-Veg','Tandoori Specials','150',NULL,NULL),(19,'Chicken Tikka','200','Non-Veg','Tandoori Specials','100',NULL,NULL),(20,'Lamb Tikka','100','Non-Veg','Tandoori Specials','50',NULL,NULL),(21,'Bombay Aloo ','100','Veg','Vegetable Dishes','50',NULL,NULL),(22,'Mushroom Bhaji ','60','Veg','Vegetable Dishes','30',NULL,NULL),(23,'Saag Dall','60','Veg','Vegetable Dishes','30',NULL,NULL),(24,'Mattor Paneer','150','Veg','Vegetable Dishes','75',NULL,NULL),(25,'Vegetable Roshun','150','Veg','Vegetable Dishes','75',NULL,NULL),(26,'Boiled Rice','80','Veg','Side Orders - Rice','40',NULL,NULL),(27,'Keema Pilau Rice','70','Non-Veg','Side Orders - Rice','35',NULL,NULL),(28,'Mushroom Rice','90','Veg','Side Orders - Rice','45',NULL,NULL),(29,'Garlic Naan','30','Veg','Side Orders - Bread','15',NULL,NULL),(30,'Stuffed Naan','25','Veg','Side Orders - Bread','15',NULL,NULL),(31,'Chapati','10','Veg','Side Orders - Bread','5',NULL,NULL),(32,'Green Salad','50','Veg','Side Orders - Sundries','25',NULL,NULL),(33,'Spice Popadum','50','Veg','Side Orders - Sundries','25',NULL,NULL),(34,'Chutney','10','Veg','Side Orders - Sundries','5',NULL,NULL),(35,'Ras Malai','40','Veg','Dessert','20',NULL,NULL),(36,'Ice Cream','50','Veg','Dessert','25',NULL,NULL),(37,'Gulab Jamun','40','Veg','Dessert','20',NULL,NULL),(38,'Kulfi','30','Veg','Dessert','15',NULL,NULL),(39,'Kheer','40','Veg','Dessert','20',NULL,NULL);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `by` varchar(20) DEFAULT NULL,
  `to` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`by`,`to`,`type`,`amount`) values ('Canteen','Raj','Credit','5000'),('Canteen','Raj','Credit','5000'),('Canteen','Raj','Debited','5000'),('Canteen','Rohit Solanki','Credit','5000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
