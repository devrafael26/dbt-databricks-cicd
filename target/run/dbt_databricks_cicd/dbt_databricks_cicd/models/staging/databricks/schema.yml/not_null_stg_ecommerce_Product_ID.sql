
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Product_ID
from `workspace`.`default`.`stg_ecommerce`
where Product_ID is null



  
  
      
    ) dbt_internal_test