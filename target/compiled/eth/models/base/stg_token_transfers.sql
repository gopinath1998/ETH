

select 
transaction_hash,
date,
token_address,
value

from (select * from eth.eth_schema.token_transfers where false limit 0)