USE [my_db];
    
    

    

    
    USE [my_db];
    EXEC('
        create view "dbo"."src_ecommerce__dbt_tmp" as 

select * from "my_db"."dbo"."ecommerce";
    ')

