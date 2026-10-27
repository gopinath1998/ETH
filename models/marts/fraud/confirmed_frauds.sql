{{ config(group = 'fraud_risk',access='private') }}

select 
    *
from {{ ref('stg_transactions_enriched') }}
where from_address in('0x80d04079ffc53eb14edbeeb37279d126f45552df')