
    
    

with all_values as (

    select
        Payment_Method as value_field,
        count(*) as n_records

    from `workspace`.`default`.`stg_ecommerce`
    group by Payment_Method

)

select *
from all_values
where value_field not in (
    'Credit Card','PayPal','Bank Transfer'
)


