{{ config(materialized='view') }}

WITH base AS (
    SELECT
        product_id,
        ROUND(SUM(CAST(REPLACE(Final_Price, ',', '.') AS FLOAT)), 2) AS total_sales
    FROM {{ ref('stg_ecommerce') }}
    GROUP BY product_id
)

SELECT TOP 5
    product_id,
    total_sales
FROM base
ORDER BY total_sales DESC

