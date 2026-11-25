
# MÔ HÌNH E-R
## Hệ thống quản lý quán trà sữa Chirơdi

### 1. Mục đích
Mô hình E-R mô tả các thực thể, thuộc tính và mối quan hệ giữa các thực thể trong hệ thống.

### 2. Danh sách thực thể
1. USER
2. CUSTOMER
3. CATEGORY
4. PRODUCT
5. TOPPING
6. ORDERS
7. ORDER_DETAIL
8. ORDER_ITEM_TOPPING
9. PAYMENT
10. INGREDIENT
11. PRODUCT_INGREDIENT
12. STOCK_RECEIPT
13. STOCK_RECEIPT_DETAIL

### 3. Các mối quan hệ
- CATEGORY - PRODUCT: 1:N
- CUSTOMER - ORDERS: 1:N
- USER - ORDERS: 1:N
- ORDERS - ORDER_DETAIL: 1:N
- PRODUCT - ORDER_DETAIL: 1:N
- ORDER_DETAIL - TOPPING: N:N qua ORDER_ITEM_TOPPING
- ORDERS - PAYMENT: 1:N
- PRODUCT - INGREDIENT: N:N qua PRODUCT_INGREDIENT
- USER - STOCK_RECEIPT: 1:N
- STOCK_RECEIPT - STOCK_RECEIPT_DETAIL: 1:N
- INGREDIENT - STOCK_RECEIPT_DETAIL: 1:N

### 4. Sơ đồ E-R
Sơ đồ được lưu tại:
images/erd.png

### 5. Kết luận
Mô hình E-R là cơ sở để chuyển đổi thành lược đồ quan hệ và triển khai cơ sở dữ liệu MySQL.
