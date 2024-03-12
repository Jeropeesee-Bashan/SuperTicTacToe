FROM ubuntu:latest

RUN apt update -y && apt install -y build-essential cmake qt6-base-dev
COPY /echoserver /app
WORKDIR /app
RUN cmake . && make
EXPOSE 33333
CMD ["./echoserver"]