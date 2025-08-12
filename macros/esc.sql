{% macro esc(colname) -%}
  {%- if target.name == 'sqlserver' -%}
    [{{ colname }}]
  {%- elif target.name == 'databricks' -%}
    {{ colname }}   -- sem backticks pra evitar erro de parser
  {%- else -%}
    {{ colname }}
  {%- endif -%}
{% endmacro %}

