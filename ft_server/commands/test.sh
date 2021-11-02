!#/bin/bash

docker ps -aq && docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -q) && docker build -t ft_server . && docker run --name ft_servercont -it -p 80:80 -p 443:443 ft_server
