

select
    date,
    transaction_category,
    count(*) as tran_count ,
    

sum( value)/1e18

 as sum_eth_value
from PROD.PROD_SCHEMA.stg_transactions_enriched
group by date, transaction_category