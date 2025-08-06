
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Category
from `workspace`.`default`.`sales_by_category`
where Category is null



  
  
      
    ) dbt_internal_test