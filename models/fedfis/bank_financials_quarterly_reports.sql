select * FROM {{ source('fedfis', 'bank_financials_quarterly_reports') }}
