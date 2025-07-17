SELECT
  Category,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS total_revenue
FROM {{ ref('stg_ecommerce') }}
GROUP BY Category
ORDER BY total_revenue DESC;
