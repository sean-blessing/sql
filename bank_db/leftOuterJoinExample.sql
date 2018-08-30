SELECT ID, AMOUNT, TransactionType as 'Trans Type'
  FROM transactions
 -- WHERE CheckingAccountID = 4
 -- ORDER BY ID ASC
 ;

select * from accounts;
select * from transactions;

-- inner join
select AccountHolder, Balance, Fees, Amount, TransactionType
 from 
	accounts a
		inner join
	transactions t
		on a.ID = t.AccountID;


select AccountHolder, Balance, Fees, Amount, TransactionType
 from accounts a, transactions t
 where a.ID = t.AccountID;

-- left outer join
select AccountHolder, Balance, Fees, Amount, TransactionType
  from accounts ca
  left outer join transactions t
    on ca.id = AccountID;
 
 