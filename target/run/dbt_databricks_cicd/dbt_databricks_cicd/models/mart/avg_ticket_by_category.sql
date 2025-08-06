USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."avg_ticket_by_category__dbt_tmp" as 

SELECT
    Category,
    ROUND(AVG(CAST(REPLACE(`Final_Price`, '','', ''.'') AS DOUBLE)), 2) AS avg_ticket
FROM "MY_DB"."dbo"."stg_ecommerce"
GROUP BY Category
ORDER BY avg_ticket DESC;
    ')

