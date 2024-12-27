FROM python:3.9-slim

WORKDIR /app

#Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy microservice files
COPY . .

#Expose port for Flask
EXPOSE 5000

#Run the microservice
CMD ["python", "AR2EN_FlaskApi.py"]
