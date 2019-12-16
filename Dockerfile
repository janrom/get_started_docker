FROM python:2.7-slim

WORKDIR /app

# Copy current directory contents into the container at /app
ADD . /app

# Install any dependencies specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
