USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."sales_by_category__dbt_tmp" as SELECT
  Category,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, '','', ''.'') AS DOUBLE)), 2) AS total_revenue
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY Category
ORDER BY total_revenue DESC;;
    ')

