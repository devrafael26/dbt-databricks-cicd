{{ config(materialized='view') }}

SELECT
  Category,
  ROUND(AVG(CAST(`Discount` AS DOUBLE)), 2) AS avg_discount_percent
FROM {{ ref('stg_ecommerce') }}
GROUP BY Category
ORDER BY avg_discount_percent DESC



