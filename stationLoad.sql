SELECT t.from_station_name, s.dpcapacity, COUNT(1) AS tripCount
FROM trips t
LEFT JOIN stations s ON t.from_station_id = s.id
GROUP BY t.from_station_name, s.dpcapacity
ORDER BY tripCount DESC;