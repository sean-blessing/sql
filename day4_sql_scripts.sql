-- insert, no column names, include ID
INSERT INTO accounts VALUES 
(50,'Donald Trump',77778885,0);

-- insert, no column names, no ID...  should fail
INSERT INTO accounts VALUES 
('Donald Duck',5,0);

-- insert, specify column names, no ID... DB should generate ID
INSERT INTO accounts (AccountHolder, Balance, Fees)
 VALUES ('Dave Grohl', 2450000, 0);

-- insert, specify column names in different order... should work
INSERT INTO accounts (Balance, Fees, AccountHolder)
 VALUES (2450000, 0, 'Cher');

-- UPDATE by ID
UPDATE accounts
   SET AccountHolder = 'Donald J Trump'
 where ID = 50;

-- update all records... only do this if you are really sure!!
update accounts
  set Fees = 0;

-- update all fees where balance is less than 100K
update accounts
  set Fees = 100
  where balance <= 100000;

-- delete by id - the way you SHOULD do it!
delete from accounts
 where id = 52;

-- select using the 'in' clause in filter 
select * from accounts
 where id in (50,51,52,53);

-- select w/ or clauses and like clauses and wildcard
select * from accounts
 where accountholder like 'a%'
    or accountholder like 'e%'
    or accountholder like 'i%'
    or accountholder like 'o%'
    or accountholder like 'u%';
    
-- select statement with a regular expression, 
-- looking for names that start with a vowel    
select * from accounts
WHERE accountholder REGEXP "^[aeiou].*";
 
select balance 
  from accounts;

-- distinct keyword  
 select distinct(balance)
   from accounts;