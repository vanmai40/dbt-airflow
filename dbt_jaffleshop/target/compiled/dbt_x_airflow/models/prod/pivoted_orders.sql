select
    order_id,
    sum( if (payment_method = 'bank_transfer', amount,0)) bank_transfer,
    sum( if (payment_method = 'coupon', amount,0)) coupon,
    sum( if (payment_method = 'credit_card', amount,0)) credit_card,
    sum( if (payment_method = 'gift_card', amount,0)) gift_card,
from `airflow-docker-352518`.`dbt_x_airflow`.`stg_payments`
where status = 'success'
group by 1