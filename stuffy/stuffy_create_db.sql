-- create and select the database
DROP DATABASE IF EXISTS stuffy;
CREATE DATABASE stuffy;
USE stuffy;

-- create Stuffy table
Create table Stuffy (
ID 			integer 		primary key auto_increment,
Type 		varchar(20) 	not null,
Color 		varchar(10) 	not null,
Size 		varchar(10) 	not null
);

-- Add 'SYSTEM' user
insert into Stuffy VALUES
	(1, 'Dog', 'Red', 'Large'),
	(2, 'Cat', 'Black', 'Medium'),
    (3, 'Bear', 'Blue', 'Small'),
    (4, 'Turtle', 'Green', 'Small'),
    (5, 'Whale', 'Blue', 'Large');

-- create a user and grant privileges to that user
CREATE USER stuffy_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON stuffy.* TO stuffy_user@localhost;



