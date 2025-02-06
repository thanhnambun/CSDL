use ss5 ;

SELECT category, MAX(price) AS max_price
FROM products
GROUP BY category;

SELECT*
FROM products
limit 2 offset 2;

SELECT *
FROM products
where category = 'Electronics'
order by price asc;

SELECT product_name, category, price, stock_quantity
FROM products
WHERE category = 'Clothing'
ORDER BY price ASC
LIMIT 1;