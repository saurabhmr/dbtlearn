{{
  config(
    materialized = 'view',
    )
}}
WITH src_hosts as (
select 
    * from {{ ref('src_hosts') }}
)
select 
    HOST_ID,
    NVL(HOST_NAME,'Anonymous') AS HOST_NAME,
	IS_SUPERHOST,
	CREATED_AT,
	UPDATED_AT
    from src_hosts