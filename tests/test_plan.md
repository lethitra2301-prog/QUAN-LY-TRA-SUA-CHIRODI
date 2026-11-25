
# KẾ HOẠCH KIỂM THỬ HỆ THỐNG QUẢN LÝ QUÁN TRÀ SỮA CHIRƠDI

## 1. Mục tiêu kiểm thử
- Kiểm tra các chức năng của hệ thống.
- Phát hiện lỗi trong quá trình sử dụng.
- Đảm bảo dữ liệu đơn hàng và thanh toán được lưu chính xác.
- Đảm bảo hệ thống hoạt động đúng yêu cầu.

## 2. Phạm vi kiểm thử
- Đăng nhập và đăng xuất.
- Quản lý sản phẩm.
- Quản lý giỏ hàng.
- Quản lý đơn hàng.
- Cập nhật trạng thái đơn hàng.
- Thanh toán.
- Thống kê doanh thu.

## 3. Môi trường kiểm thử
- Hệ điều hành: Windows.
- Trình duyệt: Google Chrome.
- Ngôn ngữ lập trình: Python.
- Framework: Flask.
- Cơ sở dữ liệu: MySQL.
- Công cụ: Visual Studio Code, Git và GitHub.

## 4. Danh sách trường hợp kiểm thử

| Mã | Chức năng | Dữ liệu đầu vào | Kết quả mong đợi |
|---|---|---|---|
| TC01 | Đăng nhập đúng | Tài khoản và mật khẩu hợp lệ | Đăng nhập thành công |
| TC02 | Đăng nhập sai | Mật khẩu không đúng | Hiển thị thông báo lỗi |
| TC03 | Thêm sản phẩm | Tên, giá và thông tin hợp lệ | Sản phẩm được thêm |
| TC04 | Thêm sản phẩm thiếu tên | Tên sản phẩm để trống | Hiển thị thông báo lỗi |
| TC05 | Tạo đơn hàng | Đơn hàng có sản phẩm hợp lệ | Đơn hàng được lưu |
| TC06 | Xem danh sách đơn | Truy cập trang quản lý đơn | Hiển thị danh sách đơn |
| TC07 | Cập nhật trạng thái | Chuyển sang Preparing | Trạng thái được cập nhật |
| TC08 | Hoàn tất đơn hàng | Chuyển sang Completed | Đơn hàng hoàn tất |
| TC09 | Thanh toán | Số tiền thanh toán hợp lệ | Ghi nhận thanh toán |
| TC10 | Xem doanh thu | Chọn khoảng thời gian | Hiển thị doanh thu tương ứng |

## 5. Phương pháp kiểm thử
- Kiểm thử chức năng: kiểm tra từng chức năng theo yêu cầu.
- Kiểm thử giao diện: kiểm tra cách hiển thị và thao tác.
- Kiểm thử dữ liệu: kiểm tra dữ liệu lưu trong cơ sở dữ liệu.
- Kiểm thử tích hợp: kiểm tra sự phối hợp giữa các chức năng.

## 6. Tiêu chí đánh giá
- Chức năng hoạt động đúng yêu cầu.
- Dữ liệu được lưu và truy xuất chính xác.
- Không phát sinh lỗi nghiêm trọng.
- Các trường hợp kiểm thử được ghi nhận kết quả thực tế.

## 7. Ghi chú
Kết quả kiểm thử sẽ được cập nhật sau khi nhóm hoàn thành và chạy thử các chức năng.
Không đánh dấu trường hợp kiểm thử là đạt (Pass) trước khi thực sự kiểm tra.
