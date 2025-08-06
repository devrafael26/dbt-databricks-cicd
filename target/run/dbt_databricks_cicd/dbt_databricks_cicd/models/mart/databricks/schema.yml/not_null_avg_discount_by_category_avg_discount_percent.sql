
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_discount_percent
from `workspace`.`default`.`avg_discount_by_category`
where avg_discount_percent is null



  
  
      
    ) dbt_internal_test