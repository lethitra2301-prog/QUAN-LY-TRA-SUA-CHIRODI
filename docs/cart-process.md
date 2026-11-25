# QUY TRÌNH QUẢN LÝ GIỎ HÀNG

## 1. Giới thiệu

Chức năng quản lý giỏ hàng thuộc hệ thống quản lý quán trà sữa Chirơdi. Chức năng này cho phép khách hàng lựa chọn các sản phẩm trà sữa yêu thích, thêm sản phẩm vào giỏ hàng và điều chỉnh số lượng trước khi tiến hành đặt hàng.

Mục tiêu của chức năng là giúp khách hàng quản lý các sản phẩm muốn mua một cách thuận tiện, nhanh chóng và chính xác.

## 2. Đối tượng sử dụng

- Khách hàng: Có thể thêm, xem, cập nhật và xóa sản phẩm trong giỏ hàng.
- Hệ thống: Có nhiệm vụ lưu thông tin giỏ hàng và tự động tính toán tổng tiền.

## 3. Các chức năng chính

### 3.1. Thêm sản phẩm vào giỏ hàng

Khách hàng thực hiện các bước:

1. Truy cập trang menu trà sữa.
2. Lựa chọn sản phẩm muốn mua.
3. Chọn số lượng sản phẩm.
4. Chọn kích cỡ và topping nếu sản phẩm hỗ trợ.
5. Nhấn nút "Thêm vào giỏ hàng".
6. Hệ thống kiểm tra thông tin sản phẩm và số lượng.
7. Nếu hợp lệ, hệ thống thêm sản phẩm vào giỏ hàng.
8. Hiển thị thông báo thêm sản phẩm thành công.

### 3.2. Xem giỏ hàng

Khách hàng có thể mở giỏ hàng để xem:

- Tên sản phẩm.
- Hình ảnh sản phẩm.
- Kích cỡ.
- Topping đã chọn.
- Đơn giá.
- Số lượng.
- Thành tiền của từng sản phẩm.
- Tổng tiền của giỏ hàng.

### 3.3. Cập nhật số lượng sản phẩm

Khách hàng có thể:

- Nhấn dấu cộng (+) để tăng số lượng.
- Nhấn dấu trừ (-) để giảm số lượng.
- Nhập trực tiếp số lượng muốn mua.

Sau khi thay đổi số lượng, hệ thống tự động cập nhật thành tiền và tổng tiền.

Nếu số lượng giảm về 0, hệ thống có thể yêu cầu khách hàng xác nhận xóa sản phẩm khỏi giỏ hàng.

### 3.4. Xóa sản phẩm khỏi giỏ hàng

Khách hàng có thể xóa sản phẩm không còn nhu cầu mua.

Quy trình:

1. Mở giỏ hàng.
2. Chọn sản phẩm muốn xóa.
3. Nhấn nút "Xóa".
4. Hệ thống loại bỏ sản phẩm khỏi giỏ hàng.
5. Cập nhật lại tổng tiền.

### 3.5. Xóa toàn bộ giỏ hàng

Khách hàng có thể lựa chọn xóa tất cả sản phẩm trong giỏ hàng.

Hệ thống hiển thị thông báo xác nhận trước khi thực hiện.

Sau khi xóa, giỏ hàng trở về trạng thái trống.

## 4. Cấu trúc thông tin giỏ hàng

Mỗi sản phẩm trong giỏ hàng cần lưu các thông tin:

| STT | Thuộc tính   |                   |
| --- | ------------ | ----------------- |
| 1   | product_id   | Mã sản phẩm       |
| 2   | product_name | Tên sản phẩm      |
| 3   | image        | Hình ảnh sản phẩm |
| 4   | price        | Đơn giá           |
| 5   | size         | Kích cỡ           |
| 6   | topping      | Topping đã chọn   |
| 7   | quantity     | Số lượng          |
| 8   | subtotal     | Thành tiền        |

## 5. Công thức tính tiền

Thành tiền của một sản phẩm:

**Thành tiền = Đơn giá × Số lượng**

Nếu có topping hoặc phụ thu kích cỡ thì các khoản này được cộng vào đơn giá trước khi tính thành tiền.

Tổng tiền giỏ hàng:

**Tổng tiền = Tổng thành tiền của tất cả sản phẩm trong giỏ hàng.**

Ví dụ:

| Sản phẩm             | Đơn giá | Số lượng | Thành tiền |
| -------------------- | ------: | -------: | ---------: |
| Trà sữa truyền thống | 30.000đ |        2 |    60.000đ |
| Trà sữa matcha       | 35.000đ |        1 |    35.000đ |
| Trà đào              | 25.000đ |        1 |    25.000đ |

**Tổng tiền: 120.000đ.**

## 6. Quy trình hoạt động tổng quát

1. Khách hàng truy cập menu.
2. Chọn sản phẩm muốn mua.
3. Thêm sản phẩm vào giỏ hàng.
4. Hệ thống lưu thông tin sản phẩm.
5. Khách hàng xem giỏ hàng.
6. Khách hàng cập nhật số lượng hoặc xóa sản phẩm nếu cần.
7. Hệ thống tính lại tổng tiền.
8. Khách hàng kiểm tra giỏ hàng.
9. Chuyển sang chức năng đặt hàng.

## 7. Các quy tắc nghiệp vụ

- Số lượng sản phẩm phải là số nguyên dương.
- Không cho phép thêm sản phẩm đã ngừng kinh doanh.
- Không cho phép số lượng vượt quá số lượng tồn kho nếu hệ thống có quản lý tồn kho.
- Khi thay đổi số lượng, tổng tiền phải được cập nhật.
- Không thể tiến hành đặt hàng khi giỏ hàng trống.
- Sản phẩm có cùng kích cỡ và topping có thể được gộp chung trong giỏ hàng.
- Sản phẩm khác kích cỡ hoặc topping cần được phân biệt thành các dòng riêng.

## 8. Các trường hợp kiểm thử

| STT | Trường hợp kiểm thử          | Kết quả mong đợi                 |
| --- | ---------------------------- | -------------------------------- |
| 1   | Thêm sản phẩm hợp lệ         | Thêm thành công                  |
| 2   | Thêm sản phẩm hết hàng       | Thông báo không khả dụng         |
| 3   | Tăng số lượng sản phẩm       | Số lượng được cập nhật           |
| 4   | Giảm số lượng sản phẩm       | Số lượng được cập nhật           |
| 5   | Nhập số lượng âm             | Không chấp nhận                  |
| 6   | Xóa một sản phẩm             | Sản phẩm bị loại khỏi giỏ        |
| 7   | Xóa toàn bộ giỏ hàng         | Giỏ hàng trở về trạng thái trống |
| 8   | Thêm hai sản phẩm giống nhau | Gộp sản phẩm phù hợp             |
| 9   | Thay đổi topping             | Cập nhật đúng lựa chọn           |
| 10  | Kiểm tra tổng tiền           | Tổng tiền được tính chính xác    |

## 9. Kết luận

Chức năng quản lý giỏ hàng là một phần quan trọng trong hệ thống quản lý quán trà sữa Chirơdi. Chức năng giúp khách hàng dễ dàng lựa chọn, quản lý sản phẩm và kiểm tra chi phí trước khi đặt hàng.

Việc xây dựng giỏ hàng chính xác góp phần nâng cao trải nghiệm mua sắm và hỗ trợ quá trình xử lý đơn hàng của hệ thống.
