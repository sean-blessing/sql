CREATE DATABASE  IF NOT EXISTS `bank_db` ;
USE `bank_db`;

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccountHolder` varchar(45) NOT NULL,
  `Balance` decimal(10,2) NOT NULL,
  `Fees` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ;


INSERT INTO `accounts` VALUES (1,'Anna Bengel',8888.00,100.00),(2,'Chase Williams',5444.00,100.00),(3,'Jonelle Wehrman',3333.00,100.00),(4,'Steven Ross',3322.00,100.00);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Amount` decimal(10,2) NOT NULL,
  `txn_type` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `transactions_ibfk_1` (`account_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`ID`)
);


--
-- Dumping data for table `transactions`
--


INSERT INTO `transactions` VALUES (1,500.00,'Deposit',3),(2,-200.00,'Withdrawal',4),(3,200.00,'Deposit',4),(4,248.00,'Deposit',1);
