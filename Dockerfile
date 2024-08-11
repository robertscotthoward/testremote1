FROM mcr.microsoft.com/devcontainers/universal:2-linux

COPY . .

RUN mkdir -m 1777 -p /tmp
RUN chmod 1777 /tmp
RUN apt-get update
RUN apt-get install -y curl
RUN pip install -r requirements.txt

EXPOSE 8010

CMD ["python", "app.py"]