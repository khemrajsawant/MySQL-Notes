DELIMITER ;
DROP PROCEDURE IF EXISTS select_all_columns;
USE  customers_and_orders;

DELIMITER $$

CREATE PROCEDURE select_all_columns(IN table_name varchar(20))
BEGIN
    SET @sql = CONCAT('SELECT * FROM ',table_name,';'); 
    PREPARE s1 from @sql;
    EXECUTE s1 ;
END $$


DELIMITER ;

CALL select_all_columns("orders");
CALL select_all_columns("customers");