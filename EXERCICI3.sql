SELECT COUNT(*)
FROM Flights;

SELECT origin, AVG(ArrDelay), AVG(DepDelay)
FROM Flights
GROUP BY origin ASC;

SELECT origin, colYear, colMonth, ArrDelay
FROM Flights
ORDER BY origin ASC, colYear ASC, colMonth ASC;

SELECT City, IATA, colYear, colMonth, ArrDelay
FROM Flights
JOIN USAirports
ON Flights.origin = USAirports.IATA
ORDER BY City ASC, colYear ASC, colMonth ASC;

SELECT UniqueCarrier, colYear, colMonth, count(*) as cancelaciones_acumuladas
FROM Flights
WHERE Cancelled > 0
GROUP BY UniqueCarrier, colYear
ORDER BY cancelaciones_acumuladas DESC;

SELECT TailNum,
SUM(Distance)
FROM Flights
WHERE TailNum IS NOT NULL
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;









