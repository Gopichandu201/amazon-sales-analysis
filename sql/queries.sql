CREATE DATABASE amazon_analysis;

 USE amazon_analysis;

SELECT * FROM amazon_products LIMIT 10;


 --- TOTAL NUMBEROFPRODUCTS 
SELECT COUNT(*) AS total_products
FROM amazon_products;

---AVERAGE PRODUCT RATING 
SELECT AVG(product_rating) AS avg_rating
FROM amazon_products;

---TOP 10 HIGHEST RATED PRODUCTS
SELECT product_title, product_rating
FROM amazon_products
ORDER BY product_rating DESC
LIMIT 10;

--- Top 10 Most Reviewed Products
SELECT product_title, total_reviews
FROM amazon_products
ORDER BY total_reviews DESC
LIMIT 10;

---Category Wise Product Count
SELECT product_category, COUNT(*) AS total_products
FROM amazon_products
GROUP BY product_category
ORDER BY total_products DESC;

---Average Rating by Category
SELECT product_category,
AVG(product_rating) AS avg_rating
FROM amazon_products
GROUP BY product_category
ORDER BY avg_rating DESC;

---Total Purchases by Category
SELECT product_category,
SUM(purchased_last_month) AS total_sales
FROM amazon_products
GROUP BY product_category
ORDER BY total_sales DESC;

---Discount Impact on Sales
SELECT discount_percentage,
AVG(purchased_last_month) AS avg_sales
FROM amazon_products
GROUP BY discount_percentage
ORDER BY discount_percentage;

---Products with Highest Discounts
SELECT product_title, discount_percentage
FROM amazon_products
ORDER BY discount_percentage DESC
LIMIT 10;

---High Rating Products
SELECT product_title, product_rating
FROM amazon_products
WHERE product_rating >= 4.5;

---Low Rating Products
SELECT product_title, product_rating
FROM amazon_products
WHERE product_rating < 3;



