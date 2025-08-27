
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3f8b356bcfe8cdc90455e1a827ed5135_3486]
   as 
    
    
    



select Payment_Method
from "MY_DB"."dbo"."ecommerce"
where Payment_Method is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_3f8b356bcfe8cdc90455e1a827ed5135_3486]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3f8b356bcfe8cdc90455e1a827ed5135_3486]
  ;')