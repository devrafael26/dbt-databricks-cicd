
    -- Create target schema if it does not
  USE [MY_DB];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_10725fd4f752a6e354b6f1e3cdf8fb3a_9714]
   as 
    
    with actual as (
        select
            column_name,
            data_type
        from INFORMATION_SCHEMA.COLUMNS
        where TABLE_NAME = ''ecommerce''
          and TABLE_SCHEMA = ''dbo''
    ),
    expected as (
        select * from (values
            (''User_ID'', ''varchar''),
            (''Product_ID'', ''varchar''),
            (''Category'', ''varchar''),
            (''Price'', ''float''),
            (''Discount'', ''int''),
            (''Final_Price'', ''float''),
            (''Payment_Method'', ''varchar''),
            (''Purchase_Date'', ''date'')
            
        ) as t(column_name, data_type)
    ),
    diff_expected as (
        select * from expected
        EXCEPT
        select * from actual
    ),
    diff_actual as (
        select * from actual
        EXCEPT
        select * from expected
    )
    select * from diff_expected
    UNION ALL
    select * from diff_actual

  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_10725fd4f752a6e354b6f1e3cdf8fb3a_9714]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_10725fd4f752a6e354b6f1e3cdf8fb3a_9714]
  ;')