
  
    

create or replace transient table CI.CI_SCHEMA.stg_contracts
    

    
    as (

select 
    address,
    block_number,
    bytecode,
    date,
    last_modified
from (select * from eth.eth_schema.contracts where false limit 0)
    )
;


  