select * 

from {{ ref ('stable_coin_activity_per_day', v=2) }}

where type='Fiat-backed'