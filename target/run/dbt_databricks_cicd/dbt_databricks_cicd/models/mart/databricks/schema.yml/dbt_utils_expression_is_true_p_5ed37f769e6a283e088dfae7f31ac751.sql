
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`payment_distribution`

where not(total_value total_value >= 0)


  
  
      
    ) dbt_internal_test