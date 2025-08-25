
    -- Create target schema if it does not
  USE [my_db];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_bd58d1c52d7f0b02f50a05d753546a7d_12181]
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
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', ''''),
            
                ('''', '''')
            
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
    [dbo].[testview_bd58d1c52d7f0b02f50a05d753546a7d_12181]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_bd58d1c52d7f0b02f50a05d753546a7d_12181]
  ;')