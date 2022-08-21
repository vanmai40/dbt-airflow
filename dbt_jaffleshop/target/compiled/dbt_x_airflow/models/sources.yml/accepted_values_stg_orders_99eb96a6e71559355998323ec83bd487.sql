
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `airflow-docker-352518`.`dbt_x_airflow`.`stg_orders`
    group by status

)

select *
from all_values
where value_field not in (
    'completed','shipped','returned','return_pending','placed'
)


