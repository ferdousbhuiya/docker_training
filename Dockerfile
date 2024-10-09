# Use a lightweight Python image
FROM python:3.8-alpine

# Set environment variables to ensure output is sent straight to terminal (without buffering)
ENV PYTHONUNBUFFERED=1

# Copy the current directory contents into the container at /app
COPY . /app

# Set the working directory in the container to /app
WORKDIR /app

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to the outside world (the default Flask port)
EXPOSE 5000

# Run the app when the container launches
CMD ["python", "app.py"]
