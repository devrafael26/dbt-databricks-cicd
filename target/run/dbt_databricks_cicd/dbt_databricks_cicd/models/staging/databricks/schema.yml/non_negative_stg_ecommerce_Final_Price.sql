
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`stg_ecommerce`
where TRY_CAST(REPLACE(Final_Price, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test