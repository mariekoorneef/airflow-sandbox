# airflow-sandbox
Image `apache/airflow:2.1.0`
and [Airflow Executor](https://airflow.apache.org/docs/stable/executor/index.html) `LocalExecutor`.
- You can update Airflow version in `Dockerfile`
- To load Airflow examples set `AIRFLOW__CORE__LOAD_EXAMPLES` to `True`

## Important note
12 Mar 2021: The `apache/airflow:2.1.0` image does not work on Apple Silicon, e.g. https://github.com/docker/for-mac/issues/5232

## Start containers
```sh
./start.sh
```

Create Fernet key
```sh
python -c "from cryptography.fernet import Fernet; FERNET_KEY = Fernet.generate_key().decode(); print(FERNET_KEY)"
```

The webserver available at http://localhost:8080.

## Stop/ remove containers
```sh
./stop.sh
```

#### Alternatives/ references
- [Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html)
- [puckel/docker-airflow](https://github.com/puckel/docker-airflow)
- [godatadriven-dockerhub/airflow](https://github.com/godatadriven-dockerhub/airflow)
- [Airflow Configuration References](https://airflow.apache.org/docs/stable/configurations-ref.html)
- ... _(there are definitely more alternatives/ references)_
