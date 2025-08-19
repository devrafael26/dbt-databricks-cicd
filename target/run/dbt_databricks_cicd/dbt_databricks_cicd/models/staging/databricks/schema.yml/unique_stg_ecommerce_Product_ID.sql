
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_360caf1b40abaee6c8c10c79f2c8bdc8_14049]
   as 
    
    
    

select
    Product_ID as unique_field,
    count(*) as n_records

from "my_db"."dbo"."stg_ecommerce"
where Product_ID is not null
group by Product_ID
having count(*) > 1



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_360caf1b40abaee6c8c10c79f2c8bdc8_14049]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_360caf1b40abaee6c8c10c79f2c8bdc8_14049]
  ;')