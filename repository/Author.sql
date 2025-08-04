-- Viết stored procedure để phân quyền cho user

-- DELIMITER //
-- CREATE PROCEDURE sp_assign_role_user(
-- 	IN p_user_id VARCHAR(10),
--     IN p_role_id INT,
--     IN p_update_by VARCHAR(10)
-- )
-- BEGIN	
-- 	UPDATE devphongnhl.client_user_account
-- SET
-- role_id = p_role_id,
-- updated_at = NOW(),
-- updated_by = p_update_by
-- WHERE id = p_user_id;

-- END //
-- DELIMITER ;

-- CALL sp_assign_role_user('CU00000001', 1, 'CU00000003');

-- SELECT cua.id, r.role_type
-- FROM client_user_account cua
-- INNER JOIN master_role r ON cua.role_id = r.id
-- WHERE cua.id = 'CU00000001' 

-- Viết stored procedure kiểm tra quyền của user

DELIMITER //
CREATE PROCEDURE sp_check_user_permission(
    IN p_user_id VARCHAR(10),
    IN p_required_role VARCHAR(10),
    OUT p_has_permission BOOLEAN
)
BEGIN
    DECLARE user_role VARCHAR(10);
    
    SELECT r.role_type INTO user_role
    FROM client_user_account u
    JOIN master_role r ON u.role_id = r.id
    WHERE u.id = p_user_id;
    
    SET p_has_permission = (user_role = p_required_role);
END //
DELIMITER ;

-- Viết trigger tự động ghi log khi có thay đổi quyền user
-- CREATE TABLE update_role_history (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id VARCHAR(10),
--     old_role_id INT,
--     new_role_id INT,
--     changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     changed_by VARCHAR(10)
-- );

-- DELIMITER //
-- CREATE TRIGGER trg_after_user_role_change
-- AFTER UPDATE ON client_user_account
-- FOR EACH ROW
-- BEGIN
--     IF OLD.role_id != NEW.role_id THEN
--         INSERT INTO update_role_history (user_id, old_role_id, new_role_id, changed_by)
--         VALUES (NEW.id, OLD.role_id, NEW.role_id, NEW.updated_by);
--     END IF;
-- END //
-- DELIMITER ;

-- DROP TRIGGER trg_after_user_role_change;