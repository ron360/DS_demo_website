# 使用 OpenJDK 17 作為基礎映像
FROM openjdk:17-jdk-slim

# 設置工作目錄
WORKDIR /app

# 將 JAR 文件複製到容器中
COPY demo/target/demo-0.0.1-SNAPSHOT.jar app.jar

# 指定啟動命令
ENTRYPOINT ["java", "-jar", "app.jar"]

# 設定應用暴露的端口
EXPOSE 8080