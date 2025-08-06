
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select monthly_revenue
from `workspace`.`default`.`monthly_revenue`
where monthly_revenue is null



  
  
      
    ) dbt_internal_test