

select 

    hash,
    block_number,
    date,
    from_address,
    to_address,
    value,
    receipt_contract_address,
    input

from (select * from eth.eth_schema.transactions where false limit 0)



where date >(select max(date) from CI.CI_SCHEMA.stg_transactions )

