-- select all customers
select * from customer;

-- select using the 'in' clause in filter 
select * from customer
 where id in (1,2,3,4);

-- select w/ or clauses and like clauses and wildcard
select * from customer
 where name like 'a%'
    or name like 'e%'
    or name like 'i%'
    or name like 'o%'
    or name like 'u%';
    
-- select statement with a regular expression, 
-- looking for names that start with a vowel    
select * from customer
WHERE name REGEXP "^[aeiou].*";

-- insert a new row w/ identical sales to one other record
insert customer (name, city, state, sales, active)
values ('Best Company Ever', 'Cincinnati', 'OH', 39912857, 1);

-- how many rows in the table?
select count(*) from customer;

-- basic select, use prior to next statement
select sales 
  from customer
  order by sales;

-- distinct keyword  
 select distinct(sales)
   from customer;
   
SELECT name, sales INTO @var1, @var2 
	FROM customer WHERE id = 1;
    
select * from customer
 where name = @var1;