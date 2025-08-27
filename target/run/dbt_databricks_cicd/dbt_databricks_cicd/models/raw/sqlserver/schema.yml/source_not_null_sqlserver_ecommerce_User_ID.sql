
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_5cef0262c7fe2f5ca6f3d4035b69eb02_10845]
   as 
    
    
    



select User_ID
from "MY_DB"."dbo"."ecommerce"
where User_ID is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_5cef0262c7fe2f5ca6f3d4035b69eb02_10845]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_5cef0262c7fe2f5ca6f3d4035b69eb02_10845]
  ;')