#!/bin/bash
cd "$(dirname "$0")"
airflow db init

airflow variables import /opt/airflow/variables.json
airflow users create --username airflow --firstname air --lastname flow --password airflow --role Admin --email admin@example.org
