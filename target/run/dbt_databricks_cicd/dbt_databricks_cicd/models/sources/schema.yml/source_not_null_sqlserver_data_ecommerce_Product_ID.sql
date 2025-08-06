
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_aa576225f643234fe9ca29dea78b3ee4_3566]
   as 
    
    
    



select Product_ID
from "my_db"."dbo"."ecommerce"
where Product_ID is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_aa576225f643234fe9ca29dea78b3ee4_3566]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_aa576225f643234fe9ca29dea78b3ee4_3566]
  ;')