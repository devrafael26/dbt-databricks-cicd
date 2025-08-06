{{ config(
    enabled=(target.name == 'databricks'),
    materialized='view'
) }}

SELECT
  User_ID,
  Product_ID,
  Category,
  Price,
  Discount,
  Final_Price,
  Payment_Method,
  Purchase_Date
FROM {{ ref('src_ecommerce') }}
