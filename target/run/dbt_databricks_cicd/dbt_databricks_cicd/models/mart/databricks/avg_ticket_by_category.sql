
  
  
  
  create or replace view `workspace`.`default`.`avg_ticket_by_category`
  
  as (
    SELECT
  Category,
  ROUND(AVG(CAST(REPLACE(`Final_Price`, ',', '.') AS DOUBLE)), 2) AS avg_ticket
FROM `workspace`.`default`.`stg_ecommerce`
GROUP BY Category
ORDER BY avg_ticket DESC
  )
