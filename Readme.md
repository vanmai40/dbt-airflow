docker build -t dbt-air .
docker run -d --rm -p 8080:8080 -v C:/Users/Vanmai40/Python/dbt-airflow:/airflow-dbt dbt-air