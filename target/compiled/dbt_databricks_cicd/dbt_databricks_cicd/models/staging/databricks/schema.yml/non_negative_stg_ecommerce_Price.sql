
select *
from "my_db"."dbo"."stg_ecommerce"
where TRY_CAST(REPLACE(Price, ',', '.') AS DOUBLE) < 0
