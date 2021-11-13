-- The most recent order by a customer can't be done before the first order
-- Therefore return records where this isn't true to make the test fail.
select
    customer_id,
    most_recent_order_date < first_order_date as before
from {{ ref('dim_customers') }}
having before
