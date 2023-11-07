# Use the official Python image as the base image
FROM python:3.8-slim

# Create a working directory in the container
WORKDIR /app

# Copy the code and requirements file into the container
COPY main.py /app/
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the FastAPI service will run on
EXPOSE 8000

# Start the FastAPI service
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
