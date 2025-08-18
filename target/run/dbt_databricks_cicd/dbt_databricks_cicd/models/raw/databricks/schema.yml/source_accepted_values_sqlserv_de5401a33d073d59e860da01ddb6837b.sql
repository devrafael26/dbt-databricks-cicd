
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Payment_Method as value_field,
        count(*) as n_records

    from `my_db`.`dbo`.`ecommerce`
    group by Payment_Method

)

select *
from all_values
where value_field not in (
    'Credit Card','Net Banking','UPI','Debit Card','Cash on Delivery'
)



  
  
      
    ) dbt_internal_test