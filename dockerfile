FROM ubuntu:20.04

RUN apt update 
RUN apt install git -y
RUN apt install python3 -y
RUN apt install python3-pip -y

COPY  . /app 

WORKDIR /app

EXPOSE 8080

ENV PORT=8080

CMD ["python3", "server.py"]
