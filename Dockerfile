FROM openjdk:8-jre-alpine

WORKDIR /lav

COPY . .

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

ENTRYPOINT [ "sh", "entrypoint.sh" ]

