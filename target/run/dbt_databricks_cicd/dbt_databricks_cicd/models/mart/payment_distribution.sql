USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."payment_distribution__dbt_tmp" as SELECT
  Payment_Method,
  COUNT(*) AS total_transactions,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, '','', ''.'') AS DOUBLE)), 2) AS total_value
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY Payment_Method
ORDER BY total_value DESC;;
    ')

