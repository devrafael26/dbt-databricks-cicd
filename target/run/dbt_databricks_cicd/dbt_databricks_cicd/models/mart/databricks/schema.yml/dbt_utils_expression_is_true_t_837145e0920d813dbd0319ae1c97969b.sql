
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`top_customers`

where not(total_orders total_orders > 0)


  
  
      
    ) dbt_internal_test