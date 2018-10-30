-- execute these off sqlbootcampexample schema

select * from customer
 order by state;

SELECT * FROM customer;
 
select CONCAT('$', FORMAT(sum(sales),2)) as 'Total Sales' from customer
 where state = 'CA';
 
select state, CONCAT('$', FORMAT(sum(sales),2)) as 'State Sales'
  from customer
  group by state;