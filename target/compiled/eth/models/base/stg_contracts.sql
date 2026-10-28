

select 
    address,
    block_number,
    bytecode,
    date,
    last_modified
from (select * from eth.eth_schema.contracts where false limit 0)