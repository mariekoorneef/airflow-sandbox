#!/bin/bash
cd "$(dirname "$0")"
airflow initdb

airflow variables -i /opt/airflow/variables.json
airflow create_user --role Admin --username airflow --password airflow -e airflow@airflow.com -f airflow -l airflow
