
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_ffa6f908df0e79aee2f411c3dae870ee_17378]
   as 
    
  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_ffa6f908df0e79aee2f411c3dae870ee_17378]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_ffa6f908df0e79aee2f411c3dae870ee_17378]
  ;')