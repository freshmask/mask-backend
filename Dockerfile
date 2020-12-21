FROM openjdk:8-jdk-alpine
RUN mkdir /user-photo
RUN mkdir /document-customer
RUN mkdir /document-claim
RUN mkdir /document-polis
RUN mkdir /document-wording

RUN mkdir /app
COPY Wording-Asuransi-Personal-Accident-TC.pdf /document-wording/Wording-Asuransi-Personal-Accident-TC.pdf
COPY Wording-Asuransi-Travel.pdf /document-wording/Wording-Asuransi-Travel.pdf

COPY mask-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
EXPOSE 587
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
