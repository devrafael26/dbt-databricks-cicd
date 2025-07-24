
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_aaf25cc0ac284c919b404ee73ab5985e_15829]
   as 
    
    
    



select Price (Rs.)
from "MY_DB"."dbo"."ecommerce"
where Price (Rs.) is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_aaf25cc0ac284c919b404ee73ab5985e_15829]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_aaf25cc0ac284c919b404ee73ab5985e_15829]
  ;')