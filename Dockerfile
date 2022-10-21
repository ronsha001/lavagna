FROM maven:3.6.3-jdk-8 as builder

WORKDIR /lav

COPY ./misc ./misc
COPY ./puppet ./puppet
COPY ./src ./src
COPY ./.editorconfig .
COPY ./.eslintrc .
COPY ./.travis.yml .
COPY ./generate-material.js .
COPY ./package.json .
COPY ./LICENSE-GPLv3.txt .
COPY ./Vagrantfile .
COPY ./pom.xml .

RUN mvn verify

FROM openjdk:8-jre-alpine

WORKDIR /lav

COPY --from=builder ./lav/target/lavagna-jetty-console.war .
COPY ./entrypoint.sh .

ENTRYPOINT [ "sh", "./entrypoint.sh" ]