FROM python:3.10-slim-buster

# Expose the port for Streamlit
EXPOSE 8501

# Update and install necessary packages
RUN pip install --upgrade pip

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3-nltk \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m nltk.downloader stopwords 

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt


# Specify the command to run on container start
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
