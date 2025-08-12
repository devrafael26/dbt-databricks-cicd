
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Category
from `workspace`.`default`.`stg_ecommerce`
where Category is null



  
  
      
    ) dbt_internal_test