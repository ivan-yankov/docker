FROM ubuntu:14.04

WORKDIR /

ADD ./jdk-8u161-linux-x64.tar.gz /opt
ADD ./apache-maven-3.6.0-bin.tar.gz /opt

ENV JAVA_HOME /opt/jdk1.8.0_161
ENV JRE_HOME ${JAVA_HOME}/jre/bin
ENV MVN /opt/apache-maven-3.6.0/bin
ENV DEV /home/developer
ENV PROJECT ${DEV}/project

CMD ${MVN}/mvn -version
