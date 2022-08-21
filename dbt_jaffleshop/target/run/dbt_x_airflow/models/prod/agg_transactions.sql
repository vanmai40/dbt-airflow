

  create or replace table `airflow-docker-352518`.`dbt_x_airflow`.`agg_transactions`
  
  
  OPTIONS()
  as (
    select 
  created,
  paymentmethod,
  count(paymentmethod) as transactions
from `dbt-tutorial`.`stripe`.`payment`
group by 1,2
  );
  