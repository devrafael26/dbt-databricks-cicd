
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`payment_distribution`
where TRY_CAST(REPLACE(total_value, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test