CREATE VIEW performance_metrics AS
SELECT 
    product_id,
    channel_id,
    date,

    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(cost) AS cost,
    SUM(revenue) AS revenue,
    SUM(conversions) AS conversions,

    (SUM(clicks)/NULLIF(SUM(impressions),0))*100 AS ctr,
    (SUM(cost)/NULLIF(SUM(impressions),0))*1000 AS cpm,
    (SUM(revenue)/NULLIF(SUM(cost),0)) AS roas,
    (SUM(conversions)/NULLIF(SUM(clicks),0))*100 AS conversion_rate

FROM performance
GROUP BY product_id, channel_id, date;