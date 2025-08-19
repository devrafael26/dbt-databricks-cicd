
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_5340f7522393cd1159d3a7537ca9875c_13775]
   as 
    
    
    



select Price
from "my_db"."dbo"."stg_ecommerce"
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
    [dbo].[testview_5340f7522393cd1159d3a7537ca9875c_13775]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_5340f7522393cd1159d3a7537ca9875c_13775]
  ;')