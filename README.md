# Node with Java 8 JRE Docker Image

This image is built on the latest `node` image and installs Java 8 JRE as well. It is linked with the `node` image and should be updated everytime there is an update in there.

It simply adds Java 8 JRE from *jessie-backports* according to the description at [debian.org](https://wiki.debian.org/Java/). There is no override of any commands, everything should behave like the original `node` image.

If you have any problems with this image please report issues on Github. Pull requests & suggestions are also welcome.

We use the image for some pipelines where we need both Node and Java to do stuff.

### Use the pre built image

The pre built image can be downloaded using Docker.

    docker pull zazukoians/node-java


### Build the Docker image by yourself

You can also adjust and build the image according to your needs. Just clone the repository and then execute the build command.

    docker build -t zazukoians/node-java .


