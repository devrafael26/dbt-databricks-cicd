USE [MY_DB];
    
    

    

    
    USE [MY_DB];
    EXEC('
        create view "dbo"."src_ecommerce__dbt_tmp" as select * from "my_db"."dbo"."ecommerce";
    ')

