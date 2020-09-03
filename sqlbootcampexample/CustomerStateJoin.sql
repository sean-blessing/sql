select c.Name as 'Customer Name', City, 
	State, s.Name as 'State Name'
  from customer c
 inner join
    state s
    on c.State = s.Code;