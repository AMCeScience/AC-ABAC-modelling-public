FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /code/

COPY /requirements.txt /code/
RUN pip install -r requirements.txt

WORKDIR /code/PIP/
COPY / /code/PIP/

CMD ["python3", "manage.py" ,"runserver", "0.0.0.0:8000"]