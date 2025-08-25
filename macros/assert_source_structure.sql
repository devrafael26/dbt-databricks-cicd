{% test assert_source_structure(model, expected_columns) %}
    with actual as (
        select 
            column_name, data_type
        from INFORMATION_SCHEMA.COLUMNS
        where table_name = '{{ model.identifier }}'
          and table_schema = '{{ model.schema }}'
    ),
    expected as (
        select * from (
            values
            {% for col in expected_columns %}
                ('{{ col.name }}', '{{ col.data_type }}'){% if not loop.last %},{% endif %}
            {% endfor %}
        ) as t(column_name, data_type)
    )
    select
        e.column_name,
        e.data_type
    from expected e
    left join actual a
        on e.column_name = a.column_name
       and e.data_type = a.data_type
    where a.column_name is null
{% endtest %}
