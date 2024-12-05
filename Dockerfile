FROM openjdk:21-slim@sha256:7072053847a8a05d7f3a14ebc778a90b38c50ce7e8f199382128a53385160688

RUN apt-get update && apt-get install -y \
    findutils \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /service
COPY ./ /service

# Set permissions to gradlew
RUN chmod +x gradlew
RUN ./gradlew build --no-daemon

CMD ["./gradlew", "run"]
