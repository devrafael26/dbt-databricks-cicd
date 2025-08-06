{{ config(enabled=(target.name == 'databricks'), materialized='view') }}

SELECT * FROM default.sales_ecommerce

