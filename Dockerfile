# Use an official Python runtime as a parent image
FROM python:latest

# Set environment variables
ENV LANGCHAIN_DIRECTORY_PATH /app

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Poetry
RUN pip install poetry

# Install project dependencies
RUN poetry install

# Run the application
CMD ["poetry", "run", "app"]

