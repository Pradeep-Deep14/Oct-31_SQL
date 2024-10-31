CREATE TABLE products (
         product_id INT, 
         product_name VARCHAR(100)
     );
     CREATE TABLE purchases (
         purchase_id INT, 
         product_id INT
     );
     INSERT INTO products VALUES 
         (1, 'Laptop'), 
         (2, 'Smartphone'), 
         (3, 'Headphones'), 
         (4, 'Tablet');
     INSERT INTO purchases VALUES 
         (1, 1), 
         (2, 1), 
         (3, 2), 
         (4, 1), 
         (5, 3), 
         (6, 1), 
         (7, 4), 
         (8, 1), 
         (9, 1), 
         (10, 1), 
         (11, 1), 
         (12, 2), 
         (13, 3);


SELECT * FROM PRODUCTS
SELECT * FROM PURCHASES

/*
Get the list of products that have been purchased more than 10 times, along with the total quantity sold.
*/

SELECT P.PRODUCT_ID,
       P.PRODUCT_NAME,
	   COUNT(P1.*) AS TOTAL_COUNT 
FROM PRODUCTS P
JOIN PURCHASES P1
ON P.PRODUCT_ID=P1.PRODUCT_ID
GROUP BY 1,2
HAVING  COUNT(P1.*) > 10