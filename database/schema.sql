
-- =============================================
-- 0. TAO DATABASE
-- =============================================

USE master;
GO

IF DB_ID(N'QUANLYTRASUA') IS NULL
BEGIN
    CREATE DATABASE QUANLYTRASUA;
END
GO

USE QUANLYTRASUA;
GO

-- =============================================
-- 1. TAI KHOAN
-- =============================================

CREATE TABLE [USER] (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL
        CHECK (role IN ('ADMIN', 'MANAGER', 'STAFF')),
    phone VARCHAR(15),
    status BIT DEFAULT 1
);
GO

-- =============================================
-- 2. KHACH HANG
-- =============================================

CREATE TABLE CUSTOMER (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100),
    address NVARCHAR(255)
);
GO

-- =============================================
-- 3. DANH MUC
-- =============================================

CREATE TABLE CATEGORY (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name NVARCHAR(100) NOT NULL,
    description NVARCHAR(MAX)
);
GO

-- =============================================
-- 4. SAN PHAM
-- =============================================

CREATE TABLE PRODUCT (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    category_id INT,
    product_name NVARCHAR(150) NOT NULL,
    price DECIMAL(12,2) NOT NULL,
    description NVARCHAR(MAX),
    image VARCHAR(255),
    status BIT DEFAULT 1,

    FOREIGN KEY (category_id)
        REFERENCES CATEGORY(category_id),

    CHECK (price >= 0)
);
GO

-- =============================================
-- 5. TOPPING
-- =============================================

CREATE TABLE TOPPING (
    topping_id INT IDENTITY(1,1) PRIMARY KEY,
    topping_name NVARCHAR(100) NOT NULL,
    price DECIMAL(12,2) NOT NULL,
    status BIT DEFAULT 1,

    CHECK (price >= 0)
);
GO

-- =============================================
-- 6. DON HANG
-- =============================================

CREATE TABLE [ORDERS] (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    user_id INT,
    order_date DATETIME2 DEFAULT SYSDATETIME(),
    total_amount DECIMAL(12,2) DEFAULT 0,
    order_status VARCHAR(30) DEFAULT 'PENDING',
    note NVARCHAR(MAX),

    FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER(customer_id),

    FOREIGN KEY (user_id)
        REFERENCES [USER](user_id),

    CHECK (total_amount >= 0)
);
GO

-- =============================================
-- 7. CHI TIET DON HANG
-- =============================================

CREATE TABLE ORDER_DETAIL (
    order_detail_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL,
    subtotal DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (order_id)
        REFERENCES [ORDERS](order_id),

    FOREIGN KEY (product_id)
        REFERENCES PRODUCT(product_id),

    CHECK (quantity > 0),
    CHECK (unit_price >= 0),
    CHECK (subtotal >= 0)
);
GO

-- =============================================
-- 8. TOPPING TRONG TUNG MON
-- =============================================

CREATE TABLE ORDER_ITEM_TOPPING (
    order_detail_id INT NOT NULL,
    topping_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    unit_price DECIMAL(12,2) NOT NULL,

    PRIMARY KEY (order_detail_id, topping_id),

    FOREIGN KEY (order_detail_id)
        REFERENCES ORDER_DETAIL(order_detail_id),

    FOREIGN KEY (topping_id)
        REFERENCES TOPPING(topping_id),

    CHECK (quantity > 0),
    CHECK (unit_price >= 0)
);
GO

-- =============================================
-- 9. THANH TOAN
-- =============================================

CREATE TABLE PAYMENT (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    payment_date DATETIME2 DEFAULT SYSDATETIME(),
    payment_status VARCHAR(30) DEFAULT 'PENDING',

    FOREIGN KEY (order_id)
        REFERENCES [ORDERS](order_id),

    CHECK (amount >= 0)
);
GO

-- =============================================
-- 10. NGUYEN LIEU
-- =============================================

CREATE TABLE INGREDIENT (
    ingredient_id INT IDENTITY(1,1) PRIMARY KEY,
    ingredient_name NVARCHAR(100) NOT NULL,
    unit NVARCHAR(30) NOT NULL,
    stock_quantity DECIMAL(12,3) DEFAULT 0,
    min_quantity DECIMAL(12,3) DEFAULT 0,

    CHECK (stock_quantity >= 0),
    CHECK (min_quantity >= 0)
);
GO

-- =============================================
-- 11. DINH LUONG NGUYEN LIEU
-- =============================================

CREATE TABLE PRODUCT_INGREDIENT (
    product_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity_used DECIMAL(12,3) NOT NULL,

    PRIMARY KEY (product_id, ingredient_id),

    FOREIGN KEY (product_id)
        REFERENCES PRODUCT(product_id),

    FOREIGN KEY (ingredient_id)
        REFERENCES INGREDIENT(ingredient_id),

    CHECK (quantity_used > 0)
);
GO

-- =============================================
-- 12. PHIEU NHAP KHO
-- =============================================

CREATE TABLE STOCK_RECEIPT (
    receipt_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    receipt_date DATETIME2 DEFAULT SYSDATETIME(),
    total_cost DECIMAL(12,2) DEFAULT 0,
    note NVARCHAR(MAX),

    FOREIGN KEY (user_id)
        REFERENCES [USER](user_id),

    CHECK (total_cost >= 0)
);
GO

-- =============================================
-- 13. CHI TIET PHIEU NHAP
-- =============================================

CREATE TABLE STOCK_RECEIPT_DETAIL (
    receipt_detail_id INT IDENTITY(1,1) PRIMARY KEY,
    receipt_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity DECIMAL(12,3) NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (receipt_id)
        REFERENCES STOCK_RECEIPT(receipt_id),

    FOREIGN KEY (ingredient_id)
        REFERENCES INGREDIENT(ingredient_id),

    CHECK (quantity > 0),
    CHECK (unit_price >= 0)
);
GO

-- =============================================
-- KIEM TRA CAC BANG DA TAO
-- =============================================

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO
