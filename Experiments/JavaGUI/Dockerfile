FROM ubuntu:14.04

WORKDIR /

ADD ./jdk-8u161-linux-x64.tar.gz /lib

ENV JDK /lib/jdk1.8.0_161
ENV JRE ${JDK}/jre/bin
ENV APP /home/developer/app

ADD Hello.java ${APP}/Hello.java
ADD execute.sh ${APP}/execute.sh

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

RUN apt-get update
RUN apt-get install -y libxrender1 libxtst6 libxi6

USER developer
ENV HOME /home/developer

WORKDIR ${APP}

CMD ./execute.sh
