
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7999099e1334cef9eb7ae8ca8d3f9f76_2110]
   as 
    
    
    

with all_values as (

    select
        Payment_Method as value_field,
        count(*) as n_records

    from "my_db"."dbo"."ecommerce"
    group by Payment_Method

)

select *
from all_values
where value_field not in (
    ''Credit Card'',''Net Banking'',''UPI'',''Debit Card'',''Cash on Delivery''
)



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_7999099e1334cef9eb7ae8ca8d3f9f76_2110]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7999099e1334cef9eb7ae8ca8d3f9f76_2110]
  ;')