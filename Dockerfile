# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the Docker container
WORKDIR /openai-discord-chatbot

# Copy the current directory contents into the container
COPY . .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Run chatbot.py when the container launches
CMD ["python", "chatbot.py"]

