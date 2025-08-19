
    
    

with all_values as (

    select
        Payment_Method as value_field,
        count(*) as n_records

    from "my_db"."dbo"."stg_ecommerce"
    group by Payment_Method

)

select *
from all_values
where value_field not in (
    'Credit Card','Net Banking','UPI','Debit Card','Cash on Delivery'
)


