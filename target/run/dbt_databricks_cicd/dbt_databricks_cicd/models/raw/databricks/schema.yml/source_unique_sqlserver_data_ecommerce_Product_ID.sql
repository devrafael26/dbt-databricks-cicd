
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    Product_ID as unique_field,
    count(*) as n_records

from `my_db`.`dbo`.`ecommerce`
where Product_ID is not null
group by Product_ID
having count(*) > 1



  
  
      
    ) dbt_internal_test