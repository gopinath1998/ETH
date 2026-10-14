
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select hash
from DBT.DBT_NLM.stg_transactions
where hash is null



  
  
      
    ) dbt_internal_test