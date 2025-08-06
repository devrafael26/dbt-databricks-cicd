
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_ticket
from `workspace`.`default`.`avg_ticket_by_category`
where avg_ticket is null



  
  
      
    ) dbt_internal_test