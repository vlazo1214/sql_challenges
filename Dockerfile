# Use a slim Python image
FROM python:3.11-slim

# Install system dependencies for PostgreSQL and OpenSSL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    openssl \
    && rm -rf /var/lib/apt/lists/*

