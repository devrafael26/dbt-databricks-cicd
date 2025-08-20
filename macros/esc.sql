{% macro esc(colname) -%}
  {%- if target.name == 'sqlserver' -%}
    [{{ colname }}]
  {%- elif target.name == 'databricks' -%}
    {{ colname }}   
  {%- else -%}
    {{ colname }}
  {%- endif -%}
{% endmacro %}

