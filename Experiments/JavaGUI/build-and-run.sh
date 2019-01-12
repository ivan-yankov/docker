image=java-gui
jdk=jdk-8u161-linux-x64.tar.gz

cp /home/yankov/install/java/jdk/$jdk .

docker build --tag $image .

rm ./$jdk

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       $image