#!/bin/bash

docker build -t authentic .

# Allow local Xserver connections
xhost +local:*

docker run -it --rm -e DISPLAY=$DISPLAY --net=host --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" authentic

# Disallow local Xserver connections
xhost -local:*