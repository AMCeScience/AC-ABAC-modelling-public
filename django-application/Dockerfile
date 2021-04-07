FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /code/

COPY /requirements.txt /code/
RUN pip install -r requirements.txt

WORKDIR /code/project_example/
COPY /project_example/ /code/project_example/

CMD ["python3", "manage.py" ,"runserver", "0.0.0.0:8000"]