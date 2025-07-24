
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2bfcb17f27f3f21e6eed947a22a6423e_8545]
   as 
    
    
    



select Purchase_Date
from "MY_DB"."dbo"."ecommerce"
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
    [dbo].[testview_2bfcb17f27f3f21e6eed947a22a6423e_8545]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2bfcb17f27f3f21e6eed947a22a6423e_8545]
  ;')