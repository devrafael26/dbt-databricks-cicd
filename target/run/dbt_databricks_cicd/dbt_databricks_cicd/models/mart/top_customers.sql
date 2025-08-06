USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."top_customers__dbt_tmp" as 

SELECT
  User_ID,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, '','', ''.'') AS DOUBLE)), 2) AS total_spent
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY User_ID
ORDER BY total_spent DESC
LIMIT 10;;
    ')

