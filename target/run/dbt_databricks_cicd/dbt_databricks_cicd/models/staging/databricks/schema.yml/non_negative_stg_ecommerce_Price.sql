
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0e0f52892ab87f822c7c27c4f6fac738_16075]
   as 
    
select *
from "my_db"."dbo"."stg_ecommerce"
where TRY_CAST(REPLACE(Price, '','', ''.'') AS DOUBLE) < 0

  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0e0f52892ab87f822c7c27c4f6fac738_16075]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0e0f52892ab87f822c7c27c4f6fac738_16075]
  ;')