# Use the official Python 3.9 image as base
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy requirements.txt
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 8000 to the outside world
EXPOSE 8000

# Define the command to run your Python application
CMD ["python", "app.py"]
