image=java-dev
jdk=jdk-8u161-linux-x64.tar.gz
maven=apache-maven-3.6.0-bin.tar.gz

cp ~/install/java/jdk/oracle/$jdk .
cp ~/install/java/maven/$maven .

docker build --tag $image .

rm ./$jdk
rm ./$maven

docker run $image

docker save -o $image.tar $image