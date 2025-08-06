USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."avg_discount_by_category__dbt_tmp" as SELECT
  Category,
  ROUND(AVG(CAST(`Discount` AS DOUBLE)), 2) AS avg_discount_percent
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY Category
ORDER BY avg_discount_percent DESC;;
    ')

