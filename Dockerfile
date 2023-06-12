FROM python:3.10.12-alpine3.18

# Make working directories
WORKDIR  /app

# Copy every file in the source folder to the created working directory
COPY  . .

RUN apt-get update

# Install the required packages
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1

ENV HOST 0.0.0.0

EXPOSE 8081

# Run the python application
CMD ["python", "main.py"]