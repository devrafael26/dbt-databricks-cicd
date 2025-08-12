
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`monthly_revenue`

where not(monthly_revenue monthly_revenue >= 0)


  
  
      
    ) dbt_internal_test