
# HƯỚNG DẪN CƠ SỞ DỮ LIỆU
## Dự án quản lý quán trà sữa Chirơdi

### 1. Hệ quản trị cơ sở dữ liệu
MySQL.

### 2. Tên cơ sở dữ liệu
QUANLYTRASUA.

### 3. Các bước khởi tạo
1. Cài đặt MySQL Server.
2. Mở MySQL Workbench.
3. Kết nối MySQL Server.
4. Mở file database/schema.sql.
5. Chạy toàn bộ câu lệnh SQL.
6. Kiểm tra database QUANLYTRASUA trong mục Schemas.

### 4. Các nhóm bảng
- Nhóm tài khoản: USER, CUSTOMER.
- Nhóm sản phẩm: CATEGORY, PRODUCT, TOPPING.
- Nhóm đơn hàng: ORDERS, ORDER_DETAIL, ORDER_ITEM_TOPPING, PAYMENT.
- Nhóm kho: INGREDIENT, PRODUCT_INGREDIENT, STOCK_RECEIPT, STOCK_RECEIPT_DETAIL.

### 5. Kiểm tra cơ sở dữ liệu
Sử dụng câu lệnh:
SHOW TABLES;

Để xem cấu trúc bảng:
DESCRIBE ten_bang;

### 6. Lưu ý
Không tự ý đổi tên bảng, tên cột, khóa chính và khóa ngoại khi chưa trao đổi với nhóm.
