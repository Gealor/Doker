FROM ubuntu:latest

RUN apt-get update && apt-get install -y g++

COPY . /HelloWorldFromDoker
WORKDIR /HelloWorldFromDoker/

RUN g++ -o HelloWorldFromDoker HelloWorld.cpp
CMD ["./HelloWorldFromDoker"]