#!/bin/bash
#docker run -u=$(id -u $USER):$(id -g $USER)  --env="DISPLAY" -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $(pwd)/app:/app -v $HOME/.Xauthority:/root/.Xauthority --rm tkinter_in_docker
docker run -it --rm -e DISPLAY=$DISPLAY -v $(pwd)/app:/app -v $HOME/.Xauthority:/root/.Xauthority  --network=host tkinter_in_docker
