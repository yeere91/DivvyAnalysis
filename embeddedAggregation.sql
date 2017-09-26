SELECT to_date(start_time, 'MM/DD/YYYY HH24:MI:SS') AS myDate, COUNT(*)
FROM trips
GROUP BY myDate
HAVING COUNT(*) = 
	(SELECT MAX(c) FROM
     	(SELECT COUNT(1) AS c
         FROM trips
         WHERE to_date(start_time, 'MM/DD/YYYY') < to_date('02/07/2017', 'MM/DD/YYYY')
         GROUP BY to_date(start_time, 'MM/DD/YYYY HH24:MI:SS')
         ) b
     )

SELECT to_date(start_time, 'MM/DD/YYYY HH24:MI:SS') AS myDate, COUNT(*) AS myCount
FROM trips
GROUP BY myDate
ORDER BY myCount DESC
LIMIT 1;