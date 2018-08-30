SELECT * 
  FROM product
-- WHERE ProductID = 5
 WHERE ListPrice = 57.50
   AND code = 'java';
   
select * from product
 where ListPrice < 55;
 
select * from product
 order by Description desc;
 
 select max(listprice) from product;
 
 select count(*) from product
  where listprice = 57.50;
  
select pdt.ProductID, Code, -- test comment
	   pdt.Description, pdt.ListPrice 
  from product pdt;
  
  delete from product
  -- where id = 7
  
  
  
  
  
  
  
  