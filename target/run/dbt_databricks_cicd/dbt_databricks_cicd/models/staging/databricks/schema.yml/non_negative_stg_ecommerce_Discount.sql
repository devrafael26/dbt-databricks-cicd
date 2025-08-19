
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_51dbea34b4242ad29f4241884f1076fc_18168]
   as 
    
select *
from "my_db"."dbo"."stg_ecommerce"
where TRY_CAST(REPLACE(Discount, '','', ''.'') AS DOUBLE) < 0

  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_51dbea34b4242ad29f4241884f1076fc_18168]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_51dbea34b4242ad29f4241884f1076fc_18168]
  ;')