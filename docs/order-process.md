
# QUY TRÌNH QUẢN LÝ ĐƠN HÀNG

## 1. Mục đích
Mô tả quy trình tiếp nhận, xử lý và thanh toán đơn hàng của hệ thống quán trà sữa Chirơdi.

## 2. Quy trình đặt hàng
1. Khách hàng xem danh sách sản phẩm.
2. Khách hàng chọn sản phẩm và số lượng.
3. Hệ thống thêm sản phẩm vào giỏ hàng.
4. Khách hàng kiểm tra giỏ hàng và tổng tiền.
5. Khách hàng xác nhận đặt hàng.
6. Hệ thống lưu đơn hàng vào cơ sở dữ liệu.
7. Nhân viên tiếp nhận và xác nhận đơn hàng.
8. Nhân viên chuẩn bị đồ uống và cập nhật trạng thái.
9. Đơn hàng hoàn tất và được lưu vào lịch sử.

## 3. Trạng thái đơn hàng

| Trạng thái | Ý nghĩa |
|---|---|
| Pending | Đơn hàng mới được tạo |
| Confirmed | Nhân viên đã xác nhận |
| Preparing | Đang chuẩn bị đồ uống |
| Ready | Đồ uống đã sẵn sàng |
| Completed | Đơn hàng đã hoàn tất |
| Cancelled | Đơn hàng đã bị hủy |

## 4. Quy trình thanh toán
1. Hệ thống tính tổng tiền đơn hàng.
2. Khách hàng chọn phương thức thanh toán.
3. Khách hàng thực hiện thanh toán.
4. Hệ thống ghi nhận số tiền, phương thức và thời gian thanh toán.
5. Hệ thống cập nhật trạng thái thanh toán.

## 5. Phương thức thanh toán
- Tiền mặt: khách thanh toán trực tiếp tại quầy hoặc khi nhận hàng.
- Chuyển khoản: khách chuyển tiền qua tài khoản ngân hàng và nhân viên xác nhận.

## 6. Thông tin đơn hàng cần lưu
- Mã đơn hàng.
- Thông tin khách hàng.
- Ngày tạo đơn.
- Danh sách sản phẩm.
- Số lượng từng sản phẩm.
- Đơn giá.
- Tổng tiền.
- Trạng thái đơn hàng.
- Trạng thái thanh toán.

## 7. Thông tin thanh toán cần lưu
- Mã thanh toán.
- Mã đơn hàng.
- Phương thức thanh toán.
- Số tiền thanh toán.
- Thời gian thanh toán.
- Trạng thái thanh toán.
