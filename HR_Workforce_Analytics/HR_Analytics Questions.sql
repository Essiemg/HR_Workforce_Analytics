-- 1. What is the current headcount of the organization? ✅✔
SELECT * FROM human_resources;

SELECT COUNT(*) FROM human_resources
WHERE termdate IS NULL;

-- 2. How has the company's workforce grown over time? 6.5/10
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS hires
FROM human_resources
GROUP BY YEAR(hire_date)
ORDER BY hires DESC;

-- 3. Which departments employ the most people? ✅✔
SELECT department, COUNT(*) AS no_of_employees
FROM human_resources
WHERE termdate IS NULL
GROUP BY department
ORDER BY no_of_employees DESC;


-- 4. What is the gender distribution across departments? 👎 I forgot the department
SELECT department, gender, COUNT(*) AS no_of_employees
FROM human_resources
WHERE termdate IS NULL
GROUP BY department, gender
ORDER BY department;

-- 5. What is the racial diversity of the workforce? ✅
SELECT race, COUNT(*) AS no_of_employees
FROM human_resources
WHERE termdate IS NULL
GROUP BY race
ORDER BY no_of_employees DESC;

-- 6. Which departments have the highest employee turnover?👎   the turnover rate was not calculated
SELECT
    department,
 
   -- SUM(CASE WHEN termdate IS NOT NULL THEN 1 ELSE 0
        -- END) AS employees_left,
    ROUND(SUM(CASE WHEN termdate IS NOT NULL THEN 1 ELSE 0
            END) * 100.0 / COUNT(*), 2 ) AS turnover_rate
FROM human_resources
GROUP BY department
ORDER BY turnover_rate DESC;


-- 7. How long do employees stay before leaving?/average tenure 7/10 I needed to find the average yeares not number of days

SELECT * FROM human_resources;

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, hire_date, termdate)), 2) AS average_years
FROM human_resources
WHERE termdate IS NOT NULL;

-- 8. Which job titles experience the highest employee turnover? ✅
SELECT
    jobtitle,
    -- COUNT(*) AS total_employees,
  --  SUM(CASE WHEN termdate IS NOT NULL THEN 1 ELSE 0 END) AS terminated_employees,
    ROUND(
        SUM(CASE
                WHEN termdate IS NOT NULL THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS turnover_rate
FROM human_resources
GROUP BY jobtitle
ORDER BY turnover_rate DESC;

-- 9. Which departments hire the most employees? ✅
SELECT department, COUNT( emp_id) AS no_of_emp
FROM human_resources
WHERE birthdate < current_date() 
GROUP BY department
ORDER BY no_of_emp DESC;


-- 10. Which years had the highest hiring activity?✅
SELECT YEAR(hire_date) AS hire_year, COUNT(emp_id) AS employees_hired
FROM human_resources
WHERE birthdate < current_date()
GROUP BY YEAR(hire_date)
ORDER BY employees_hired DESC;

-- 11. Which states have the highest employee count?✅

SELECT location_state, COUNT( emp_id) AS employee_count
FROM human_resources
WHERE birthdate < current_date() AND termdate IS NULL
GROUP BY location_state
ORDER BY employee_count DESC;

-- 12. Which locations have the highest employee turnover?✅
SELECT
    location,
    -- COUNT(*) AS total_employees,
    -- SUM(CASE
     --        WHEN termdate IS NOT NULL THEN 1
       --     ELSE 0
       -- END) AS terminated_employees,
    ROUND(
        SUM(CASE
                WHEN termdate IS NOT NULL THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS turnover_rate
FROM human_resources
GROUP BY location
ORDER BY turnover_rate DESC;


-- 13. What is the age distribution of employees? ✅✅
SELECT * FROM human_resources;
SELECT COUNT(*)
FROM human_resources
WHERE birthdate > current_date();

SELECT birthdate  FROM human_resources
WHERE birthdate > current_date();

ALTER TABLE human_resources
DROP COLUMN age;

ALTER TABLE human_resources
ADD COLUMN age_group INT ;

ALTER TABLE human_resources
MODIFY age_group VARCHAR(10);

ALTER TABLE human_resources
ADD COLUMN age INT ;

-- age column
UPDATE human_resources
SET age = timestampdiff(YEAR, birthdate, CURDATE());

DESCRIBE human_resources;

-- create age groups.alter...I switched the greater/less thanwith between with is more efficient and avoinds excluding certain numbers.
UPDATE human_resources
 SET age_group = 
CASE 
	WHEN age BETWEEN 18 AND 24 THEN '18-24'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    WHEN age BETWEEN 45 AND 54 THEN '45-54'
    WHEN age BETWEEN 55 AND 64 THEN '55-64'
    WHEN age >= 65 THEN '65+'
    ELSE NULL
END ;

SELECT age_group, COUNT(emp_id) AS no_of_employees
FROM human_resources
WHERE termdate IS NULL AND age_group > 0
GROUP BY age_group
ORDER BY no_of_employees DESC;

-- 14. Which age groups have the highest employee turnover? ✅

SELECT
    age_group,
    -- COUNT(*) AS total_employees,
    -- SUM(CASE
     --        WHEN termdate IS NOT NULL THEN 1
       --      ELSE 0
       -- END) AS terminated_employees,
    ROUND(
        SUM(CASE
                WHEN termdate IS NOT NULL THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS turnover_rate
FROM human_resources
GROUP BY age_group
ORDER BY turnover_rate DESC;

-- 15. What proportion of employees work remotely versus at headquarters? turns out proportion means percentage.
SELECT
    location,
    COUNT(*) AS employees,
    ROUND(COUNT(*) * 100.0 / (
        SELECT COUNT(*)
        FROM human_resources
        WHERE termdate IS NULL
    ), 2) AS percentage
FROM human_resources
WHERE termdate IS NULL
GROUP BY location;




