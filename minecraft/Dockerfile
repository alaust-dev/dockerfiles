FROM amazoncorretto:21-alpine-jdk

WORKDIR /app

ADD https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/496/downloads/paper-1.20.4-496.jar /preset/server.jar
COPY start.sh /exec/

ENTRYPOINT ["/exec/start.sh"]
