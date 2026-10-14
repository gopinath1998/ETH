
  
    

create or replace transient table DBT.DBT_NLM.stg_token_transfers
    

    
    as (

select 
transaction_hash,
date,
token_address,
value

from eth.eth_schema.token_transfers
    )
;


  