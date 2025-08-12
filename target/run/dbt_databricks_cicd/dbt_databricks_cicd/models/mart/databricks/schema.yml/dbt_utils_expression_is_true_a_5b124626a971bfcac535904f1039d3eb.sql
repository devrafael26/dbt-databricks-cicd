
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`avg_discount_by_category`

where not(avg_discount_percent avg_discount_percent >= 0)


  
  
      
    ) dbt_internal_test