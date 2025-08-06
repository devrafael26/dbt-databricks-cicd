
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_value
from `workspace`.`default`.`payment_distribution`
where total_value is null



  
  
      
    ) dbt_internal_test