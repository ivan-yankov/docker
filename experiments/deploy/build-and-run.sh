image=deploy
jre=jre-8u161-linux-x64.tar.gz

cp ~/install/java/jre/$jre .

docker build --tag $image .

rm ./$jre

docker run $image
