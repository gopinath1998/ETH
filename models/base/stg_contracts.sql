{{ config(materialised='table') }}

select 
    address,
    block_number,
    bytecode,
    date,
    last_modified
from {{ source('eth','contracts') }}