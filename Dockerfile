FROM alpine:latest

RUN apk add --upgrade qt6-qtbase-dev g++ make cmake
COPY /echoserver /app
WORKDIR /app
RUN cmake . && make
EXPOSE 33333
CMD ["./echoserver"]
