# Use the official OpenJDK image for Java 17
FROM openjdk:17-oracle

USER 0
RUN mkdir /home/app
WORKDIR /home/app

COPY target/service-*.jar /home/app/app.jar

RUN chgrp -R 0 /home/app && \
    chmod -R g=u /home/app

USER 1001


ENTRYPOINT ["java", "-jar", "/home/app/app.jar"]
