FROM jenkins/jenkins:lts
MAINTAINER mail@alexander-aust.de
USER root

RUN apt-get update && \
    apt-get -y install apt-transport-https \
      ca-certificates \
      curl \
      gnupg2 \
      sudo \
      gcc \
      software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
      $(lsb_release -cs) \
      stable" && \
   apt-get update && \
   apt-get -y install docker-ce && \
   groupmod -g 998 docker && \
   usermod -aG docker jenkins && \
   echo "jenkins ALL=(root:root) NOPASSWD: /usr/sbin/groupmod" >> /etc/sudoers

COPY run.sh /
RUN chmod +x /run.sh


CMD ["/run.sh"]