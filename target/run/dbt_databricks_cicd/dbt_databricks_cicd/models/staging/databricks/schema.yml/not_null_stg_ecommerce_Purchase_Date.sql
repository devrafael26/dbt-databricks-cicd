
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Purchase_Date
from `workspace`.`default`.`stg_ecommerce`
where Purchase_Date is null



  
  
      
    ) dbt_internal_test