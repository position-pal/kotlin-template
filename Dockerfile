FROM eclipse-temurin:25@sha256:df4879952671b29af071a1b5081c4d2a50dfd8c31dbde27b7ba669b9ba04bb76

WORKDIR /app

COPY ./entrypoint/build/libs/*-all.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
