CREATE TABLE sales (sale_id INT PRIMARY KEY, company_name VARCHAR(100), sale_date DATE, amount DECIMAL(12,2)); 
INSERT INTO sales VALUES 
	(1, 'TATA Motors', '2023-01-10', 50000.00),
	(2, 'Infosys', '2023-03-22', 30000.00),
	(3, 'TATA Motors', '2023-05-15', 70000.00);

SELECT * FROM SALES

/*
Calculate the total revenue generated by TATA Motors in 2023 from the sales table.
*/


SELECT COMPANY_NAME,
       SUM(AMOUNT) AS TOTAL_REVENUE
FROM SALES
WHERE EXTRACT(YEAR FROM SALE_DATE)=2023
AND COMPANY_NAME= 'TATA Motors'
GROUP BY 1