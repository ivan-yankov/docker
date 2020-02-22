FROM ubuntu:18.04

WORKDIR /tmp

RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y gnupg
RUN apt-get install -y curl

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install -y sbt

RUN mkdir /home/projects

RUN yes init | sbt new scala/scala-seed.g8
WORKDIR init
RUN sbt compile test run

WORKDIR /home/projects

RUN rm -rf *
