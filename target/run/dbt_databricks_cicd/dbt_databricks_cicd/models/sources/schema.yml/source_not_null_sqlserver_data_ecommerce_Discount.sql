
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_5a693b107c6d94cc971f3f52da874160_17625]
   as 
    
    
    



select Discount
from "my_db"."dbo"."ecommerce"
where Discount is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_5a693b107c6d94cc971f3f52da874160_17625]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_5a693b107c6d94cc971f3f52da874160_17625]
  ;')