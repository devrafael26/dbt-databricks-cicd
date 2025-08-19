
select *
from "my_db"."dbo"."stg_ecommerce"
where TRY_CAST(REPLACE(Discount, ',', '.') AS DOUBLE) < 0
