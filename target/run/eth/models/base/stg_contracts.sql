
  
    

create or replace transient table DBT.DBT_NLM.stg_contracts
    

    
    as (

select 
    address,
    block_number,
    bytecode,
    date,
    last_modified
from eth.eth_schema.contracts
    )
;


  