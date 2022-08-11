USE classicmodels;


-- Subqueries with the SELECT Statement

SELECT 
    *
FROM
    orders
WHERE
    customerNumber IN (SELECT 
            customerNumber
        FROM
            customers
        WHERE
            creditLimit > 45000);




