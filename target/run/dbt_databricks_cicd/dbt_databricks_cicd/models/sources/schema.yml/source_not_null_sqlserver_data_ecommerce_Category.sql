
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_491fe7bb43562776c9b8b25f5b1f0e65_18577]
   as 
    
    
    



select Category
from "my_db"."dbo"."ecommerce"
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
    [dbo].[testview_491fe7bb43562776c9b8b25f5b1f0e65_18577]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_491fe7bb43562776c9b8b25f5b1f0e65_18577]
  ;')