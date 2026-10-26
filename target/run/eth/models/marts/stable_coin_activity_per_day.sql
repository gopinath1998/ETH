
  
    

create or replace transient table DBT.DBT_NLM_marts.stable_coin_activity_per_day
    
  (
    date date,
    token_address varchar,
    type varchar,
    symbol varchar,
    total_usd_value float
    
    )

    

    
    as (
    select date, token_address, type, symbol, total_usd_value
    from (
        

select

    t.date,
    t.token_address,
    s.type,
    s.symbol,
    

(sum( t.value /POWER(10, s.decimals) ))

 as total_usd_value

from DBT.DBT_NLM.stg_token_transfers t
left join seeds.DBT_NLM_static.stablecoins s
on t.token_address=s.contract_address

where s.contract_address is null 

group by 
t.date,
t.token_address,
s.type,
s.symbol
    ) as model_subq
    )
;


  