{{ config(enabled=(target.name == 'sqlserver')) }}

select * from {{ source('sqlserver', 'ecommerce') }}

