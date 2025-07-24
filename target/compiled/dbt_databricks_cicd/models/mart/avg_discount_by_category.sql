SELECT
  Category,
  ROUND(AVG(CAST(`Discount` AS DOUBLE)), 2) AS avg_discount_percent
FROM `workspace`.`default`.`stg_ecommerce`
GROUP BY Category
ORDER BY avg_discount_percent DESC;