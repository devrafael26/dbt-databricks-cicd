
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0c828dfdcf5b3aad6aaa994913a3962f_5050]
   as 
    
    
    



select Final_Price
from "my_db"."dbo"."ecommerce"
where Final_Price is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0c828dfdcf5b3aad6aaa994913a3962f_5050]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0c828dfdcf5b3aad6aaa994913a3962f_5050]
  ;')