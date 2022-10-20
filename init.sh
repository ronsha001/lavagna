#!/bin/bash

docker build -t lavagna:1.0.1
docker run -it -p 8080:8080 lavagna:1.0.1