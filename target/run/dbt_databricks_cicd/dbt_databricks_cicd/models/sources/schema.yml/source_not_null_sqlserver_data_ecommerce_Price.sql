
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_e72d4251eae6aeb393f5f649a06f5ac0_4816]
   as 
    
    
    



select Price
from "my_db"."dbo"."ecommerce"
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
    [dbo].[testview_e72d4251eae6aeb393f5f649a06f5ac0_4816]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_e72d4251eae6aeb393f5f649a06f5ac0_4816]
  ;')