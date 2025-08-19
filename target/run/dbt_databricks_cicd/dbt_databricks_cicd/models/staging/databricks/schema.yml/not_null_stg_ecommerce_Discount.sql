
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_cc47a10de63f9bb6cd878dca5424cab2_1385]
   as 
    
    
    



select Discount
from "my_db"."dbo"."stg_ecommerce"
where Discount is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_cc47a10de63f9bb6cd878dca5424cab2_1385]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_cc47a10de63f9bb6cd878dca5424cab2_1385]
  ;')