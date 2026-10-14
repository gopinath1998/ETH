
  
    

create or replace transient table DBT.DBT_NLM.eth_activity_per_day
    

    
    as (

select
    date,
    transaction_category,
    count(*) as tran_count ,
    

sum( value)/1e18

 as sum_eth_value
from DBT.DBT_NLM.stg_transactions_enriched
group by date, transaction_category
    )
;


  