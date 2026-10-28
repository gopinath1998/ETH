
  
    

create or replace transient table CI.CI_SCHEMA.stg_token_transfers
    

    
    as (

select 
transaction_hash,
date,
token_address,
value

from (select * from eth.eth_schema.token_transfers where false limit 0)
    )
;


  