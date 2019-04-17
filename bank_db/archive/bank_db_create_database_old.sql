-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- create the accounts table
CREATE TABLE accounts (
  ID 				int					PRIMARY KEY		AUTO_INCREMENT,
  AccountHolder 	varchar(45)			NOT NULL,
  Balance 			decimal(10,2) 		NOT NULL,
  Fees 				decimal(10,2) 		NOT NULL
);

-- create the transactions table
CREATE TABLE transactions (
  ID 					int 			PRIMARY KEY		AUTO_INCREMENT,
  Amount 				decimal(10,2) 	NOT NULL,
  TransactionType 		varchar(45) 	NOT NULL,
  AccountID			 	int 	NOT NULL,
  FOREIGN KEY (AccountID) REFERENCES accounts(`ID`)
);

INSERT INTO accounts VALUES 
(1,'Rachael Baumann',8888,250),
(2,'Michael Page',5444,175),
(3,'Angie Snyder',3333,88),
(4,'Robert Mahoney',3322,88),
(22,'Michael Jordan',1245999,0),
(23,'Fred Flinstone',1245999,0),
(24,'Larry Bird',52000,0),
(25,'Joan Crawford',88888,0);

INSERT INTO transactions VALUES 
(1,500,'Deposit',3),
(2,-200,'Withdrawal',4),
(3,200,'Deposit',4),
(4,248,'Deposit',1);


-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON bank_db.*
TO bank_db_user@localhost
IDENTIFIED BY 'sesame';