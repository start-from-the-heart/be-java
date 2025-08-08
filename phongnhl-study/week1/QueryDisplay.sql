-- 1. Sản phẩm theo category
SELECT p.* 
FROM client_products p
WHERE p.category_id = 'CAT001'; -- Thay bằng category ID cần tìm

-- 2. Sản phẩm theo subcategory
SELECT scp.sub_category_id, p.*
FROM client_products p
JOIN client_sub_category_product scp ON p.id = scp.product_id
WHERE scp.sub_category_id = 'SUB001'; -- Thay bằng subcategory ID cần tìm

-- 3. Sản phẩm với số lượng SKU có sẵn
SELECT 
    p.id,
    p.product_name,
    cpa.type,
    cpa.value,
    COUNT(s.id) AS sku_count,
    SUM(s.quantity) AS total_quantity
FROM client_products p
LEFT JOIN client_products_skus s ON p.id = s.product_id
LEFT JOIN client_sku_attributes csa ON s.id =  csa.sku_id
LEFT JOIN client_products_attributes cpa ON csa.attribute_id = cpa.id
GROUP BY p.id, p.product_name, cpa.type, cpa.value;

-- 4. Tìm kiếm sản phẩm theo tên và category
SELECT p.*
FROM client_products p
WHERE p.product_name LIKE '%áo%' -- Từ khóa tìm kiếm
AND (p.category_id = 'CAT002' OR 'CAT002' = ''); -- Category ID (để trống nếu không lọc)

 -- Bài 1: Tạo stored procedure đăng ký người dùng mới
 

