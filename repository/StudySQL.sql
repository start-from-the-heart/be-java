CREATE DATABASE devPhongNHL;

USE devPhongNHL;

-- tao role
CREATE TABLE master_role(
	id int auto_increment primary key,
	role_type varchar(10),
	description varchar(255),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10)    
);

Create table master_sequence(
	name varchar(50) primary key,
    current_value INT NOT NULL
);


-- thong tin tai khoan 
CREATE TABLE client_user_account(
	id varchar(10) primary key,
    username varchar(255),
    password varchar(255),
    email varchar(255) unique,
    role_id int,
    status varchar(2),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
	constraint FK_UserAccountRole foreign key (role_id) references master_role(id)
);

CREATE TABLE client_user_account_info(
	id varchar(10) primary key,
    user_account_id varchar(10) UNIQUE,
    fullname varchar(255),
    phone varchar(10),
    avatar_url varchar(255),
    gender enum('male', 'female', 'other'),
    dob datetime,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    constraint FK_UserAccountInfoUserAccount FOREIGN KEY (user_account_id) references client_user_account(id)
);

ALTER TABLE client_user_account_info 
add constraint FK_UserAccountInfoUserAccount 
FOREIGN KEY (user_account_id) references client_user_account(id);

CREATE TABLE client_address(
	id int auto_increment primary key,
    user_account_id varchar(10),
    title varchar(255),
    address_line_1 varchar(255),
    address_line_2 varchar(255),
    country varchar(255),
    city varchar(255),
    postal_code varchar(255),
    landmark varchar(255),
    phone_number varchar(255),
    delete_flg boolean,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    constraint FK_AddressUserAccount FOREIGN KEY (user_account_id) references client_user_account(id)
);


CREATE TABLE client_categories(
	id varchar(10) primary key,
    category_name varchar(255),
    description varchar(255),
    delete_flg boolean,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10)
);

CREATE TABLE client_sub_categories(
	id varchar(10) primary key,
    category_id varchar(10),
    sub_category_name varchar(255),
    description varchar(255),
    delete_flg boolean,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    constraint FK_SubCategoryCategory foreign key (category_id) references client_categories(id)
);

CREATE TABLE client_products(
	id varchar(10) primary key,
    product_name varchar(255),
	description varchar(255),
    summary varchar(255),
    cover varchar(255),
    category_id varchar(10),
	created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10)
);

CREATE TABLE client_sub_category_product(
	product_id varchar(10),
    sub_category_id varchar(10),
    primary key(product_id, sub_category_id),
    constraint FK_SubCategoryProductProduct foreign key(product_id) references client_products(id),
    constraint FK_SubCategoryProductSubCategory foreign key(sub_category_id) references client_sub_categories(id)
);

CREATE TABLE client_products_skus (
    id INT auto_increment PRIMARY KEY,
    product_id VARCHAR(10),
    sku VARCHAR(30),
    price BIGINT,
    quantity INT,
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    updated_at TIMESTAMP,
    updated_by VARCHAR(10),
    CONSTRAINT FK_ProductProductSkus FOREIGN KEY(product_id) REFERENCES client_products(id)
);

CREATE TABLE client_products_attributes (
    id INT auto_increment PRIMARY KEY,
    type VARCHAR(255),         -- ví dụ: 'size', 'color'
    value VARCHAR(255),        -- ví dụ: 'M', 'Red'
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    updated_at TIMESTAMP,
    updated_by VARCHAR(10)
);

CREATE TABLE client_sku_attributes (
    sku_id INT,
    attribute_id INT,
    PRIMARY KEY (sku_id, attribute_id),
    CONSTRAINT FK_SkuAttributeProductsSku FOREIGN KEY (sku_id) REFERENCES client_products_skus(id),
    CONSTRAINT FK_SkuAttributeProductsAttribute FOREIGN KEY (attribute_id) REFERENCES client_products_attributes(id)
);

CREATE TABLE client_wishlist(
	id int4 auto_increment primary key,
    product_id varchar(10),
    user_account_id varchar(10),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_WishlistProduct foreign key (product_id) references client_products(id),
    CONSTRAINT FK_WishlistUserAccount foreign key (user_account_id) references client_user_account(id)
);

CREATE TABLE client_cart(
	id int4 auto_increment primary key,
    user_account_id varchar(10),
    total int,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_CartUserAccount foreign key (user_account_id) references client_user_account(id)
);

CREATE TABLE client_cart_item(
	id int4 auto_increment primary key,
    cart_id int4,
    product_id varchar(10), 
    product_sku_id int4,
    quantity int,
	created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_CartItemCart foreign key (cart_id) references client_cart(id),
    CONSTRAINT FK_CartItemProduct foreign key (product_id) references client_products(id),
    CONSTRAINT FK_CartItemProductSku foreign key (product_sku_id) references client_products_skus(id)
);

CREATE TABLE client_order_details(
	id int4 auto_increment primary key,
    user_account_id varchar(10),
    total int,
    status varchar(2),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_OrderDetailUserAccount foreign key (user_account_id) references client_user_account(id)
);

CREATE TABLE client_order_item(
	id int4 auto_increment primary key,
    order_id int4,
    product_id varchar(10),
    product_sku_id int4,
    quantity int,
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_OrderItemOrderDetail foreign key (order_id) references client_order_details(id),
    CONSTRAINT FK_OrderItemProduct foreign key (product_id) references client_products(id),
    CONSTRAINT FK_OrderItemProductSku foreign key (product_sku_id) references client_products_skus(id)
);

CREATE TABLE master_payment_status(
	code varchar(2) primary key,
    description varchar(255),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10)
);

CREATE TABLE client_payment_details(
	id int4 auto_increment primary key,
    order_id int4 unique,
    amount bigint,
    provider varchar(100),
    status varchar(2),
    created_at timestamp,
    created_by varchar(10),
    updated_at timestamp,
    updated_by varchar(10),
    CONSTRAINT FK_PaymentDetailOrderDetail foreign key (order_id) references client_order_details(id),
    CONSTRAINT FK_PaymentDetailPaymentStatus foreign key (status) references master_payment_status(code)
);

SHOW databases;

-- drop database devphongnhl;


-- create index
CREATE index idx_user_email ON client_user_account(email);
CREATE index idx_user_username ON client_user_account(username);

-- ALTER TABLE client_user_account DROP INDEX idx_user_email;
-- ALTER TABLE client_user_account DROP INDEX idx_user_username;


-- trigger when create client_user_account
DELIMITER $$

CREATE TRIGGER before_insert_client_user_account
BEFORE INSERT ON client_user_account
FOR EACH ROW
BEGIN
    DECLARE next_number INT;
    DECLARE next_code VARCHAR(10);

    -- Cập nhật giá trị mới cho sequence
    UPDATE master_sequence
    SET current_value = LAST_INSERT_ID(current_value + 1)
    WHERE name = 'user_account_id';

    -- Lấy giá trị vừa cập nhật
    SET next_number = LAST_INSERT_ID();

    -- Tạo mã account_id dạng 'CU00000001'
    SET next_code = CONCAT('CU', LPAD(next_number, 8, '0'));

    SET NEW.id = next_code;
END$$

DELIMITER ;