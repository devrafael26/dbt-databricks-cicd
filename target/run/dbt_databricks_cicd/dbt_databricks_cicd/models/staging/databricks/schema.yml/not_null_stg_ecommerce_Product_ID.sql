
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_8d41d628abbf902566fa856eff130be0_11023]
   as 
    
    
    



select Product_ID
from "my_db"."dbo"."stg_ecommerce"
where Product_ID is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_8d41d628abbf902566fa856eff130be0_11023]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_8d41d628abbf902566fa856eff130be0_11023]
  ;')