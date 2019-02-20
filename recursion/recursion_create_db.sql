-- create and select the database
DROP DATABASE IF EXISTS recursion;
CREATE DATABASE recursion;
USE recursion;

-- create User table
Create table User 	 (
ID 					integer 		primary key auto_increment,
Username 			varchar(10) 	not null,
CONSTRAINT uname unique (Username)
);

-- create Request table
Create table Request 	 (
ID 					integer 		primary key auto_increment,
UserID 				integer 		not null,
Name				varchar(20) 	not null,
SubmittedDate 		datetime 		default current_timestamp not null,
Foreign Key (UserID) references user(ID)
);

-- Add users
insert into user (ID,Username) VALUES
	(1,'kmusgraves'),
	(2,'dgrohl'),
	(3,'dbyrne'),
	(4,'iastbury'),
	(5,'jmorrison'),
	(6,'bmarley');

-- Add requests
insert into request (UserID,Name) VALUES
	(1,'Req 1'),
	(1,'Req 2'),
	(1,'Req 3'),
	(2,'More guitars'),
	(6,'reggae'),
	(6,'doobies');

-- create a user and grant privileges to that user
CREATE USER recur@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON recursion.* TO recur@localhost;