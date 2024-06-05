select
     {{ column_mapping('bank_financials_quarterly_reports', 'b') }}
     {{ internal_columns() }}
from {{ source("fedfis", "bank_financials_quarterly_reports") }} b