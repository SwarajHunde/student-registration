# ====== STAGE 1: Build WAR with Maven ======
FROM maven:3.9.5-eclipse-temurin-17 AS builder
WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code and build
COPY src ./src
RUN mvn clean package -DskipTests


# ====== STAGE 2: Run WAR on Tomcat ======
FROM tomcat:9.0-jdk17

# Remove default ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR from builder stage
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
