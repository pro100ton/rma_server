# Pull base image
FROM python:3.10.2-slim-bullseye

# Set environments variables

# Disables an automatic check for pip updates each time
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
# Means Python will not try to write .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# Ensures our console output is not buffered by Docker
ENV PYTHONUNBUFFERED 1

# Set work directory
# Sets the location of the subsequent commands
WORKDIR /code

# Install dependecies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .