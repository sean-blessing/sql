select * from customer;
select * from customer
 where name like '%A%.';
--    or name like 'D%';


select * from customer
 where name like 'A%'
   and state = 'NJ';
   
-- Use a regular expression to return
-- all records with names starting 
-- with a vowel
select * from customer
 where name REGEXP "^[aeiou].*";
 
 select * from customer;
-- insert stmt
insert into customer 
  values (15,'Gibson Guitars', 'Memphis', 
			'TN', 75777789000,1);
insert into customer (Name, City, State, Sales, Active)
 values ('Ibanez', 'Bensalem', 'PA', 56677887, 1),
		('Ibanez', 'Bensalem', 'PA', 56677887, 1);
-- update statement
update customer 
  set name = 'Pearl',
      city = 'Test',
      state = 'TE'
	where id = '17';
    
-- Delete
-- select * from customer
delete from customer
 where id = 18;

-- select using 'in' clause
select * from customer
 where id in (10,11,12);


 
