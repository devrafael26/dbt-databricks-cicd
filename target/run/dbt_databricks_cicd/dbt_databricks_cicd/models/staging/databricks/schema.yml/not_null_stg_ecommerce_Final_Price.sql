
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_6d794e88c380010a357479d365d48dbd_18687]
   as 
    
    
    



select Final_Price
from "my_db"."dbo"."stg_ecommerce"
where Final_Price is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_6d794e88c380010a357479d365d48dbd_18687]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_6d794e88c380010a357479d365d48dbd_18687]
  ;')