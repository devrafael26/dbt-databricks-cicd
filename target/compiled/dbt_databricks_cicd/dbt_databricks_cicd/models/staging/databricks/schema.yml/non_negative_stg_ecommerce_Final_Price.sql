
select *
from "my_db"."dbo"."stg_ecommerce"
where TRY_CAST(REPLACE(Final_Price, ',', '.') AS DOUBLE) < 0
