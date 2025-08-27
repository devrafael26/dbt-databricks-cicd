
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_1544ad91be61af9a05c7c7a9011fe99e_3095]
   as 
    
    
    



select Price
from "MY_DB"."dbo"."ecommerce"
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
    [dbo].[testview_1544ad91be61af9a05c7c7a9011fe99e_3095]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_1544ad91be61af9a05c7c7a9011fe99e_3095]
  ;')