FROM eclipse-temurin:25@sha256:ef20e1022f5b7e30fca03f04b784dd057fe8bf7ea5b484877a8139b0b8449aa8

WORKDIR /app

COPY ./entrypoint/build/libs/*-all.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
