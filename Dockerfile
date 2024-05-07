FROM openjdk:22
LABEL authors="sinbum"

ARG JAR_FILE=build/libs/*.jar
RUN mkdir "/app"

COPY ${JAR_FILE} /app/app.jar


WORKDIR "/app"
ENTRYPOINT ["java", "-jar", "app.jar"]