

  create or replace view `airflow-docker-352518`.`dbt_x_airflow`.`stg_orders`
  OPTIONS()
  as 

with
orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `dbt-tutorial`.`jaffle_shop`.`orders`

)
select * from orders;

