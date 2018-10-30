-- create and select the database
DROP DATABASE IF EXISTS tv_shows;
CREATE DATABASE tv_shows;
USE tv_shows;

-- create TvShow table
Create table TvShow (
ID 				integer 		primary key auto_increment,
Name	 		varchar(100) 	not null,
Rating	 		varchar(5)	 	not null,
Length	 		integer		 	not null,
Genre	 		varchar(25) 	not null,
Network		 	varchar(25) 	not null,
CONSTRAINT name_network unique (Name, Network)
);

-- Add data to TvShow
insert into TvShow VALUES
	(1, 'Seinfeld', 'TV-14', 30, 'Comedy', 'NBC'),
	(2, 'Star Trek', 'TV-14', 60, 'Sci-Fi', 'CBS'),
	(3, 'The Middle', 'TV-14', 30, 'Comedy', 'ABC'),
	(4, 'Curb Your Enthusiasm', 'TV-MA', 30, 'Comedy', 'HBO'),
	(5, 'Arrested Development', 'TV-14', 30, 'Comedy', 'Netflix'),
	(6, 'Archer', 'TV-MA', 30, 'Comedy', 'FX'),
	(7, 'Three''s Company', 'TV-14', 30, 'Comedy', 'TV Land'),
	(8, 'Buffy the Vampire Slayer', 'TV-14', 60, 'Action', 'FX'),
	(9, 'Game of Thrones', 'TV-MA', 60, 'Drama', 'HBO'),
	(10, 'Walking Dead', 'TV-MA', 60, 'Action', 'AMC');

-- create a user and grant privileges to that user
CREATE USER tv_shows_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON tv_shows.* TO tv_shows_user@localhost;