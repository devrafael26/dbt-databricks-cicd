
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select *
from `workspace`.`default`.`avg_ticket_by_category`
where TRY_CAST(REPLACE(avg_ticket, ',', '.') AS DOUBLE) < 0

  
  
      
    ) dbt_internal_test