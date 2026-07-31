# 1. 選擇 Eclipse Temurin Java 17 基礎映像檔
FROM eclipse-temurin:17-jre

# 2. 建立工作目錄
WORKDIR /app

# 3. 複製打包好的 jar 檔
COPY target/dockerPractice-1.0-SNAPSHOT.jar app.jar

# 4. 執行指令
ENTRYPOINT ["java", "-jar", "app.jar"]