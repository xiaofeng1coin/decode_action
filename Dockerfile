# Dockerfile for ARM32 Python 3.11 environment  
FROM --platform=linux/arm/v7 python:3.11-slim  

# Install dependencies  
RUN apt-get update && apt-get install -y \  
    libxml2-dev \  
    libxslt1-dev \  
    libffi-dev \  
    zlib1g-dev \  
    && rm -rf /var/lib/apt/lists/*  

# Set working directory  
WORKDIR /app
