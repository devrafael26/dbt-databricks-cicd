
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_625c46632096eb9e0c11e4a43006c670_16572]
   as 
    
    
    



select Discount
from "MY_DB"."dbo"."ecommerce"
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
    [dbo].[testview_625c46632096eb9e0c11e4a43006c670_16572]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_625c46632096eb9e0c11e4a43006c670_16572]
  ;')