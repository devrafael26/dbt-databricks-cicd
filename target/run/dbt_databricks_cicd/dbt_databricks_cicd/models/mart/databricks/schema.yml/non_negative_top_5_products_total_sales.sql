
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`top_5_products`
where TRY_CAST(REPLACE(total_sales, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test