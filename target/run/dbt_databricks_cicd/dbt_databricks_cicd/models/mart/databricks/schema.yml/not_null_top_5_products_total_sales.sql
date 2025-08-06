
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_sales
from `workspace`.`default`.`top_5_products`
where total_sales is null



  
  
      
    ) dbt_internal_test