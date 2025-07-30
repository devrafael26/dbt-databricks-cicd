
select * from {{ source('sqlserver_data', 'sales_ecommerce') }}

