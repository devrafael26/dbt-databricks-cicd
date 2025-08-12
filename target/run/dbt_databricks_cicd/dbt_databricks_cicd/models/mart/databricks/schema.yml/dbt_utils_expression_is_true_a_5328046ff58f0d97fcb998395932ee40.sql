
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `workspace`.`default`.`avg_ticket_by_category`

where not(avg_ticket avg_ticket >= 0)


  
  
      
    ) dbt_internal_test