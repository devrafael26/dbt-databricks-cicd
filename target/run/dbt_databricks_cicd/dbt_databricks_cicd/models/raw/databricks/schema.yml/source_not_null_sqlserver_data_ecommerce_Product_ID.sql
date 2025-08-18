
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Product_ID
from `my_db`.`dbo`.`ecommerce`
where Product_ID is null



  
  
      
    ) dbt_internal_test