
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Payment_Method
from `my_db`.`dbo`.`ecommerce`
where Payment_Method is null



  
  
      
    ) dbt_internal_test