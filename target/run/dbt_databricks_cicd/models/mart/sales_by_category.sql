
  
  
  
  create or replace view `workspace`.`default`.`sales_by_category`
  
  as (
    SELECT
  Category,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS total_revenue
FROM `workspace`.`default`.`stg_ecommerce`
GROUP BY Category
ORDER BY total_revenue DESC
  )
