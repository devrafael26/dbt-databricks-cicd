
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Price
from `workspace`.`default`.`stg_ecommerce`
where Price is null



  
  
      
    ) dbt_internal_test