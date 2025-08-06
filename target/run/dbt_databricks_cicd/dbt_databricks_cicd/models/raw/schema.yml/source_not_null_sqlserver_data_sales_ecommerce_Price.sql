
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2b8e9565935d02960cbcc5201d65c6ed_4049]
   as 
    
    
    



select Price
from "workspace"."default"."sales_ecommerce"
where Price is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_2b8e9565935d02960cbcc5201d65c6ed_4049]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2b8e9565935d02960cbcc5201d65c6ed_4049]
  ;')