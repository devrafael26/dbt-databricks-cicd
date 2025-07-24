
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_fee4a1ec1ab7f83b9d25d30e36124d92_3635]
   as 
    
    
    



select Final_Price(Rs.)
from "MY_DB"."dbo"."ecommerce"
where Final_Price(Rs.) is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_fee4a1ec1ab7f83b9d25d30e36124d92_3635]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_fee4a1ec1ab7f83b9d25d30e36124d92_3635]
  ;')