
    
    

select
    hash as unique_field,
    count(*) as n_records

from DBT.DBT_NLM.stg_transactions
where hash is not null
group by hash
having count(*) > 1


