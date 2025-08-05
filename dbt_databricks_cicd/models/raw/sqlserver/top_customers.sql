{{ config(materialized='view') }}

SELECT TOP 10
  User_ID,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(REPLACE(Final_Price, ',', '.') AS FLOAT)), 2) AS total_spent
FROM {{ ref('stg_ecommerce') }}
GROUP BY User_ID
ORDER BY total_spent DESC

