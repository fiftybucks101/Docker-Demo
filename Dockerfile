# Use the official Python slim image based on Debian Bookworm for better stability and size
FROM python:3.11-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file first to leverage Docker cache
COPY requirements.txt ./

# Upgrade pip to ensure we have the latest version for dependency management
RUN pip install --upgrade pip

# Install Python dependencies specified in requirements.txt
RUN pip install -r requirements.txt 

# Copy the rest of the application code into the container
COPY . /app/

# Expose port 8080 for the application to listen on
EXPOSE 8080

# Define the command to run the application when the container launches
CMD ["python3", "app.py"]
