

  create or replace view `airflow-docker-352518`.`dbt_x_airflow`.`stg_customers`
  OPTIONS()
  as 

with 
customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from `dbt-tutorial`.`jaffle_shop`.`customers`

)

select * from customers;

