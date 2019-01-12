image=compile-and-run
jdk=jdk-8u161-linux-x64.tar.gz

cp /home/yankov/install/java/jdk/$jdk .

docker build --tag $image .

rm ./$jdk

docker run $image
