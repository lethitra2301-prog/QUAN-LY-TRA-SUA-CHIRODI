
# TÀI LIỆU KIẾN TRÚC PHẦN MỀM
## Hệ thống quản lý quán trà sữa Chirơdi

### 1. Giới thiệu
Hệ thống quản lý quán trà sữa Chirơdi được xây dựng nhằm hỗ trợ quản lý hoạt động kinh doanh của quán, bao gồm quản lý tài khoản, sản phẩm, danh mục, khách hàng, đơn hàng, thanh toán, kho nguyên liệu và thống kê doanh thu.

### 2. Kiến trúc hệ thống
Nhóm lựa chọn kiến trúc Three-tier Architecture (kiến trúc 3 lớp).

Kiến trúc gồm:
- Presentation Layer: Lớp giao diện người dùng.
- Business Logic Layer: Lớp xử lý nghiệp vụ.
- Data Access Layer: Lớp truy cập dữ liệu.

### 3. Công nghệ sử dụng
- Ngôn ngữ lập trình: Python.
- Backend: Flask.
- Frontend: HTML, CSS, JavaScript, Bootstrap.
- Database: MySQL.
- Quản lý mã nguồn: Git và GitHub.

### 4. Mô tả các lớp

#### 4.1. Presentation Layer
Cung cấp giao diện cho quản lý, nhân viên và khách hàng.
Các chức năng gồm đăng nhập, quản lý sản phẩm, xem menu, đặt hàng và theo dõi đơn hàng.

#### 4.2. Business Logic Layer
Tiếp nhận yêu cầu từ giao diện và xử lý nghiệp vụ:
- Xác thực tài khoản.
- Quản lý sản phẩm.
- Xử lý giỏ hàng.
- Tính tổng tiền.
- Xử lý đơn hàng.
- Quản lý kho.
- Thống kê doanh thu.

#### 4.3. Data Access Layer
Thực hiện truy vấn và thao tác dữ liệu trong MySQL:
- Thêm dữ liệu.
- Cập nhật dữ liệu.
- Xóa dữ liệu.
- Truy vấn dữ liệu.

### 5. Luồng hoạt động
Khi khách hàng đặt hàng:
1. Giao diện nhận thông tin đặt hàng.
2. Backend kiểm tra thông tin sản phẩm và số lượng.
3. Hệ thống tính tổng tiền.
4. Lớp truy cập dữ liệu lưu đơn hàng.
5. Hệ thống trả kết quả về giao diện.

### 6. Ưu điểm
- Phân chia hệ thống thành các lớp rõ ràng.
- Dễ bảo trì và nâng cấp.
- Các thành viên có thể phát triển từng chức năng độc lập.
- Dễ kiểm thử và phát hiện lỗi.
- Phù hợp với quy mô dự án sinh viên.

### 7. Hạn chế
- Cần thống nhất giao tiếp giữa các lớp.
- Nếu thiết kế không tốt, việc thay đổi cơ sở dữ liệu có thể ảnh hưởng đến các chức năng liên quan.
- Chưa phù hợp với hệ thống có quy mô và tải truy cập rất lớn nếu không được mở rộng.

### 8. Kết luận
Kiến trúc 3 lớp phù hợp với hệ thống quản lý quán trà sữa Chirơdi vì giúp phân chia rõ giao diện, nghiệp vụ và dữ liệu, tạo điều kiện để 6 thành viên cùng phát triển và tích hợp hệ thống.
