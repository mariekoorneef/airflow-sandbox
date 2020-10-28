FROM apache/airflow:1.10.10
COPY dependencies/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt --user
