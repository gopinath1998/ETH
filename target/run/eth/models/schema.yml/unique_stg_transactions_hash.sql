
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    hash as unique_field,
    count(*) as n_records

from DBT.DBT_NLM.stg_transactions
where hash is not null
group by hash
having count(*) > 1



  
  
      
    ) dbt_internal_test