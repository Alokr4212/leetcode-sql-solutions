# Write your MySQL query statement below
Select p.product_id, ROUND(IFNULL(SUM(p.price * u.units) / SUM(u.units), 0), 2) as average_price
From Prices p
LEFT JOIN UnitsSold as u ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
Group by p.product_id;
