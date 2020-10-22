USE mavenfuzzyfactory;

SELECT
	pageview_url,
	COUNT(DISTINCT website_session_id) AS pageviews
FROM website_pageviews
WHERE created_at < '2012-06-09'
GROUP BY pageview_url
ORDER BY pageviews DESC;