FROM python:3.9

RUN    pip install dbt-core \
    && pip install dbt-bigquery \
    && pip install apache-airflow



ENV AIRFLOW_HOME=/dbt-airflow/airflow \
    AIRFLOW__CORE__LOAD_EXAMPLES=False \
    DBT_HOME=/dbt-airflow/dbt_jaffleshop 

    

CMD    echo '' \
    && cp -r /dbt-airflow/dbt_jaffleshop/.dbt /root/.dbt \
    && airflow db init \
    && airflow users create -u vanmai40 -p airflow -r Admin -e '' -f '' -l '' \
    && airflow scheduler & airflow webserver
