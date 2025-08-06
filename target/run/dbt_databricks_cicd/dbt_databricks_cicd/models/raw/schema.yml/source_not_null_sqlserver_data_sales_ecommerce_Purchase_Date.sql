
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_a8bd3adc71b9237a0184b91248f727ab_16862]
   as 
    
    
    



select Purchase_Date
from "workspace"."default"."sales_ecommerce"
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
    [dbo].[testview_a8bd3adc71b9237a0184b91248f727ab_16862]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_a8bd3adc71b9237a0184b91248f727ab_16862]
  ;')