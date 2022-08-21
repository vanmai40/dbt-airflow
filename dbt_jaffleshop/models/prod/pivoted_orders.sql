select
    order_id,
    {%- set methods = ['bank_transfer', 'coupon', 'credit_card', 'gift_card'] -%}
    {%- for method in methods %}
    sum( if (payment_method = '{{ method }}', amount,0)) {{ method }},
    {%- endfor %}
from {{ ref('stg_payments') }}
where status = 'success'
group by 1