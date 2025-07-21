{{ config(materialized='view') }}

WITH base AS (
    SELECT
        product_category,
        SUM(total_amount) AS total_sales
    FROM {{ ref('stg_ecommerce') }}
    GROUP BY product_category
)

SELECT
    product_category,
    total_sales
FROM base
ORDER BY total_sales DESC
LIMIT 5
