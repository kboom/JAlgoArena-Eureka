FROM openjdk:8u141-jre

COPY build/libs/*.jar /app/app.jar
COPY entrypoint.sh /app/entrypoint.sh

WORKDIR /app
RUN chmod +x entrypoint.sh

EXPOSE 80
ENTRYPOINT ["./entrypoint.sh"]