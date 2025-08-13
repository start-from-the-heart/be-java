-- Tạo view hiển thị doanh thu theo ngày/tuần/tháng

DROP VIEW IF EXISTS vw_daily_revenue;
CREATE VIEW vw_daily_revenue AS
select
	DATE(od.created_at) AS sale_date,
    SUM(od.total) AS total_revenue,
    COUNT(od.id) AS order_count
from client_order_details AS od
where od.status IN ('PA', 'PE')
GROUP BY sale_date;

CREATE INDEX idx_order_status_created_at ON client_order_details(status, created_at);

SELECT * FROM vw_daily_revenue;

-- Tạo view hiển thị top 5 sản phẩm bán chạy nhất

DROP VIEW IF EXISTS top_5_product;
CREATE VIEW top_5_product AS
select p.id, p.product_name, count(oi.product_id) AS sale_count , sum(oi.quantity) AS total_quantity
from client_order_item AS oi
inner join client_products AS p ON  oi.product_id = p.id
group by p.id, p.product_name
order by sale_count DESC
limit 5;

select * FROM top_5_product;

-- Tạo view hiển thị số lượng đơn hàng theo trạng thái thanh toán

DROP VIEW IF EXISTS vw_payment_by_status;
CREATE VIEW vw_payment_by_status AS
SELECT ps.description, count(od.id), SUM(od.total)
FROM client_order_details AS od
inner join master_payment_status AS ps ON od.status = ps.code
GROUP BY ps.description, od.status;

select * FROM vw_payment_by_status;

-- Viết hàm tính tổng doanh thu trong một khoảng thời gian

DELIMITER //
DROP FUNCTION IF EXISTS calculate_revenue;
CREATE FUNCTION calculate_revenue(startDate DATE, endDate DATE)
RETURNS DECIMAL(12,2)
DETERMINISTIC -- hàm trả lại đúng giá trị nếu được cung cấp các đối số đúng
BEGIN
	DECLARE totalRevenue DECIMAL(12,2);

    SELECT SUM(od.total) INTO totalRevenue
    FROM client_order_details AS od
    WHERE od.status IN ('PA', 'RE')
    AND DATE(od.created_at) BETWEEN startDate AND endDate;

    RETURN IFNULL(totalRevenue, 0);
END //
DELIMITER ;

select calculate_revenue('2025-07-15','2025-07-31')



