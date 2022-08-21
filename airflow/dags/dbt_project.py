from datetime import timedelta

from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import datetime
from airflow.utils.dates import timedelta


dbt_dag =  DAG(
    dag_id='dbt_dag',
    start_date=datetime(2022, 8, 17),
    end_date =datetime(2022, 8, 19),
    description='An Airflow DAG to invoke simple dbt commands',
    schedule_interval=timedelta(days=1)
    )


deps_check = BashOperator(
    dag=dbt_dag,
    task_id='deps_check',
    bash_command="dbt --version && airflow version",
)

dbt_run = BashOperator(
    dag=dbt_dag,
    task_id='dbt_run',
    bash_command="cd ${DBT_HOME} && dbt run",
)

dbt_test = BashOperator(
    dag=dbt_dag,
    task_id='dbt_test',
    bash_command="cd ${DBT_HOME} && dbt test",
)

dbt_docs = BashOperator(
    dag=dbt_dag,
    task_id='dbt_docs',
    bash_command="cd ${DBT_HOME} && dbt docs generate",
)

# Setting Task Flow (Graph View)
deps_check >> dbt_run
dbt_run >> dbt_test
dbt_test >> dbt_docs