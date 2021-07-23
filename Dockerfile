FROM openjdk:11.0.7-slim 
LABEL maintainer="tomyravelli@gmail.com" 
ARG JAR_FILE 
ADD target/${JAR_FILE} dan-eureka-server.jar 
RUN echo ${JAR_FILE} 
ENTRYPOINT ["java","-jar","/dan-eureka-server.jar"]