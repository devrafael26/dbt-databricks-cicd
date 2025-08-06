
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_740123bfb0fa861927990afc0b5efe4f_5908]
   as 
    
    
    



select Discount
from "workspace"."default"."sales_ecommerce"
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
    [dbo].[testview_740123bfb0fa861927990afc0b5efe4f_5908]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_740123bfb0fa861927990afc0b5efe4f_5908]
  ;')