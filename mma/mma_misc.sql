-- alter stmt
ALTER TABLE `mma`.`product` 
CHANGE COLUMN `Code` `Code` VARCHAR(5) NOT NULL ;

-- using an alias


-- join 3 tables
select OrderNumber, customername, code, description, ListPrice 
  from invoice inv, product pdt, lineitem li
 where inv.id = 1
   and inv.id = li.InvoiceID
   and pdt.ID = li.ProductID;
   
-- summarize invoice
select OrderNumber, CustomerName, OrderDate, 
	   InvoiceID, sum(b.Quantity*c.ListPrice) as 'Invoice Total'
  from invoice a, lineitem b, product c
 where a.ID = 1
   and a.ID = b.InvoiceID
   and b.ProductID = c.ID
 group by a.ID