
select *
from `workspace`.`default`.`stg_ecommerce`
where TRY_CAST(REPLACE(Final_Price, ',', '.') AS DOUBLE) < 0
