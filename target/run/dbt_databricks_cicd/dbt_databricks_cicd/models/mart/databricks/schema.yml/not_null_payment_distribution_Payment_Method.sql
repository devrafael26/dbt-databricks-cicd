
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Payment_Method
from `workspace`.`default`.`payment_distribution`
where Payment_Method is null



  
  
      
    ) dbt_internal_test