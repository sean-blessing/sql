-- 3 tables select, no join
select OrderNumber, CustomerName, OrderDate, 
		code, Description, ListPrice as 'Unit Price', total
 from invoice i, lineitem li, product p
 where li.InvoiceID = i.ID
   and li.ProductID = p.ID;

-- 3 tables join
select OrderNumber, CustomerName, OrderDate, 
		code, Description, ListPrice as 'Unit Price', total
 from lineitem li
inner join invoice i
        on InvoiceID = i.ID
inner join product p
        on ProductID = p.ID;