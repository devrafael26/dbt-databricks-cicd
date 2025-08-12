{% test non_negative(model, column_name) %}
select *
from {{ model }}
where TRY_CAST(REPLACE({{ column_name }}, ',', '.') AS DOUBLE) < 0
{% endtest %}



