FROM eclipse-temurin:21@sha256:abc1419c057c66f366237812f729704d3fdd189a30fb03e8a25039230fba24f0

WORKDIR /app

COPY ./entrypoint/build/libs/*-all.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
