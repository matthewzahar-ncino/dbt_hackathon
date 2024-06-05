{% macro latest_quarter() %}
    {% set max_quarter_query %}
    SELECT DISTINCT report_year, report_quarter
    FROM {{ source('fedfis', 'bank_financials_quarterly_reports') }}
    SORT BY report_year DESC, report_quarter DESC
    LIMIT 1
    {% endset %}
    {% set report_filter = run_query(max_quarter_query) %}
    {% for max_report_year, max_report_quarter  in report_filter %}
    where report_year = '{{ max_report_year }}' AND report_quarter = '{{ max_report_quarter }}'
    {% endfor %}
{% endmacro %}
