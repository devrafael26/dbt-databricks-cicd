
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`monthly_revenue`
where TRY_CAST(REPLACE(monthly_revenue, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test