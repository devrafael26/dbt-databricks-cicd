
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_21a139b11381849eb19de652fee70f66_12527]
   as 
    
    
    



select Payment_Method
from "my_db"."dbo"."ecommerce"
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
    [dbo].[testview_21a139b11381849eb19de652fee70f66_12527]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_21a139b11381849eb19de652fee70f66_12527]
  ;')