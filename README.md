# airflow-sandbox
Image `apache/airflow:2.0.1`
and [Airflow Executor](https://airflow.apache.org/docs/stable/executor/index.html) `LocalExecutor`.
- You can upgrade Airflow version in `Dockerfile`, downgrading to Airflow `1.*` requires to change the `scripts/init.sh`.  
- To load Airflow examples set `AIRFLOW__CORE__LOAD_EXAMPLES` to `True`

## Important note
12 Mar 2021: The `apache/airflow:2.0.1` image does not work on Apple Silicon, e.g. https://github.com/docker/for-mac/issues/5232

## Start containers
```sh
./start.sh
```

Create Fernet key
```sh
python -c "from cryptography.fernet import Fernet; FERNET_KEY = Fernet.generate_key().decode(); print(FERNET_KEY)"
```

The webserver is available at http://localhost:8080.

## Stop/ remove containers
```sh
./stop.sh
```

### References
- Apache Airflow documentation: [Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html)
- Use Astronomer's open source CLI, see [CLI Quickstart](https://www.astronomer.io/docs/cloud/stable/develop/cli-quickstart)
- [Airflow Configuration References](https://airflow.apache.org/docs/stable/configurations-ref.html)
