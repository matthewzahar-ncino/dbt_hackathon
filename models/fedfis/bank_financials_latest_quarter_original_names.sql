SELECT *
FROM {{ ref('bank_financials_quarterly_reports_original_names') }}
{{ latest_quarter() }}
