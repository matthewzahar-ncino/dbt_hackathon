SELECT *
FROM {{ ref('bank_financials_quarterly_reports') }}
{{ latest_quarter() }}
