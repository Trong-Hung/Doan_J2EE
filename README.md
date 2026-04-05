🚀 Huda.vn - Hệ Thống Quản Lý Doanh Nghiệp & Công Cụ Phần Mềm
Dự án đồ án môn học được xây dựng trên nền tảng Spring Boot, tích hợp các công nghệ hiện đại nhằm cung cấp giải pháp quản lý doanh nghiệp toàn diện, hỗ trợ tương tác thời gian thực và bảo mật cao.

👨‍💻 Thông Tin Sinh Viên
Họ và tên: Võ Trọng Hùng
Mã số sinh viên: 2280601119
Họ và tên: Đinh Thị Cẩm Dân
Mã số sinh viên: 2280600381
Lớp: 22DTHG3

✨ Tính Năng Chính
Quản lý Doanh nghiệp: Khởi tạo thông tin công ty, địa chỉ trụ sở và thiết lập tài khoản quản trị (ADMIN).
Quản lý Nhân sự: Thêm, sửa, xóa và mời nhân viên tham gia hệ thống theo phòng ban.
Hệ thống Nhắn tin (Real-time Chat): Tương tác trực tuyến giữa các thành viên thông qua giao thức WebSocket (STOMP/SockJS).
Bảo mật Đa tầng: * Xác thực bằng Form Login truyền thống với mật khẩu được mã hóa BCrypt.
Tích hợp đăng nhập nhanh qua Google OAuth2.

🛠 Công Nghệ Sử Dụng
Backend: Java 17/21, Spring Boot 3.x, Spring Security, Spring Data JPA.
Database: MySQL (Hosted on Railway).
Frontend: Thymeleaf, Bootstrap 5, JavaScript.
Real-time: Spring WebSocket, SockJS, STOMP.
DevOps: Docker, GitHub Actions, Railway Cloud.

📦 Hướng Dẫn Cài Đặt (Local)
1. Yêu cầu hệ thống
JDK 17 hoặc 21.
Maven 3.x.

MySQL Server 8.0+.

2. Cấu hình Database
Tạo một Database mới trong MySQL (ví dụ: huda_db).
Import file dữ liệu mẫu: database.sql (nằm trong thư mục gốc của source code).
Cấu hình lại thông tin kết nối trong file src/main/resources/application.properties.
