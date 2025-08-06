

WITH base AS (
    SELECT
        product_id,
        ROUND(SUM(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2)AS total_sales
    FROM "MY_DB"."dbo"."stg_ecommerce"
    GROUP BY product_id
)

SELECT
    product_id,
    total_sales
FROM base
ORDER BY total_sales DESC
LIMIT 5