FROM gradle:latest AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon 
FROM openjdk:17 
EXPOSE 8080 
RUN mkdir /app 
COPY --from=build /home/gradle/src/build/libs/*.jar /app/demo-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["java", "-jar","/app/demo-0.0.1-SNAPSHOT.jar"]
