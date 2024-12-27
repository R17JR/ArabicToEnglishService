# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the application port (if applicable)
EXPOSE 5000

# Set the entry point to run the Kafka consumer worker
CMD ["python", "app.py"]
