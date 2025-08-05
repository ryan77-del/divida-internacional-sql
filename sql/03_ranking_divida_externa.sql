SELECT 
	country_name,
	SUM(debt) AS total_divida_externa,
	DENSE_RANK() OVER( ORDER BY SUM(debt) desc) AS ranking_dividas
FROM 
	international_debt
WHERE 
	indicator_name LIKE '%on external debt%'
GROUP BY 
	country_name
LIMIT 10
