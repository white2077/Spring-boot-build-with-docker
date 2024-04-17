FROM openjdk:17
LABEL authors="white2077 bui hoang dung"
#sử dụng image openjdk:17
ARG JAR_FILE=target/*.jar
#lấy file jar từ thư mục target
ADD ${JAR_FILE} app.jar
#add file jar vào container

ENTRYPOINT ["java","-jar","/app.jar"]
#chạy file jar

EXPOSE 8080
#container chạy trên cổng 8080

#port mà ứng dụng chạy mở cổng container
#Trước khi build image, cần chạy lệnh mvn clean install hoặc package  để tạo file jar
#sau đó chạy lệnh docker build -t api-image-sample . để build image
#sau đó chạy lệnh docker ps để kiểm tra container đang chạy
#nếu container đang chạy thì chạy lệnh docker stop api-container để dừng container
#sau đó chạy lệnh docker run -it -p 8080:8080 --name=[tên container] [image name]để chạy container

#xuất file tar bằng lệnh docker save -o [File name].tar [Image name]
#load file tar bằng lệnh docker load -i [File name].tar

#chay container bằng lệnh docker run -it -p 8080:8080 --name=[tên container] [image name]

#Xóa image bằng lệnh docker rmi [image name]
#Xóa container bằng lệnh docker rm [container name]
