#!/bin/bash

echo "Build the environment :)"

docker build -t mavi/middleman .

echo "Let´s start!"

echo "docker run -it --rm -p 4567:4567 -v `pwd`:/app linkita/middleman"

docker run -it --rm -p 4567:4567 -v `pwd`:/app mavi/middleman