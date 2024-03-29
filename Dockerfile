# Use Ubuntu image as base
FROM ubuntu:20.04

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Command to run the application
CMD ["python3", "calculator.py"]
