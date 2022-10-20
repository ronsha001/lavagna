FROM maven:3.6.3-jdk-8

WORKDIR /lav

COPY . .

ENTRYPOINT [ "sh", "entrypoint.sh" ]

