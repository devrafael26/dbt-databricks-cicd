{{ config(materialized='view') }}

{{ config(materialized='view') }}

SELECT
  Payment_Method,
  COUNT(*) AS total_transactions,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS total_value
FROM {{ ref('stg_ecommerce') }}
GROUP BY Payment_Method
ORDER BY total_value DESC

