CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         price DECIMAL(10, 2)
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', 700.00), 
         (2, 'Laptop', 1200.00), 
         (3, 'T-shirt', 20.00);

SELECT * FROM PRODUCTS

--APPROACH 1
SELECT PRODUCT_NAME,PRICE
FROM PRODUCTS
ORDER BY PRICE DESC
LIMIT 1


--APPROACH 2 -- AGGREGATE FUNCTION
	
SELECT product_name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);
