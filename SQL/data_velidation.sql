-- NULL checks
SELECT * FROM product WHERE product_id IS NULL;
SELECT * FROM platform WHERE channel_id IS NULL;
SELECT * FROM performance WHERE product_id IS NULL OR channel_id IS NULL;

-- Duplicate checks
SELECT product_id, COUNT(*) 
FROM product GROUP BY product_id HAVING COUNT(*) > 1;

SELECT channel_id, COUNT(*) 
FROM platform GROUP BY channel_id HAVING COUNT(*) > 1;

SELECT product_id, channel_id, date, COUNT(*)
FROM performance
GROUP BY product_id, channel_id, date
HAVING COUNT(*) > 1;

-- Logical checks
SELECT * FROM performance WHERE clicks > impressions;
SELECT * FROM performance WHERE conversions > clicks;

-- Negative values
SELECT * FROM performance 
WHERE cost < 0 OR revenue < 0;