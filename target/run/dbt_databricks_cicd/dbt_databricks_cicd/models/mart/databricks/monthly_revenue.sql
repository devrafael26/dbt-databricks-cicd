
  
  
  
  create or replace view `workspace`.`default`.`monthly_revenue`
  
  as (
    SELECT
  CAST(DATE_TRUNC('month', CAST(Purchase_Date AS DATE)) AS DATE) AS month,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS monthly_revenue
FROM `workspace`.`default`.`stg_ecommerce`
GROUP BY 1
ORDER BY 1
  )
