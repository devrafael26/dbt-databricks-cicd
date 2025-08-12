
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select User_ID
from `workspace`.`default`.`stg_ecommerce`
where User_ID is null



  
  
      
    ) dbt_internal_test