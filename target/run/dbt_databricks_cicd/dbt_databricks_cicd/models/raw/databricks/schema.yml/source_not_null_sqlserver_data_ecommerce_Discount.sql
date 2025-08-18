
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Discount
from `my_db`.`dbo`.`ecommerce`
where Discount is null



  
  
      
    ) dbt_internal_test