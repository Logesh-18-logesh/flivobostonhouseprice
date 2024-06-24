FROM python:latest

COPY . /app
WORKDIR /app

RUN pip install -r requirement.txt

COPY app.py ./app.py
EXPOSE 8000
ENTRYPOINT ["python", "app.py", "8000"]