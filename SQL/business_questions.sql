Lowest ROAS

SELECT channel_id, SUM(revenue)/SUM(cost) AS roas
FROM performance
GROUP BY channel_id
ORDER BY roas ASC
LIMIT 1;

Highest CPA

SELECT channel_id, SUM(cost)/SUM(conversions) AS cpa
FROM performance
GROUP BY channel_id
ORDER BY cpa DESC
LIMIT 1;

Best CTR

SELECT channel_id,
(SUM(clicks)/SUM(impressions))*100 AS ctr
FROM performance
GROUP BY channel_id
ORDER BY ctr DESC
LIMIT 1;

Product-Level Marketing Performance Summary (CTR, CPM, ROAS & Conversion Analysis)

select
 b.product_name,
 sum(a.impressions) as total_empressions,
 sum(a.cost)/sum(a.impressions)*1000 as CPM,
 sum(a.clicks) as total_clicks,
 sum(a.clicks)/sum(a.impressions)*100 as CTR,
 sum(a.cost) as total_cost,
 sum(a.conversions) as total_conversions,
 sum(a.revenue) as total_revenue, 
 sum(a.revenue)/sum(a.cost) as ROAS,
 sum(a.conversions)/sum(a.clicks) *100 as Conversion_rate 
 
 from performance as a join product as b on a.product_id = b.product_id group by product_name order by ROAS desc; 