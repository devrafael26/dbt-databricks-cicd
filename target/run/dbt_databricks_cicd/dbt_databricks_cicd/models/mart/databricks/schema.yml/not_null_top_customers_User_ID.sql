
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select User_ID
from `workspace`.`default`.`top_customers`
where User_ID is null



  
  
      
    ) dbt_internal_test