FROM openjdk:17.0.2-jdk-slim-buster AS API
FROM openjdk:17.0.2-jdk-slim-buster
WORKDIR /app
COPY ./api/. /app/
RUN ./gradlew clean assemble
CMD java -jar lol-api-0.0.1-SNAPSHOT.jar

