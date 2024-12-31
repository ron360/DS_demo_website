# 使用 OpenJDK 17 作為基礎映像
FROM openjdk:17-jdk-slim

# 設置工作目錄
WORKDIR /app

# 複製 JAR 文件到容器中
COPY demo/target/demo-0.0.1-SNAPSHOT.jar app.jar

# 設定環境變數 (Render 動態端口)
ENV PORT=8080

# 設定啟動命令，將 Render 的 PORT 傳入
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar app.jar"]
