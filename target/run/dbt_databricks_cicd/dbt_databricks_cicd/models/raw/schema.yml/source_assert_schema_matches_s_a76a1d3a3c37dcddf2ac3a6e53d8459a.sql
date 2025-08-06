
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    with actual as (
        select
            column_name,
            data_type
        from INFORMATION_SCHEMA.COLUMNS
        where TABLE_NAME = 'ecommerce'
          and TABLE_SCHEMA = 'dbo'
    ),
    expected as (
        select * from (values
            ('User_ID', 'varchar'),
            ('Product_ID', 'varchar'),
            ('Category', 'varchar'),
            ('Price', 'float'),
            ('Discount', 'int'),
            ('Final_Price', 'float'),
            ('Payment_Method', 'varchar'),
            ('Purchase_Date', 'date')
            
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

  
  
      
    ) dbt_internal_test