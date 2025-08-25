
    with actual as (
        select 
            column_name, data_type
        from INFORMATION_SCHEMA.COLUMNS
        where table_name = 'ecommerce'
          and table_schema = 'sqlserver_data'
    ),
    expected as (
        select * from (
            values
            
                ('User_ID', 'varchar'),
            
                ('Product_ID', 'varchar'),
            
                ('Category', 'varchar'),
            
                ('Price', 'float'),
            
                ('Discount', 'int'),
            
                ('Final_Price', 'float'),
            
                ('Payment_Method', 'varchar'),
            
                ('Purchase_Date', 'date')
            
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
