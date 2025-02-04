# Use an official Python runtime as a base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /flask

# Copy the project files into the container
COPY . /flask/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask's default port
EXPOSE 5000

# Run the Flask app (adjusted to your app's location)
CMD ["python", "/flask/app.py"]
