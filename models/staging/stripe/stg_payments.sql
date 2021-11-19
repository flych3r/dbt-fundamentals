select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{ cents_to_dolars('amount') }} as amount,
    created as creation_date
from {{ source('stripe', 'payment') }}
{{ limit_data_in_default('creation_date', n_of_days=1500) }}