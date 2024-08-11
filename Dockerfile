FROM mcr.microsoft.com/devcontainers/universal:2-linux

COPY . .
RUN apt-get update
RUN apt-get install -y curl
RUN pip install -r requirements.txt
