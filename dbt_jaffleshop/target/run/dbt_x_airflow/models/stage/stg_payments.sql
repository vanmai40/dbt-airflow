

  create or replace view `airflow-docker-352518`.`dbt_x_airflow`.`stg_payments`
  OPTIONS()
  as select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    ROUND(amount/100, 1) as amount,
    created as created_at
from `dbt-tutorial`.`stripe`.`payment`;

