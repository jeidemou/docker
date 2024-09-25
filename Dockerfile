FROM python:3.9.20-slim-bullseye

COPY . /app

WORKDIR /app



CMD ["python", "prueba.py"]
