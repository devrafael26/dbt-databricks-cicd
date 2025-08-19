
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_8b633e73afc3cff5f8746eb4346a739f_12804]
   as 
    
    
    



select Payment_Method
from "my_db"."dbo"."stg_ecommerce"
where Payment_Method is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_8b633e73afc3cff5f8746eb4346a739f_12804]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_8b633e73afc3cff5f8746eb4346a739f_12804]
  ;')