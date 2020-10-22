USE mavenfuzzyfactory;

SELECT
	pageview_url,
    COUNT(DISTINCT website_pageview_id) as pageviews
FROM website_pageviews
WHERE website_pageview_id < 1000
GROUP BY pageview_url
ORDER BY pageviews DESC;