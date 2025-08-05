WITH maior_indicador AS (
SELECT indicator_name,SUM(debt) AS total_divida FROM international_debt
GROUP BY indicator_name
ORDER BY total_divida DESC
LIMIT 10)

SELECT country_name,m.indicator_name,SUM(i.debt) AS divida_por_pais FROM international_debt i
JOIN maior_indicador m ON m.indicator_name = i.indicator_name
GROUP BY country_name,m.indicator_name,m.total_divida
ORDER BY divida_por_pais DESC
LIMIT 10

