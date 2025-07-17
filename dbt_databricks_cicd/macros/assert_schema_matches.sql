{% test assert_schema_matches(model, expected_columns) %}
    with actual as (
        select
            column_name,
            data_type
        from INFORMATION_SCHEMA.COLUMNS
        where TABLE_NAME = '{{ model.identifier }}'
          and TABLE_SCHEMA = '{{ model.schema }}'
    ),
    expected as (
        select * from (values
            {% for col, dtype in expected_columns.items() -%}
                ('{{ col }}', '{{ dtype }}'){% if not loop.last %},{% endif %}
            {% endfor %}
        ) as t(column_name, data_type)
    ),
    diff_expected as (
        select * from expected
        EXCEPT
        select * from actual
    ),
    diff_actual as (
        select * from actual
        EXCEPT
        select * from expected
    )
    select * from diff_expected
    UNION ALL
    select * from diff_actual
{% endtest %}
