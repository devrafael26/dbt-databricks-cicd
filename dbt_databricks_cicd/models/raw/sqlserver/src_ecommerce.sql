
select * from {{ source('sqlserver_data', 'ecommerce') }}

