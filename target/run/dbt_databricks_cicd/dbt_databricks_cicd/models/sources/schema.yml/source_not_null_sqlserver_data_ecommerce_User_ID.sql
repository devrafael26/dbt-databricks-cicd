
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_cf5a2a1ccc69e2afe103181343e9f1f0_3244]
   as 
    
    
    



select User_ID
from "my_db"."dbo"."ecommerce"
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
    [dbo].[testview_cf5a2a1ccc69e2afe103181343e9f1f0_3244]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_cf5a2a1ccc69e2afe103181343e9f1f0_3244]
  ;')