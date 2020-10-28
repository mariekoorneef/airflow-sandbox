# airflow-sandbox
apache/airflow:1.10.10 
and [Airflow Executor](https://airflow.apache.org/docs/stable/executor/index.html) `LocalExecutor`.
- You can update Airflow version in `Dockerfile`
- To load Airflow examples set `AIRFLOW__CORE__LOAD_EXAMPLES` to `True`.

## Start containers
```sh
./start.sh
```

## Stop/ remove containers
```sh
./stop.sh
```

#### References
- Docker Hub [apache/airflow](https://hub.docker.com/r/apache/airflow)
- Github repo [puckel/docker-airflow](https://github.com/puckel/docker-airflow)
- Github repo [godatadriven/airflow](https://github.com/godatadriven/airflow)
- [Airflow Configuration References](https://airflow.apache.org/docs/stable/configurations-ref.html)