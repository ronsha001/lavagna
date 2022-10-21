FROM maven:3.6.3-jdk-8 as builder

WORKDIR /lav

COPY . .

RUN mvn verify

FROM openjdk:8-jre-alpine

WORKDIR /lav

COPY --from=builder ./target/lavagna-jetty-console.war .
COPY --from=builder ./entrypoint.sh .

ENTRYPOINT [ "sh", "./entrypoint.sh" ]