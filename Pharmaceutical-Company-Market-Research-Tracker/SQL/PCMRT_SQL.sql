
-- USE PCMRT;


SELECT* FROM pcmrt_md;


-- TOTAL NUMBER OF PHARMA COMPANIES

SELECT COUNT(*) AS total_companies FROM pcmrt_md;


-- TOP 10 COMPANIES BY REVENUE

SELECT company_name,revenue FROM pcmrt_md 
ORDER BY revenue 
DESC LIMIT 10;


-- TOP 10 COMPANIES BY EMPLOYEES

SELECT company_name,employees FROM pcmrt_md 
ORDER BY employees 
DESC LIMIT 10;


-- COMPANIES BY COUNTRY

SELECT country, COUNT(*) AS company_count FROM pcmrt_md
GROUP BY country
ORDER BY company_count DESC;



-- AVERAGE REVENUE BY COUNTRY

SELECT country, ROUND(AVG(revenue),2) AS avg_revenue FROM pcmrt_md
GROUP BY country
ORDER BY avg_revenue DESC;


-- AVERAGE EMPLOYEES BY COUNTRY

SELECT country, ROUND(AVG(employees),2) AS avg_employees FROM pcmrt_md
GROUP BY country
ORDER BY avg_employees DESC;


-- COMPANIES WITH REVENUE ABOVE 10 BILLION

SELECT company_name, revenue FROM pcmrt_md
WHERE revenue > 10000000000
ORDER BY revenue DESC;


-- TOP THERAPEUTIC AREAS

SELECT therapeutic_area, COUNT(*) AS company_count FROM therapeutic_area_master
GROUP BY therapeutic_area
ORDER BY company_count DESC;



-- TOP 10 MOST COMMON THERAPEUTIC AREAS

SELECT therapeutic_area, COUNT(*) AS company_count FROM therapeutic_area_master
GROUP BY therapeutic_area
ORDER BY company_count DESC
LIMIT 10;


-- NUMBER OF THERAPEUTIC AREAS COVERED BY EACH COMPANY

SELECT company_name, COUNT(*) AS therapeutic_area_count FROM therapeutic_area_master
GROUP BY company_name
ORDER BY therapeutic_area_count DESC;



-- COUNTRY-WISE TOTAL REVENUE

SELECT country, SUM(revenue) AS total_revenue FROM pcmrt_md
GROUP BY country
ORDER BY total_revenue DESC;


-- COUNTRY-WISE TOTAL EMPLOYEES

SELECT country, SUM(employees) AS total_employees FROM pcmrt_md
GROUP BY country
ORDER BY total_employees DESC;



-- REVENUE PER EMPLOYEE

SELECT company_name, ROUND(revenue / employees,2) AS revenue_per_employee FROM pcmrt_md
WHERE employees > 0
ORDER BY revenue_per_employee DESC;



-- CHECK FOR DUPLICATE COMPANIES

SELECT company_name, COUNT(*) AS duplicate_count FROM pcmrt_md
GROUP BY company_name
HAVING COUNT(*) > 1;



-- CHECK MISSING REVENUE

SELECT* FROM pcmrt_md 
WHERE revenue IS NULL;


-- CHECK MISSING EMPLOYEES

SELECT* FROM pcmrt_md
WHERE employees IS NULL;


-- COUNTRY RANKING BY NUMBER OF COMPANIES

SELECT country, COUNT(*) AS company_count FROM pcmrt_md
GROUP BY country
ORDER BY company_count DESC;