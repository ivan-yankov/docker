FROM ubuntu

WORKDIR /

ADD ./jdk-8u161-linux-x64.tar.gz /lib

ENV JDK /lib/jdk1.8.0_161
ENV JRE ${JDK}/jre/bin
ENV APP /app

ADD Hello.java ${APP}/Hello.java
ADD execute.sh ${APP}/execute.sh

WORKDIR ${APP}

CMD ./execute.sh
