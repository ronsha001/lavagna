#!/bin/sh

DB_DIALECT="MYSQL"
DB_URL="jdbc:mysql://mysql_db:3306/lavagna?useUnicode=true&characterEncoding=utf-8&useSSL=false"
DB_USER="root"
DB_PASS="pass"
SPRING_PROFILE="dev"

java -Xms64m -Xmx128m -Ddatasource.dialect="$DB_DIALECT" \
-Ddatasource.url="$DB_URL" \
-Ddatasource.username="$DB_USER" \
-Ddatasource.password="$DB_PASS" \
-Dspring.profiles.active="$SPRING_PROFILE" \
-jar ./target/lavagna-jetty-console.war --headless