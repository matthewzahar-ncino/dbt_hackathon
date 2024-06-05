{% macro column_mapping(dataset_name, table_alias) %}
    {% set name_query %}
    select input_schema_column_name, target_schema_column_name from {{ ref("fedfis_name_map" )}} where dataset = '{{ dataset_name }}'
    {% endset %}
    {% set columns_names = run_query(name_query) %}
    {% set my_columns = []%}
    {% for input_schema_column_name, target_schema_column_name in columns_names %}
        {% set columns_map =  table_alias + "." + target_schema_column_name + " as " + input_schema_column_name %}
        {{ my_columns.append(columns_map) or ""}}
    {% endfor %}
    {{ my_columns|join(', ') }}
{% endmacro %}