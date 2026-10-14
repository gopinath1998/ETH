select
date,
token_address,
sum(value/1e6) as total_usd_value

from {{ ref('stg_token_transfers') }}
where lower(token_address) in(
    '0xdac17f958d2ee523a2206206994597c13d831ec7','0x1d17CBcF0D6D143135aE902365D2E5e2A16538D4'
)
group by date,token_address
