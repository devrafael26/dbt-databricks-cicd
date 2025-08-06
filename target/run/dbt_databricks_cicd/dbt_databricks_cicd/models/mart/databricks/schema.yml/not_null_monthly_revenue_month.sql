
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select month
from `workspace`.`default`.`monthly_revenue`
where month is null



  
  
      
    ) dbt_internal_test