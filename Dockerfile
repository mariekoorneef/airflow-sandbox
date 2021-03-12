FROM apache/airflow:2.0.1
COPY dependencies/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt --user
