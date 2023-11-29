FROM quay.io/keycloak/keycloak:22.0.4
MAINTAINER Alexander Aust mail@alexander-aust.de

ENV DB_HOST="localhost"
ENV DB_PASSWORD="password"
ENV HOSTNAME="login.alexander-aust.de"

USER root
COPY --chown=1000 entrypoint.sh /usr/local/bin/

ADD --chown=1000 https://github.com/sventorben/keycloak-restrict-client-auth/releases/download/v23.0.0/keycloak-restrict-client-auth.jar /opt/keycloak/providers/keycloak-restrict-client-auth.jar
RUN /opt/keycloak/bin/kc.sh build --db='postgres'

USER 1000
ENTRYPOINT ["entrypoint.sh", "$DB_HOST", "$DB_PASSWORD", "$HOSTNAME"]
