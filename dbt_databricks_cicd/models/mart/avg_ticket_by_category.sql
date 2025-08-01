
{{ config(materialized='view') }}

SELECT
    Category,
    ROUND(AVG(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS avg_ticket
FROM {{ ref('stg_ecommerce') }}
GROUP BY Category
ORDER BY avg_ticket DESC
