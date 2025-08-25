
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_1d42587dad758e4d02f35151eae87fd6_7176]
   as 
    
    
    



select Category
from "MY_DB"."dbo"."ecommerce"
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
    [dbo].[testview_1d42587dad758e4d02f35151eae87fd6_7176]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_1d42587dad758e4d02f35151eae87fd6_7176]
  ;')