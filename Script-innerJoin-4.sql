select * from clients; 

select * from accounts;

-- query 1
select c.id as "id Clients", c.first_name as "Name", 
c.last_name as "Lastname", c.email as "Email", 
a.account_no as "Account", a.balance as "Balance"  
from clients c
left join accounts a on c.id  = a.client_id; 


--query 2
select a.account_no as "account", a.client_id as "id client", 
a_tps.name as "type account" 
from accounts a 
left join account_types a_tps  on a.type = a_tps.id;  


--query 3
select t.id as "transaction", t.amount,
tt.name as "type transaction" 
from transactions t 
left join transactions_types tt on t.transaction_type = tt.id; 


--query 4
select t.id as "transaction", t.amount,
tt.name as "type transaction" 
from transactions t 
right join transactions_types tt on t.transaction_type = tt.id; 



-- vista1 

create view v_clients_accounts as 
select c.id as "id Clients", c.first_name as "Name", 
c.last_name as "Lastname", c.email as "Email", 
a.account_no as "Account", a.balance as "Balance"  
from clients c
left join accounts a on c.id  = a.client_id; 

-- vista2

create view v_accounts_types as
select a.account_no as "account", a.client_id as "id client", 
a_tps.name as "type account" 
from accounts a 
left join account_types a_tps  on a.type = a_tps.id;


--vista 3

create view v_transactions_detail as
select t.id as "transaction", t.amount,
tt.name as "type transaction" 
from transactions t 
left join transactions_types tt on t.transaction_type = tt.id;

--vista 4

create view v_transactions_types_detail as
select t.id as "transaction", t.amount,
tt.name as "type transaction" 
from transactions t 
right join transactions_types tt on t.transaction_type = tt.id;

