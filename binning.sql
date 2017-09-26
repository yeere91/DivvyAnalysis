SELECT 
COUNT (CASE WHEN tripduration/(60) >= 0 AND tripduration/(60) <= 10 THEN 1 END) AS "0-10min",
COUNT (CASE WHEN tripduration/(60) > 10 AND tripduration/(60) <= 20 THEN 1 END) AS "10-20min",
COUNT (CASE WHEN tripduration/(60) > 20 AND tripduration/(60) <= 30 THEN 1 END) AS "20-30min",
COUNT (CASE WHEN tripduration/(60) > 30 AND tripduration/(60) <= 60 THEN 1 END) AS "30-60min",
COUNT (CASE WHEN tripduration/(60) > 60 AND tripduration/(60) <= 120 THEN 1 END) AS "1-2hr",
COUNT (CASE WHEN tripduration/(60) > 120 AND tripduration/(60) <= (60*12) THEN 1 END) AS "2-12hr",
COUNT (CASE WHEN tripduration/(60) > (60*12) AND tripduration/(60) <= (60*24) THEN 1 END) AS "12-24hr"
FROM trips