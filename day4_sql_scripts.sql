INSERT INTO accounts VALUES 
(50,'Donald Trump',77778885,0);

INSERT INTO accounts VALUES 
('Donald Duck',5,0);

INSERT INTO accounts (AccountHolder, Balance, Fees)
 VALUES ('Dave Grohl', 2450000, 0);

INSERT INTO accounts (Balance, Fees, AccountHolder)
 VALUES (2450000, 0, 'Cher');

-- UPDATE accounts
--   SET AccountHolder = 'Donald J Trump'
-- WHERE ID = 50;
UPDATE accounts
   SET AccountHolder = 'Donald J Trump'
 where ID = 50;
 
update accounts
  set Fees = 0;

update accounts
  set Fees = 100
  where balance <= 100000;

delete from accounts
 where id = 52;
 
select * from accounts
 where id in (50,51,52,53);
 
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
  
 select distinct(balance)
   from accounts;