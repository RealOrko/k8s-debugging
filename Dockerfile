FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt upgrade -y \
  && apt install dnsutils -y \
  && apt install netcat -y \
  && apt install traceroute -y \
  && apt install curl -y \
  && apt install wget -y \
  && apt install unzip -y \
  && apt install lynx -y \
  && sed -i "s/#FORCE_SSL_COOKIES_SECURE\:FALSE/FORCE_SSL_COOKIES_SECURE:TRUE/g" /etc/lynx/lynx.cfg \
  && sed -i "s/#SET_COOKIES:TRUE/SET_COOKIES:TRUE/g" /etc/lynx/lynx.cfg \
  && sed -i "s/#ACCEPT_ALL_COOKIES:FALSE/ACCEPT_ALL_COOKIES:TRUE/g" /etc/lynx/lynx.cfg \
  && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install

ENTRYPOINT ["tail", "-f", "/dev/null"]
