with employees as (
    select * from {{ ref('employees') }}
),

customers as (
    select * from {{ ref('stg_customers') }}
)

select
    e.employee_id as employee_id,
    e.email as email,
    c.first_name as first_name,
    c.last_name as last_name,
    c.customer_id as customer_id
from employees e
join customers c using (customer_id)