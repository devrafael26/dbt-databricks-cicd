
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`sales_by_category`
where TRY_CAST(REPLACE(total_revenue, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test