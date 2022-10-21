FROM openjdk:8-jre-alpine

WORKDIR /lav

COPY ./target/lavagna-jetty-console.war .
COPY ./entrypoint.sh .

ENTRYPOINT [ "sh", "./entrypoint.sh" ]