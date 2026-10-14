

select 

    hash,
    block_number,
    date,
    from_address,
    to_address,
    value,
    receipt_contract_address,
    input

from eth.eth_schema.transactions



where date >(select max(date) from DBT.DBT_NLM.stg_transactions )

