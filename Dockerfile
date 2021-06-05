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
CMD ["bash", "p.sh"]
