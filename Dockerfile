# Use official Python image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Run main script
CMD ["python", "main.py"]