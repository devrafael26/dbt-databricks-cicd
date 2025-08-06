USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."monthly_revenue__dbt_tmp" as SELECT
  CAST(DATE_TRUNC(''month'', CAST(Purchase_Date AS DATE)) AS DATE) AS month,
  ROUND(SUM(CAST(REPLACE(`Final_Price`, '','', ''.'') AS DOUBLE)), 2) AS monthly_revenue
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY 1
ORDER BY 1;;
    ')

