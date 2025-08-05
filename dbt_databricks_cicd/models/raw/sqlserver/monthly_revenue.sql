{{ config(materialized='view') }}

SELECT
  DATEFROMPARTS(YEAR(CAST(Purchase_Date AS DATE)), MONTH(CAST(Purchase_Date AS DATE)), 1) AS month,
  ROUND(SUM(CAST(REPLACE(Final_Price, ',', '.') AS FLOAT)), 2) AS monthly_revenue
FROM {{ ref('stg_ecommerce') }}
GROUP BY DATEFROMPARTS(YEAR(CAST(Purchase_Date AS DATE)), MONTH(CAST(Purchase_Date AS DATE)), 1)
ORDER BY month



