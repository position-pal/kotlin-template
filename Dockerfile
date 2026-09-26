FROM eclipse-temurin:25@sha256:119a3d18f160a3e7655a66034d0f43beee31cd7b3b9142d57a5de29772011de6

WORKDIR /app

COPY ./entrypoint/build/libs/*-all.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
