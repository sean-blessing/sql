select * from product
 order by listprice desc;
 
SELECT listprice, count(*) FROM mma.product
 group by listprice;
 
 
select *, li.quantity*p.listprice from lineitem li
 join product p
  on li.ProductID = p.ID;
