
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2c8d889fb816fb0fe64ea2fee14e9eaf_15802]
   as 
    
    
    



select Final_Price
from "MY_DB"."dbo"."ecommerce"
where Final_Price is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_2c8d889fb816fb0fe64ea2fee14e9eaf_15802]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2c8d889fb816fb0fe64ea2fee14e9eaf_15802]
  ;')