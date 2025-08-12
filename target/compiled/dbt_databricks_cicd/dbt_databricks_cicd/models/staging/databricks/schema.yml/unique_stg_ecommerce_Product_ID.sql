
    
    

select
    Product_ID as unique_field,
    count(*) as n_records

from `workspace`.`default`.`stg_ecommerce`
where Product_ID is not null
group by Product_ID
having count(*) > 1


