# Use the official Python image as the base image
FROM python:3.9-slim   
            
# Set the working directory in the container
WORKDIR /

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /

# Expose the port that the app will run on

# Define the command to run your application
CMD ["python", "main.py"]
