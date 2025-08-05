{{ config(materialized='view') }}

SELECT
  CAST(User_ID AS STRING) AS User_ID,
  CAST(Product_ID AS STRING) AS Product_ID,
  CAST(Category AS STRING) AS Category,
  CAST(Price AS DOUBLE) AS Price,
  CAST(Discount AS INT) AS Discount,
  CAST(Final_Price AS DOUBLE) AS Final_Price,
  CAST(Payment_Method AS STRING) AS Payment_Method,
  CAST(Purchase_Date AS DATE) AS Purchase_Date
FROM {{ source('sqlserver_data', 'ecommerce') }}
