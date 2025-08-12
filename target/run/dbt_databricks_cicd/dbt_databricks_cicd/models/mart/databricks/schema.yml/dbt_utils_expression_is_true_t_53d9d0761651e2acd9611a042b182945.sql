
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`top_5_products`

where not(total_sales total_sales >= 0)


  
  
      
    ) dbt_internal_test