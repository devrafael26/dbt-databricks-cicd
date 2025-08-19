
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_23cf1ea01d8d4ab9428eb660245ba129_11440]
   as 
    
    
    



select Purchase_Date
from "my_db"."dbo"."stg_ecommerce"
where Purchase_Date is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_23cf1ea01d8d4ab9428eb660245ba129_11440]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_23cf1ea01d8d4ab9428eb660245ba129_11440]
  ;')