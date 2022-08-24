# <p align=center>DBT PROJECT WITH AIRFLOW</p>

## INTRO
In this project, from [dbt Fundamental course](https://courses.getdbt.com/courses/fundamentals), the dbt project of jaffleshop was used with and upgrade of intergrating Airflow to automating daily run of dbt project.
<p align="center">
  <img src="pics/tools.png" width="700">
</p>

## SETUP 
### Prerequisite
- Docker Desktop
- BigQuery account
- dbt Core (with Big Query plugin)
- Dockerfile is based off `python:3.9` image, with dbt and aitflow installed on top.

## AIRFLOW
### Airflow dag was simply design to mainly run dbt models, test models, and generate documentations. 
 - Dag filepath: `./airflow/dags/dbt_project.py`
 <p align="center">
  <img src="pics/gbq_graph.png" width="1000">
</p>

### Running
```
> docker build -t dbt-air . (run one time to build the image)
> docker run -d --rm -p 8080:8080 -v {host-volume-path}:/dbt-airflow dbt-air (for detach container)
> docker run -ti --rm -p 8080:8080 -v {host-volume-path}:/dbt-airflow dbt-air (for bebugging)
```
- Server at: <http://localhost:8080> (login & password: `vanmai40`, `airflow`)

<p align="center">
<img src="pics/all_dags.png" width="1000">
</p>

<p align="center">
  <img src="pics/airflow1.png" width="500" />
  <img src="pics/airflow2.png" width="500" /> 
</p>

<p align="center">
  <img src="pics/airflow3.png" width="500" />
  <img src="pics/airflow4.png" width="500" /> 
</p>

- Tables are created in GBQ project
<p align="center">
<img src="pics/gbq_tables.png" width="350">
</p>
<p align="center">
<img src="pics/final_table.png" width="1000">
</p>
