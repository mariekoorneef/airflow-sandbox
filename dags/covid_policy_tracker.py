# https://covidtracker.bsg.ox.ac.uk/about-api
# https://github.com/OxCGRT/covid-policy-tracker


from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import days_ago


# declare global variables
DAG_NAME = "covid_policy_tracker"


default_args = {
    "owner": "airflow",
    "start_date": days_ago(1),
    "depends_on_past": False,
    "retries": 0
}

dag = DAG(
    DAG_NAME,
    default_args=default_args,
    description="Get country data for today",
    schedule_interval="0 6 * * *",
)

for i in ["NLD", "DEU"]:
    covid_tracker_api = BashOperator(
        task_id=f"covid_tracker_api_{i}",
        dag=dag,
        bash_command="""
            curl https://covidtrackerapi.bsg.ox.ac.uk/api/v2/stringency/actions/{{params.ALPHA_3}}/{{ds}}
            """,
        params={"ALPHA_3": i}
    )
