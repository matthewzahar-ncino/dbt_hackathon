select
     {{ column_mapping('bank_financials_quarterly_reports') }}
from {{ source("fedfis", "bank_financials_quarterly_reports") }} b