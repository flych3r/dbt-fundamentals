{%- macro limit_data_in_default(column_name, n_of_days=3) -%}
{% if target.name == 'default' %}
    where {{ column_name }} >= dateadd('days', - {{ n_of_days }}, current_timestamp)
{% endif %}
{%- endmacro -%}
