# Arabic to English Microservice Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install required libraries
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy microservice app
COPY ..

CMD ["python", "AR2EN_FlaskApi.py"]
