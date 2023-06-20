SELECT Tags.TagName, year(Posts.CreationDate) AS year, month(Posts.CreationDate) AS month, count(Tags.TagName) AS tagcount 
FROM Tags 
INNER JOIN Posttags ON Tags.Id = Posttags.TagId
INNER JOIN Posts ON Posts.Id = Posttags.PostId
WHERE Tags.TagName = 'time-series'
GROUP BY year(Posts.CreationDate), month(Posts.CreationDate), Tags.TagName
ORDER BY year(Posts.CreationDate), month(Posts.CreationDate)