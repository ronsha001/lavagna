FROM maven:3.6.3-jdk-8

WORKDIR /lav

# COPY ./src ./src
# COPY ./pom.xml .
COPY . .

RUN mvn verify

RUN apt-get update
RUN apt-get install coreutils

ENTRYPOINT [ "sh", "entrypoint.sh" ]

