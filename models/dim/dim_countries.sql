{{
    config(
        materialized='incremental',
        unique_key='country_id',
	incremental_strategy = 'delete+insert',
	tags = ['dim']
    )
}}
select 
COUNTRY_ID,
initcap(COUNTRY_NAME) as country_name,
REGION_ID,
CURRENT_TIMESTAMP as LOAD_TIME
from {{ref('stg_countries')}}

{% if is_incremental() %}

{{ inc() }}

{% endif %}