
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3cfe25ddb861ff5e744fd3a0ffd68836_11281]
   as 
    
    
    



select Payment_Method
from "workspace"."default"."sales_ecommerce"
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
    [dbo].[testview_3cfe25ddb861ff5e744fd3a0ffd68836_11281]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3cfe25ddb861ff5e744fd3a0ffd68836_11281]
  ;')