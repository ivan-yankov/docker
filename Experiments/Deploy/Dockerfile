FROM ubuntu

WORKDIR /

# Adds and extracts archive
# COPY will copy archive as is, and then destination directory should be created before extracting
ADD ./jre-8u161-linux-x64.tar.gz /lib

ADD Hello.class /app/Hello.class

WORKDIR /app

#CMD ls ${jre_path}
CMD /lib/jre1.8.0_161/bin/java Hello
