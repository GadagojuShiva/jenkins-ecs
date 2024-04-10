# Use the official Python 3.8 image as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install Flask and other dependencies
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 5000 to allow communication to/from the Flask application
EXPOSE 5000

# Define the command to run the Flask application when the container starts
CMD ["python", "app.py"]
