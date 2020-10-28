# airflow-sandbox
apache/airflow:1.10.10 
and [Airflow Executor](https://airflow.apache.org/docs/stable/executor/index.html) `LocalExecutor`.
- You can update Airflow version in `Dockerfile`
- To load Airflow examples set `AIRFLOW__CORE__LOAD_EXAMPLES` to `True`

## Start containers
```sh
./start.sh
```

Create Fernet key
```sh
python -c "from cryptography.fernet import Fernet; FERNET_KEY = Fernet.generate_key().decode(); print(FERNET_KEY)"
```

## Stop/ remove containers
```sh
./stop.sh
```

#### Alternatives/ references
- [puckel/docker-airflow](https://github.com/puckel/docker-airflow)
- [godatadriven-dockerhub/airflow](https://github.com/godatadriven-dockerhub/airflow)
- [Airflow Configuration References](https://airflow.apache.org/docs/stable/configurations-ref.html)
- ... _(there are definitely more alternatives/ references)_
