Channel Performance 

SELECT 
    channel_id,
    SUM(revenue)/SUM(cost) AS roas
FROM performance
GROUP BY channel_id;

Product Performance
SELECT 
    product_id,
    SUM(revenue) AS revenue
FROM performance
GROUP BY product_id
ORDER BY revenue DESC;
📄 8. step_7_time_series.sql ⏳

-- Daily Performance
SELECT 
    date,
    SUM(revenue) AS revenue,
    SUM(cost) AS cost
FROM performance
GROUP BY date
ORDER BY date;

-- Growth Analysis
SELECT 
    date,
    SUM(revenue),
    LAG(SUM(revenue)) OVER (ORDER BY date)
FROM performance
GROUP BY date;