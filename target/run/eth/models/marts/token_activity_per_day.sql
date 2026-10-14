
  
    

create or replace transient table DBT.DBT_NLM_marts.tron_activity_per_day
    

    
    as (

select

    t.date,
    t.token_address,
    

(sum( t.value /POWER(10, 6) ))

 as total_usd_value

from DBT.DBT_NLM.stg_token_transfers t
where lower(t.token_address)= '0x50327c6c5a14dcade707abad2e27eb517df87ab5'

group by 
t.date,
t.token_address
    )
;


  