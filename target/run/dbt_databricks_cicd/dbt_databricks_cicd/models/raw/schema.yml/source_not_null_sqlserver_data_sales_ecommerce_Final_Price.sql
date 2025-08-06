
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3037c8ece9cb58b14bf62f030dbe2ff8_7369]
   as 
    
    
    



select Final_Price
from "workspace"."default"."sales_ecommerce"
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
    [dbo].[testview_3037c8ece9cb58b14bf62f030dbe2ff8_7369]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3037c8ece9cb58b14bf62f030dbe2ff8_7369]
  ;')