FROM python:3.10-slim

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
    && rm -rf /var/lib/apt/lists/*

RUN pip install nltk

RUN python -m nltk.downloader download stopwords

# Install Python dependencies
RUN pip install -r requirements.txt


# Specify the command to run on container start
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
