-- distinct example
SELECT distinct(storenumber) FROM bigbox.store;

-- having example
select storenumber
 from store 
 having count(storeNumber >1);
 
-- desc example 
 select * from store
   order by StoreName desc;

-- Get sales summary for division 001
select DivisionNumber, sum(storesales.Sales) 
  from division, store, storesales
 where DivisionNumber = '001'
   and division.id = store.DivisionID
   and storesales.StoreID = store.ID;

-- count example   
select count(*) from storesales
 -- where StoreID in (1,2,3,4);
 where StoreID in (select id from store where DivisionID = 1);
 
 -- demo of contraint violation
 insert into store (DivisionId, StoreNumber, StoreName) 
	values
 (2, '00044', 'Riverfront Big Box212222');
