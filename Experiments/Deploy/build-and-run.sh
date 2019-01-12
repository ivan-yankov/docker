image=deploy
jre=jre-8u161-linux-x64.tar.gz

cp /home/yankov/install/java/jre/$jre .

docker build --tag $image .

rm ./$jre

docker run $image
