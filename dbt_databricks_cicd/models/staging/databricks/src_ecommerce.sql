{{ config(materialized='view') }}

select * from bronze_layer.ecommerce
