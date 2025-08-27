
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_9a59e771c154aa693079c3068fb4d43b_15490]
   as 
    
    with actual as (
        select 
            column_name, data_type
        from INFORMATION_SCHEMA.COLUMNS
        where table_name = ''ecommerce''
          and table_schema = ''dbo''
    ),
    expected as (
        select * from (
            values
            
                (''Category'', ''varchar''),
            
                (''Discount'', ''int''),
            
                (''Final_Price'', ''float''),
            
                (''Payment_Method'', ''varchar''),
            
                (''Price'', ''float''),
            
                (''Product_ID'', ''varchar''),
            
                (''Purchase_Date'', ''date''),
            
                (''User_ID'', ''varchar'')
            
        ) as t(column_name, data_type)
    )
    select
        e.column_name,
        e.data_type
    from expected e
    left join actual a
        on e.column_name = a.column_name
       and e.data_type = a.data_type
    where a.column_name is null

  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_9a59e771c154aa693079c3068fb4d43b_15490]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_9a59e771c154aa693079c3068fb4d43b_15490]
  ;')