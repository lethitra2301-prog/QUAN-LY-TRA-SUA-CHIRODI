# PRODUCT BACKLOG
## Đề tài: Hệ thống quản lý quán trà sữa Chirơdi

## 1. Mục tiêu sản phẩm

Xây dựng hệ thống quản lý quán trà sữa nhằm hỗ trợ quản lý tài khoản, sản phẩm, danh mục, menu, giỏ hàng, đơn hàng, kho và thống kê doanh thu.

## 2. Quy ước độ ưu tiên

- P1: Ưu tiên cao, cần thực hiện trước.
- P2: Ưu tiên trung bình.
- P3: Ưu tiên thấp, chức năng bổ sung.

## 3. Quy ước Story Point

Nhóm sử dụng dãy Fibonacci:

1, 2, 3, 5, 8, 13.

Story Point dùng để ước lượng độ phức tạp của User Story.

## 4. Danh sách Product Backlog

| Mã | User Story | Priority | SP | Phụ trách |
|---|---|---|---:|---|
| US01 | Đăng nhập hệ thống | P1 | 3 | Người 4 |
| US02 | Đăng xuất hệ thống | P1 | 1 | Người 4 |
| US03 | Quản lý tài khoản | P1 | 5 | Người 1 |
| US04 | Phân quyền người dùng | P1 | 5 | Người 1 |
| US05 | Quản lý danh mục trà sữa | P1 | 3 | Người 2 |
| US06 | Quản lý sản phẩm | P1 | 5 | Người 2 |
| US07 | Quản lý topping | P2 | 3 | Người 2 |
| US08 | Xem menu trực tuyến | P1 | 3 | Người 2 |
| US09 | Thêm sản phẩm vào giỏ hàng | P1 | 5 | Người 5 |
| US10 | Cập nhật giỏ hàng | P1 | 3 | Người 5 |
| US11 | Đặt hàng trực tuyến | P1 | 8 | Người 5 |
| US12 | Quản lý đơn hàng | P1 | 5 | Người 6 |
| US13 | Cập nhật trạng thái đơn hàng | P1 | 3 | Người 6 |
| US14 | Quản lý thanh toán | P2 | 5 | Người 6 |
| US15 | Quản lý nguyên liệu kho | P2 | 5 | Người 5 |
| US16 | Quản lý nhập kho | P2 | 3 | Người 5 |
| US17 | Thống kê doanh thu | P2 | 5 | Người 6 |
| US18 | Thống kê sản phẩm bán chạy | P3 | 3 | Người 6 |
| US19 | Xem lịch sử mua hàng | P2 | 3 | Người 5 |
| US20 | Quản lý thông tin khách hàng | P2 | 3 | Người 1 |

## 5. Chi tiết User Story của Người 2

### US05 – Quản lý danh mục trà sữa

Là người quản lý, tôi muốn thêm, sửa và xóa danh mục trà sữa để phân loại sản phẩm dễ dàng.

- Priority: P1
- Story Point: 3
- Assignee: Người 2

Acceptance Criteria:
- Có thể thêm danh mục.
- Có thể sửa danh mục.
- Có thể xem danh sách danh mục.
- Không cho phép tên danh mục trống.
- Không xóa danh mục khi còn sản phẩm liên kết mà chưa xử lý.

### US06 – Quản lý sản phẩm

Là người quản lý, tôi muốn thêm, sửa và xóa sản phẩm để cập nhật menu của quán.

- Priority: P1
- Story Point: 5
- Assignee: Người 2

Acceptance Criteria:
- Hiển thị danh sách sản phẩm.
- Thêm sản phẩm mới.
- Chỉnh sửa thông tin sản phẩm.
- Xóa hoặc ngừng kinh doanh sản phẩm.
- Giá bán phải lớn hơn 0.
- Tên sản phẩm không được để trống.

### US08 – Xem menu trực tuyến

Là khách hàng, tôi muốn xem menu trà sữa để lựa chọn đồ uống phù hợp.

- Priority: P1
- Story Point: 3
- Assignee: Người 2

Acceptance Criteria:
- Hiển thị danh sách sản phẩm.
- Hiển thị tên, hình ảnh và giá bán.
- Hiển thị danh mục.
- Có thể xem thông tin chi tiết sản phẩm.
- Không hiển thị sản phẩm đã ngừng kinh doanh.

## 6. Kế hoạch Sprint

### Sprint 0
- Khảo sát nghiệp vụ.
- Xây dựng Product Backlog.
- Nghiên cứu kiến trúc.
- Khởi tạo GitHub và môi trường phát triển.

### Sprint 1
- Đăng nhập và đăng xuất.
- Quản lý tài khoản.
- Quản lý danh mục.
- Quản lý sản phẩm.
- Hiển thị menu trực tuyến.

### Sprint tiếp theo
- Giỏ hàng.
- Đặt hàng.
- Quản lý kho.
- Thanh toán.
- Thống kê doanh thu.