
FROM ubuntu:20.04
RUN apt-get update -y && \
    apt-get install python3-pip -y
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD [ "routes.py" ]
EXPOSE 5000
