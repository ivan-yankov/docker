Run with volume:

docker run -it --rm -v <host-folder>:/home/projects --name scala ivanyankovd/scala-openjdk-11:latest

Run without volume:

docker run -it --rm --name scala ivanyankovd/scala-openjdk-11:latest
