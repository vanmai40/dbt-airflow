docker build -t dbt-air .
docker run -d --rm -p 8080:8080 -v C:/Users/Vanmai40/Python/dbt-airflow:/dbt-airflow dbt-air
docker run -ti --rm -p 8080:8080 -v C:/Users/Vanmai40/Python/dbt-airflow:/dbt-airflow dbt-air
