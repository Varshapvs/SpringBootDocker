FROM java:17
VOLUME /tmp
EXPOSE 8080
ADD /build/libs/springbootdocker-1.0.jar springbootdocker-1.0.jar
ENTRYPOINT ["java","-jar","springbootdocker-1.0.jar"]
