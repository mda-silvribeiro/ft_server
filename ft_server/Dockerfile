# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mda-silv <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/09 12:26:08 by mda-silv          #+#    #+#              #
#    Updated: 2021/04/12 10:28:11 by mda-silv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y  nginx \
    mariadb-server \
    wget \
    php7.3 php-fpm php-mysql php-cli php-mbstring

COPY srcs /root/

RUN bash /root/servconfig.sh

ENTRYPOINT bash /root/start.sh

EXPOSE 80 443

CMD tail -f /dev/null
