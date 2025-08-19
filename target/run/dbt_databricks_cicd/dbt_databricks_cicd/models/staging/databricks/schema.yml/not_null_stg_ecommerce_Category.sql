
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_f2efa54166599ee6729840ee1e8dd7cc_10948]
   as 
    
    
    



select Category
from "my_db"."dbo"."stg_ecommerce"
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
    [dbo].[testview_f2efa54166599ee6729840ee1e8dd7cc_10948]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_f2efa54166599ee6729840ee1e8dd7cc_10948]
  ;')