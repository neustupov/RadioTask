CREATE DATABASE radiotask;
USE radiotask;
DROP TABLE IF EXISTS `test`.`tasktable`;
 CREATE TABLE `tasktable` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `productsname` varchar(45) NOT NULL DEFAULT 'not',
   `modelsname` varchar(45) NOT NULL DEFAULT 'not',
   `amount` int(11) NOT NULL DEFAULT '0',
   `price` int(11) NOT NULL DEFAULT '0',
   `phonenumber` varchar(45) NOT NULL DEFAULT 'not',
   `buyersname` varchar(45) NOT NULL DEFAULT 'not',
   `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
