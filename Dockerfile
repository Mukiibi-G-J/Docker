FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app/
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
