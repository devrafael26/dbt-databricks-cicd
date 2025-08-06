
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0f53a46810cccddc285b5a5f2fa86299_14720]
   as 
    
    
    



select Purchase_Date
from "my_db"."dbo"."ecommerce"
where Purchase_Date is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0f53a46810cccddc285b5a5f2fa86299_14720]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0f53a46810cccddc285b5a5f2fa86299_14720]
  ;')