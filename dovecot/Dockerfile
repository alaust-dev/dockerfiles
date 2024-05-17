FROM dovecot/dovecot:latest
MAINTAINER Alexander Aust mail@alexander-aust.de

RUN apt update && apt install -y curl

ADD https://github.com/dreamstudios-net/pam-keycloak/releases/download/v1.0.0/pam_keycloak.so /lib/x86_64-linux-gnu/security/pam_keycloak.so

RUN chmod 744 /lib/x86_64-linux-gnu/security/pam_keycloak.so
