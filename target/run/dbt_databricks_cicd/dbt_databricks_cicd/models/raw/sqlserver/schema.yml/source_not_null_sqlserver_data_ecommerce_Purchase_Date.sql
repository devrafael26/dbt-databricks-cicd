
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Purchase_Date
from `my_db`.`dbo`.`ecommerce`
where Purchase_Date is null



  
  
      
    ) dbt_internal_test