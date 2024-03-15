FROM python:3.10-slim-buster

# Expose the port for Streamlit
EXPOSE 8501

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Update and install necessary packages
RUN pip install --upgrade pip

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3-nltk \
    && rm -rf /var/lib/apt/lists/*

# Set up NLTK data directory and download necessary resources
COPY nltk.txt /usr/share/nltk_data/
RUN python3 -m nltk.downloader -d /usr/share/nltk_data -r /usr/share/nltk_data/nltk.txt

# Install Python dependencies
RUN pip install -r requirements.txt


# Specify the command to run on container start
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
