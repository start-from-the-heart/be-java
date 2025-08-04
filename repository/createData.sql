-- Thêm dữ liệu vào bảng master_role
INSERT INTO master_role (role_type, description, created_at, created_by) VALUES
('ADMIN', 'Quản trị hệ thống', NOW(), 'system'),
('USER', 'Người dùng thông thường', NOW(), 'system'),
('VIP', 'Người dùng VIP', NOW(), 'system'),
('MOD', 'Người kiểm duyệt', NOW(), 'system');

-- Thêm dữ liệu vào bảng master_sequence
INSERT INTO master_sequence (name, current_value) VALUES ('user_account_id', 0);

-- Thêm dữ liệu vào bảng client_user_account (10 bản ghi)
INSERT INTO client_user_account (username, password, email, role_id, status, created_at, created_by) VALUES
('user1', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user1@example.com', 2, 'A', NOW(), 'system'),
('user2', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user2@example.com', 2, 'A', NOW(), 'system'),
('admin1', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'admin1@example.com', 1, 'A', NOW(), 'system'),
('user3', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user3@example.com', 2, 'A', NOW(), 'system'),
('vip1', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'vip1@example.com', 3, 'A', NOW(), 'system'),
('user4', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user4@example.com', 2, 'A', NOW(), 'system'),
('mod1', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'mod1@example.com', 4, 'A', NOW(), 'system'),
('user5', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user5@example.com', 2, 'A', NOW(), 'system'),
('vip2', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'vip2@example.com', 3, 'A', NOW(), 'system'),
('user6', '$2a$10$xJwL5v5Jz5Z5Z5Z5Z5Z5Zu', 'user6@example.com', 2, 'A', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_user_account_info
INSERT INTO client_user_account_info (id, user_account_id, fullname, phone, avatar_url, gender, dob, created_at, created_by) VALUES
('INFO001', 'CU00000001', 'Nguyễn Văn A', '0987654321', 'avatar1.jpg', 'male', '1990-01-01', NOW(), 'system'),
('INFO002', 'CU00000002', 'Trần Thị B', '0987654322', 'avatar2.jpg', 'female', '1992-05-15', NOW(), 'system'),
('INFO003', 'CU00000003', 'Lê Văn C', '0987654323', 'avatar3.jpg', 'male', '1985-11-20', NOW(), 'system'),
('INFO004', 'CU00000004', 'Phạm Thị D', '0987654324', 'avatar4.jpg', 'female', '1995-03-10', NOW(), 'system'),
('INFO005', 'CU00000005', 'Hoàng Văn E', '0987654325', 'avatar5.jpg', 'male', '1988-07-25', NOW(), 'system'),
('INFO006', 'CU00000006', 'Vũ Thị F', '0987654326', 'avatar6.jpg', 'female', '1993-09-30', NOW(), 'system'),
('INFO007', 'CU00000007', 'Đặng Văn G', '0987654327', 'avatar7.jpg', 'male', '1991-12-05', NOW(), 'system'),
('INFO008', 'CU00000008', 'Bùi Thị H', '0987654328', 'avatar8.jpg', 'female', '1994-04-18', NOW(), 'system'),
('INFO009', 'CU00000009', 'Mai Văn I', '0987654329', 'avatar9.jpg', 'male', '1987-08-22', NOW(), 'system'),
('INFO010', 'CU00000010', 'Lý Thị K', '0987654330', 'avatar10.jpg', 'female', '1996-06-12', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_address (3 địa chỉ cho mỗi user)
INSERT INTO client_address (user_account_id, title, address_line_1, address_line_2, country, city, postal_code, landmark, phone_number, delete_flg, created_at, created_by) VALUES
-- User 1
('CU00000001', 'Nhà riêng', '123 Đường ABC', 'Phường 1', 'Việt Nam', 'Hà Nội', '100000', 'Gần siêu thị', '0987654321', 0, NOW(), 'system'),
('CU00000001', 'Công ty', '456 Đường XYZ', 'Tầng 5', 'Việt Nam', 'Hà Nội', '100000', 'Tòa nhà B', '0987654321', 0, NOW(), 'system'),
('CU00000001', 'Nhà bố mẹ', '789 Đường DEF', '', 'Việt Nam', 'Hải Phòng', '180000', 'Gần chợ', '0987654321', 0, NOW(), 'system'),
-- User 2
('CU00000002', 'Nhà chính', '321 Đường KLM', 'Phường 2', 'Việt Nam', 'TP HCM', '700000', 'Gần công viên', '0987654322', 0, NOW(), 'system'),
('CU00000002', 'Căn hộ', '654 Đường NOP', 'Tầng 3', 'Việt Nam', 'TP HCM', '700000', 'Chung cư A', '0987654322', 0, NOW(), 'system'),
-- User 3
('CU00000003', 'Nhà riêng', '987 Đường QRS', 'Phường 3', 'Việt Nam', 'Đà Nẵng', '550000', 'Gần biển', '0987654323', 0, NOW(), 'system'),
-- User 4
('CU00000004', 'Nhà chính', '147 Đường TUV', '', 'Việt Nam', 'Hải Phòng', '180000', 'Gần trường học', '0987654324', 0, NOW(), 'system'),
('CU00000004', 'Nhà nghỉ', '258 Đường WXY', 'Phòng 201', 'Việt Nam', 'Vũng Tàu', '790000', 'Khu du lịch', '0987654324', 0, NOW(), 'system'),
-- User 5
('CU00000005', 'Biệt thự', '369 Đường ZAB', '', 'Việt Nam', 'Hà Nội', '100000', 'Khu đô thị', '0987654325', 0, NOW(), 'system'),
-- User 6
('CU00000006', 'Nhà riêng', '159 Đường CDE', 'Phường 4', 'Việt Nam', 'TP HCM', '700000', 'Gần siêu thị', '0987654326', 0, NOW(), 'system'),
('CU00000006', 'Văn phòng', '357 Đường FGH', 'Tầng 7', 'Việt Nam', 'TP HCM', '700000', 'Tòa nhà C', '0987654326', 0, NOW(), 'system'),
-- User 7
('CU00000007', 'Nhà chính', '753 Đường IJK', '', 'Việt Nam', 'Đà Nẵng', '550000', 'Gần sân bay', '0987654327', 0, NOW(), 'system'),
-- User 8
('CU00000008', 'Căn hộ', '951 Đường LMN', 'Phòng 302', 'Việt Nam', 'Hà Nội', '100000', 'Chung cư B', '0987654328', 0, NOW(), 'system'),
-- User 9
('CU00000009', 'Nhà nghỉ', '842 Đường OPQ', '', 'Việt Nam', 'Nha Trang', '650000', 'Gần biển', '0987654329', 0, NOW(), 'system'),
('CU00000009', 'Nhà chính', '624 Đường RST', 'Phường 5', 'Việt Nam', 'Hà Nội', '100000', 'Gần công viên', '0987654329', 0, NOW(), 'system'),
-- User 10
('CU00000010', 'Nhà riêng', '426 Đường UVW', '', 'Việt Nam', 'Hải Phòng', '180000', 'Gần chợ', '0987654330', 0, NOW(), 'system');

-- Thêm dữ liệu vào bảng client_categories (5-10 bản ghi)
INSERT INTO client_categories (id, category_name, description, delete_flg, created_at, created_by) VALUES
('CAT001', 'Điện tử', 'Thiết bị điện tử gia dụng', 0, NOW(), 'system'),
('CAT002', 'Thời trang', 'Quần áo, phụ kiện thời trang', 0, NOW(), 'system'),
('CAT003', 'Sách', 'Sách các loại', 0, NOW(), 'system'),
('CAT004', 'Đồ gia dụng', 'Đồ dùng trong nhà', 0, NOW(), 'system'),
('CAT005', 'Thể thao', 'Dụng cụ thể thao', 0, NOW(), 'system'),
('CAT006', 'Mỹ phẩm', 'Sản phẩm làm đẹp', 0, NOW(), 'system'),
('CAT007', 'Đồ chơi', 'Đồ chơi trẻ em', 0, NOW(), 'system');

-- Thêm dữ liệu vào bảng client_sub_categories (ít nhất 2 sub cho mỗi category)
INSERT INTO client_sub_categories (id, category_id, sub_category_name, description, delete_flg, created_at, created_by) VALUES
-- Điện tử
('SUB001', 'CAT001', 'Điện thoại', 'Smartphone, điện thoại di động', 0, NOW(), 'system'),
('SUB002', 'CAT001', 'Laptop', 'Máy tính xách tay', 0, NOW(), 'system'),
('SUB003', 'CAT001', 'TV', 'Tivi các loại', 0, NOW(), 'system'),
-- Thời trang
('SUB004', 'CAT002', 'Áo nam', 'Áo thời trang nam', 0, NOW(), 'system'),
('SUB005', 'CAT002', 'Áo nữ', 'Áo thời trang nữ', 0, NOW(), 'system'),
('SUB006', 'CAT002', 'Quần jeans', 'Quần jeans nam/nữ', 0, NOW(), 'system'),
-- Sách
('SUB007', 'CAT003', 'Sách văn học', 'Tiểu thuyết, truyện ngắn', 0, NOW(), 'system'),
('SUB008', 'CAT003', 'Sách kỹ năng', 'Sách phát triển bản thân', 0, NOW(), 'system'),
-- Đồ gia dụng
('SUB009', 'CAT004', 'Bếp', 'Đồ dùng nhà bếp', 0, NOW(), 'system'),
('SUB010', 'CAT004', 'Phòng ngủ', 'Đồ dùng phòng ngủ', 0, NOW(), 'system'),
-- Thể thao
('SUB011', 'CAT005', 'Dụng cụ gym', 'Dụng cụ tập thể hình', 0, NOW(), 'system'),
('SUB012', 'CAT005', 'Bóng đá', 'Đồ dùng bóng đá', 0, NOW(), 'system'),
-- Mỹ phẩm
('SUB013', 'CAT006', 'Chăm sóc da', 'Sản phẩm chăm sóc da mặt', 0, NOW(), 'system'),
('SUB014', 'CAT006', 'Trang điểm', 'Mỹ phẩm trang điểm', 0, NOW(), 'system'),
-- Đồ chơi
('SUB015', 'CAT007', 'Đồ chơi giáo dục', 'Đồ chơi phát triển trí tuệ', 0, NOW(), 'system'),
('SUB016', 'CAT007', 'Đồ chơi vận động', 'Đồ chơi thể chất', 0, NOW(), 'system');

-- Thêm dữ liệu vào bảng client_products (2-5 sản phẩm mỗi subcategory)
INSERT INTO client_products (id, product_name, description, summary, cover, category_id, created_at, created_by) VALUES
-- Điện thoại
('PROD001', 'iPhone 13', 'Điện thoại iPhone 13 128GB', 'Màn hình 6.1 inch, chip A15', 'iphone13.jpg', 'CAT001', NOW(), 'system'),
('PROD002', 'Samsung Galaxy S21', 'Điện thoại Samsung Galaxy S21 5G', 'Màn hình 6.2 inch, chip Exynos 2100', 's21.jpg', 'CAT001', NOW(), 'system'),
-- Laptop
('PROD003', 'MacBook Pro M1', 'Laptop MacBook Pro 13 inch M1', 'Chip M1, 8GB RAM, 256GB SSD', 'mbp_m1.jpg', 'CAT001', NOW(), 'system'),
('PROD004', 'Dell XPS 13', 'Laptop Dell XPS 13 9310', 'Core i7, 16GB RAM, 512GB SSD', 'xps13.jpg', 'CAT001', NOW(), 'system'),
-- TV
('PROD005', 'Samsung QLED 4K 55 inch', 'Smart TV Samsung QLED QA55Q60A', 'Công nghệ QLED, 4K UHD', 'samsung_qled.jpg', 'CAT001', NOW(), 'system'),
-- Áo nam
('PROD006', 'Áo thun nam trơn', 'Áo thun nam cổ tròn màu đen', 'Chất liệu cotton 100%', 'ao_thun_nam.jpg', 'CAT002', NOW(), 'system'),
('PROD007', 'Áo sơ mi nam dài tay', 'Áo sơ mi nam công sở', 'Chất liệu kate không nhăn', 'ao_somi_nam.jpg', 'CAT002', NOW(), 'system'),
-- Áo nữ
('PROD008', 'Áo thun nữ cổ tim', 'Áo thun nữ dáng ôm', 'Chất liệu cotton pha', 'ao_thun_nu.jpg', 'CAT002', NOW(), 'system'),
('PROD009', 'Áo khoác nữ dáng dài', 'Áo khoác nữ mùa đông', 'Chất liệu len ấm áp', 'ao_khoac_nu.jpg', 'CAT002', NOW(), 'system'),
-- Quần jeans
('PROD010', 'Quần jeans nam ống đứng', 'Quần jeans nam màu xanh đậm', 'Chất liệu denim co giãn', 'jeans_nam.jpg', 'CAT002', NOW(), 'system'),
('PROD011', 'Quần jeans nữ skinny', 'Quần jeans nữ bó sát', 'Chất liệu denim mềm', 'jeans_nu.jpg', 'CAT002', NOW(), 'system'),
-- Sách văn học
('PROD012', 'Nhà giả kim', 'Tiểu thuyết của Paulo Coelho', 'Bản dịch tiếng Việt', 'nha_gia_kim.jpg', 'CAT003', NOW(), 'system'),
-- Sách kỹ năng
('PROD013', 'Đắc nhân tâm', 'Sách kỹ năng giao tiếp', 'Bản đặc biệt 2021', 'dac_nhan_tam.jpg', 'CAT003', NOW(), 'system'),
('PROD014', '7 thói quen hiệu quả', 'Sách phát triển bản thân', 'Bản mới nhất', '7_thoi_quen.jpg', 'CAT003', NOW(), 'system'),
-- Đồ dùng nhà bếp
('PROD015', 'Bộ nồi inox 3 chiếc', 'Bộ nồi inox cao cấp', 'Chống dính, dẫn nhiệt tốt', 'bo_noi.jpg', 'CAT004', NOW(), 'system'),
-- Đồ dùng phòng ngủ
('PROD016', 'Chăn ga gối đệm', 'Bộ chăn ga gối cotton', 'Màu xanh ngọc, size 1m6', 'chan_ga_goi.jpg', 'CAT004', NOW(), 'system'),
('PROD017', 'Đèn ngủ LED', 'Đèn ngủ cảm ứng', '16 màu, điều chỉnh độ sáng', 'den_ngu.jpg', 'CAT004', NOW(), 'system'),
-- Dụng cụ gym
('PROD018', 'Tạ tay 5kg', 'Tạ tay thể hình', 'Chất liệu nhựa cao cấp', 'ta_tay.jpg', 'CAT005', NOW(), 'system'),
-- Bóng đá
('PROD019', 'Bóng đá size 5', 'Bóng đá chính hãng Adidas', 'Dành cho thi đấu', 'bong_da.jpg', 'CAT005', NOW(), 'system'),
-- Chăm sóc da
('PROD020', 'Kem dưỡng ẩm', 'Kem dưỡng ẩm ban đêm', 'Dành cho da khô', 'kem_duong.jpg', 'CAT006', NOW(), 'system'),
('PROD021', 'Sữa rửa mặt', 'Sữa rửa mặt dịu nhẹ', 'Cho mọi loại da', 'sua_rua_mat.jpg', 'CAT006', NOW(), 'system'),
-- Trang điểm
('PROD022', 'Son lì', 'Son lì không trôi', 'Bảng màu đa dạng', 'son_li.jpg', 'CAT006', NOW(), 'system'),
-- Đồ chơi giáo dục
('PROD023', 'Xếp hình Lego', 'Bộ xếp hình Lego Classic', '250 chi tiết', 'lego.jpg', 'CAT007', NOW(), 'system'),
-- Đồ chơi vận động
('PROD024', 'Xe đạp trẻ em', 'Xe đạp 3 bánh', 'Dành cho bé 2-4 tuổi', 'xe_dap.jpg', 'CAT007', NOW(), 'system'),
('PROD025', 'Bể bơi phao', 'Bể bơi phao gia đình', 'Đường kính 2m', 'be_boi.jpg', 'CAT007', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_sub_category_product
INSERT INTO client_sub_category_product (product_id, sub_category_id) VALUES
-- Điện thoại
('PROD001', 'SUB001'),
('PROD002', 'SUB001'),
-- Laptop
('PROD003', 'SUB002'),
('PROD004', 'SUB002'),
-- TV
('PROD005', 'SUB003'),
-- Áo nam
('PROD006', 'SUB004'),
('PROD007', 'SUB004'),
-- Áo nữ
('PROD008', 'SUB005'),
('PROD009', 'SUB005'),
-- Quần jeans
('PROD010', 'SUB006'),
('PROD011', 'SUB006'),
-- Sách văn học
('PROD012', 'SUB007'),
-- Sách kỹ năng
('PROD013', 'SUB008'),
('PROD014', 'SUB008'),
-- Đồ dùng nhà bếp
('PROD015', 'SUB009'),
-- Đồ dùng phòng ngủ
('PROD016', 'SUB010'),
('PROD017', 'SUB010'),
-- Dụng cụ gym
('PROD018', 'SUB011'),
-- Bóng đá
('PROD019', 'SUB012'),
-- Chăm sóc da
('PROD020', 'SUB013'),
('PROD021', 'SUB013'),
-- Trang điểm
('PROD022', 'SUB014'),
-- Đồ chơi giáo dục
('PROD023', 'SUB015'),
-- Đồ chơi vận động
('PROD024', 'SUB016'),
('PROD025', 'SUB016');

-- Thêm dữ liệu vào bảng client_products_attributes
INSERT INTO client_products_attributes (type, value, created_at, created_by) VALUES
-- Màu sắc
('color', 'Đen', NOW(), 'system'),
('color', 'Trắng', NOW(), 'system'),
('color', 'Xanh navy', NOW(), 'system'),
('color', 'Đỏ', NOW(), 'system'),
('color', 'Hồng', NOW(), 'system'),
-- Kích thước
('size', 'S', NOW(), 'system'),
('size', 'M', NOW(), 'system'),
('size', 'L', NOW(), 'system'),
('size', 'XL', NOW(), 'system'),
-- Dung lượng
('storage', '128GB', NOW(), 'system'),
('storage', '256GB', NOW(), 'system'),
('storage', '512GB', NOW(), 'system'),
('storage', '1TB', NOW(), 'system'),
-- Loại
('type', 'Cổ tròn', NOW(), 'system'),
('type', 'Cổ tim', NOW(), 'system'),
('type', 'Dài tay', NOW(), 'system'),
('type', 'Cộc tay', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_products_skus
INSERT INTO client_products_skus (product_id, sku, price, quantity, created_at, created_by) VALUES
-- iPhone 13
('PROD001', 'IP13-128-BLACK', 21990000, 50, NOW(), 'system'),
('PROD001', 'IP13-128-WHITE', 21990000, 45, NOW(), 'system'),
('PROD001', 'IP13-256-BLUE', 24990000, 30, NOW(), 'system'),
-- Samsung Galaxy S21
('PROD002', 'SGS21-128-PH', 18990000, 40, NOW(), 'system'),
('PROD002', 'SGS21-256-GR', 20990000, 35, NOW(), 'system'),
-- MacBook Pro M1
('PROD003', 'MBPM1-256', 32990000, 20, NOW(), 'system'),
('PROD003', 'MBPM1-512', 37990000, 15, NOW(), 'system'),
-- Dell XPS 13
('PROD004', 'DXPS13-512', 35990000, 18, NOW(), 'system'),
-- Samsung QLED TV
('PROD005', 'SQLED55', 21990000, 12, NOW(), 'system'),
-- Áo thun nam
('PROD006', 'ATN-BLACK-S', 150000, 100, NOW(), 'system'),
('PROD006', 'ATN-BLACK-M', 150000, 120, NOW(), 'system'),
('PROD006', 'ATN-BLACK-L', 150000, 80, NOW(), 'system'),
-- Áo sơ mi nam
('PROD007', 'ASM-WHITE-S', 250000, 60, NOW(), 'system'),
('PROD007', 'ASM-WHITE-M', 250000, 70, NOW(), 'system'),
-- Áo thun nữ
('PROD008', 'ATN-PINK-S', 180000, 90, NOW(), 'system'),
('PROD008', 'ATN-PINK-M', 180000, 85, NOW(), 'system'),
-- Áo khoác nữ
('PROD009', 'AKN-RED-M', 350000, 40, NOW(), 'system'),
('PROD009', 'AKN-RED-L', 350000, 35, NOW(), 'system'),
-- Quần jeans nam
('PROD010', 'QJN-BLUE-30', 400000, 50, NOW(), 'system'),
('PROD010', 'QJN-BLUE-32', 400000, 45, NOW(), 'system'),
-- Quần jeans nữ
('PROD011', 'QJN-BLACK-27', 450000, 55, NOW(), 'system'),
('PROD011', 'QJN-BLACK-28', 450000, 60, NOW(), 'system'),
-- Nhà giả kim
('PROD012', 'NGK-VN', 80000, 200, NOW(), 'system'),
-- Đắc nhân tâm
('PROD013', 'DNT-SPECIAL', 120000, 150, NOW(), 'system'),
-- 7 thói quen hiệu quả
('PROD014', '7THQ-2021', 150000, 120, NOW(), 'system'),
-- Bộ nồi inox
('PROD015', 'NOI-INOX-3', 1200000, 25, NOW(), 'system'),
-- Chăn ga gối
('PROD016', 'CGG-XANH-1M6', 850000, 30, NOW(), 'system'),
-- Đèn ngủ LED
('PROD017', 'DEN-LED-RGB', 350000, 40, NOW(), 'system'),
-- Tạ tay
('PROD018', 'TA-TAY-5KG', 250000, 50, NOW(), 'system'),
-- Bóng đá
('PROD019', 'BONG-ADIDAS-5', 500000, 35, NOW(), 'system'),
-- Kem dưỡng ẩm
('PROD020', 'KEM-DUONG-DEM', 250000, 80, NOW(), 'system'),
-- Sữa rửa mặt
('PROD021', 'SRM-DIU-NHE', 180000, 90, NOW(), 'system'),
-- Son lì
('PROD022', 'SON-RED-01', 150000, 70, NOW(), 'system'),
('PROD022', 'SON-PINK-02', 150000, 65, NOW(), 'system'),
-- Lego
('PROD023', 'LEGO-250P', 600000, 40, NOW(), 'system'),
-- Xe đạp trẻ em
('PROD024', 'XE-DAP-3B', 1200000, 15, NOW(), 'system'),
-- Bể bơi phao
('PROD025', 'BE-BOI-2M', 850000, 20, NOW(), 'system');

-- Thêm dữ liệu vào bảng client_sku_attributes
INSERT INTO client_sku_attributes (sku_id, attribute_id) VALUES
-- iPhone 13
(1, 1), (1, 10),
(2, 2), (2, 10),
(3, 3), (3, 11),
-- Samsung Galaxy S21
(4, 4), (4, 10),
(5, 5), (5, 11),
-- Áo thun nam
(11, 1), (11, 6),
(12, 1), (12, 7),
(13, 1), (13, 8),
-- Áo sơ mi nam
(14, 2), (14, 6), (14, 15),
(15, 2), (15, 7), (15, 15),
-- Áo thun nữ
(16, 5), (16, 6), (16, 16),
(17, 5), (17, 7), (17, 16),
-- Son lì
(34, 4),
(35, 5);

-- Thêm dữ liệu vào bảng client_wishlist (mỗi user có 1-3 sản phẩm yêu thích)
INSERT INTO client_wishlist (product_id, user_account_id, created_at, created_by) VALUES
('PROD001', 'CU00000001', NOW(), 'system'),
('PROD003', 'CU00000001', NOW(), 'system'),
('PROD006', 'CU00000001', NOW(), 'system'),
('PROD002', 'CU00000002', NOW(), 'system'),
('PROD008', 'CU00000002', NOW(), 'system'),
('PROD005', 'CU00000003', NOW(), 'system'),
('PROD012', 'CU00000004', NOW(), 'system'),
('PROD014', 'CU00000004', NOW(), 'system'),
('PROD019', 'CU00000005', NOW(), 'system'),
('PROD022', 'CU00000006', NOW(), 'system'),
('PROD007', 'CU00000007', NOW(), 'system'),
('PROD009', 'CU00000008', NOW(), 'system'),
('PROD015', 'CU00000009', NOW(), 'system'),
('PROD020', 'CU00000010', NOW(), 'system'),
('PROD021', 'CU00000010', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_cart (mỗi user có 1 giỏ hàng)
INSERT INTO client_cart (user_account_id, total, created_at, created_by) VALUES
('CU00000001', 0, NOW(), 'system'),
('CU00000002', 0, NOW(), 'system'),
('CU00000003', 0, NOW(), 'system'),
('CU00000004', 0, NOW(), 'system'),
('CU00000005', 0, NOW(), 'system'),
('CU00000006', 0, NOW(), 'system'),
('CU00000007', 0, NOW(), 'system'),
('CU00000008', 0, NOW(), 'system'),
('CU00000009', 0, NOW(), 'system'),
('CU00000010', 0, NOW(), 'system');

-- Thêm dữ liệu vào bảng client_cart_item (mỗi giỏ hàng có 1-3 sản phẩm)
INSERT INTO client_cart_item (cart_id, product_id, product_sku_id, quantity, created_at, created_by) VALUES
(1, 'PROD001', 1, 1, NOW(), 'system'),
(1, 'PROD006', 11, 2, NOW(), 'system'),
(2, 'PROD002', 4, 1, NOW(), 'system'),
(3, 'PROD005', 9, 1, NOW(), 'system'),
(4, 'PROD012', 26, 1, NOW(), 'system'),
(4, 'PROD013', 27, 1, NOW(), 'system'),
(5, 'PROD019', 32, 1, NOW(), 'system'),
(6, 'PROD022', 34, 2, NOW(), 'system'),
(7, 'PROD007', 14, 1, NOW(), 'system'),
(8, 'PROD009', 17, 1, NOW(), 'system'),
(9, 'PROD015', 28, 1, NOW(), 'system'),
(10, 'PROD020', 33, 1, NOW(), 'system'),
(10, 'PROD021', 34, 1, NOW(), 'system');

-- Cập nhật tổng tiền cho giỏ hàng
UPDATE client_cart c
SET total = (
    SELECT SUM(s.price * ci.quantity)
    FROM client_cart_item ci
    JOIN client_products_skus s ON ci.product_sku_id = s.id
    WHERE ci.cart_id = c.id
)
WHERE id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- Thêm dữ liệu vào bảng master_payment_status
INSERT INTO master_payment_status (code, description, created_at, created_by) VALUES
('PE', 'Chờ thanh toán', NOW(), 'system'),
('PA', 'Đã thanh toán', NOW(), 'system'),
('FA', 'Thanh toán thất bại', NOW(), 'system'),
('RE', 'Đã hoàn tiền', NOW(), 'system');

-- Thêm dữ liệu vào bảng client_order_details (mỗi user có 1-3 đơn hàng)
INSERT INTO client_order_details (user_account_id, total, status, created_at, created_by) VALUES
('CU00000001', 22290000, 'PE', NOW(), 'system'),
('CU00000002', 18990000, 'PA', NOW(), 'system'),
('CU00000003', 21990000, 'PA', NOW(), 'system'),
('CU00000004', 270000, 'PE', NOW(), 'system'),
('CU00000005', 500000, 'PA', NOW(), 'system'),
('CU00000006', 300000, 'PE', NOW(), 'system'),
('CU00000007', 250000, 'PA', NOW(), 'system'),
('CU00000008', 350000, 'PE', NOW(), 'system'),
('CU00000009', 1200000, 'PA', NOW(), 'system'),
('CU00000010', 430000, 'PA', NOW(), 'system'),
('CU00000001', 150000, 'PA', DATE_SUB(NOW(), INTERVAL 1 MONTH), 'system'),
('CU00000002', 400000, 'PA', DATE_SUB(NOW(), INTERVAL 2 MONTH), 'system'),
('CU00000003', 850000, 'PA', DATE_SUB(NOW(), INTERVAL 3 WEEK), 'system');

-- Thêm dữ liệu vào bảng client_order_item
INSERT INTO client_order_item (order_id, product_id, product_sku_id, quantity, created_at, created_by) VALUES
-- Đơn hàng 1
(1, 'PROD001', 1, 1, NOW(), 'system'),
-- Đơn hàng 2
(2, 'PROD002', 4, 1, NOW(), 'system'),
-- Đơn hàng 3
(3, 'PROD005', 9, 1, NOW(), 'system'),
-- Đơn hàng 4
(4, 'PROD012', 26, 1, NOW(), 'system'),
(4, 'PROD013', 27, 1, NOW(), 'system'),
-- Đơn hàng 5
(5, 'PROD019', 32, 1, NOW(), 'system'),
-- Đơn hàng 6
(6, 'PROD022', 34, 2, NOW(), 'system'),
-- Đơn hàng 7
(7, 'PROD007', 14, 1, NOW(), 'system'),
-- Đơn hàng 8
(8, 'PROD009', 17, 1, NOW(), 'system'),
-- Đơn hàng 9
(9, 'PROD015', 28, 1, NOW(), 'system'),
-- Đơn hàng 10
(10, 'PROD020', 33, 1, NOW(), 'system'),
(10, 'PROD021', 34, 1, NOW(), 'system'),
-- Đơn hàng 11
(11, 'PROD006', 11, 1, DATE_SUB(NOW(), INTERVAL 1 MONTH), 'system'),
-- Đơn hàng 12
(12, 'PROD010', 21, 1, DATE_SUB(NOW(), INTERVAL 2 MONTH), 'system'),
-- Đơn hàng 13
(13, 'PROD016', 29, 1, DATE_SUB(NOW(), INTERVAL 3 WEEK), 'system');

-- Thêm dữ liệu vào bảng client_payment_details
INSERT INTO client_payment_details (order_id, amount, provider, status, created_at, created_by) VALUES
(1, 22290000, 'VNPAY', 'PE', NOW(), 'system'),
(2, 18990000, 'MOMO', 'PA', NOW(), 'system'),
(3, 21990000, 'VNPAY', 'PA', NOW(), 'system'),
(4, 270000, 'CASH', 'PE', NOW(), 'system'),
(5, 500000, 'MOMO', 'PA', NOW(), 'system'),
(6, 300000, 'VNPAY', 'PE', NOW(), 'system'),
(7, 250000, 'ZALOPAY', 'PA', NOW(), 'system'),
(8, 350000, 'CASH', 'PE', NOW(), 'system'),
(9, 1200000, 'VNPAY', 'PA', NOW(), 'system'),
(10, 430000, 'MOMO', 'PA', NOW(), 'system'),
(11, 150000, 'VNPAY', 'PA', DATE_SUB(NOW(), INTERVAL 1 MONTH), 'system'),
(12, 400000, 'MOMO', 'PA', DATE_SUB(NOW(), INTERVAL 2 MONTH), 'system'),
(13, 850000, 'VNPAY', 'PA', DATE_SUB(NOW(), INTERVAL 3 WEEK), 'system');