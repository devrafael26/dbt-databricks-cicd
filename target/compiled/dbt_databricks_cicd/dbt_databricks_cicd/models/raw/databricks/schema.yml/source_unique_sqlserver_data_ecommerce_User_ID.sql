
    
    

select
    User_ID as unique_field,
    count(*) as n_records

from `my_db`.`dbo`.`ecommerce`
where User_ID is not null
group by User_ID
having count(*) > 1


