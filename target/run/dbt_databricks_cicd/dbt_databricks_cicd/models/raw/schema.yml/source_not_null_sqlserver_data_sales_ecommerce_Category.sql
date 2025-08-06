
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0d74b39eb8545add87cd446b19d85149_8066]
   as 
    
    
    



select Category
from "workspace"."default"."sales_ecommerce"
where Category is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0d74b39eb8545add87cd446b19d85149_8066]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0d74b39eb8545add87cd446b19d85149_8066]
  ;')