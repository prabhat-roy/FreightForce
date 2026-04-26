FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml ./
RUN mvn -B dependency:go-offline
COPY src ./src
RUN mvn -B -DskipTests package

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/excursion-alert-0.1.0.jar /app/app.jar
EXPOSE 50162
ENTRYPOINT ["java","-jar","/app/app.jar"]
