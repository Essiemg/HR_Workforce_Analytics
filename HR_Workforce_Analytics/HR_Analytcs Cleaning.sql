SELECT * FROM human_resources;
-- DATA CLEANING
-- Change the first column name 
ALTER TABLE human_resources
RENAME COLUMN employee_id  TO emp_id;

-- change the data type for birthdate column and change the format.
UPDATE human_resources
SET birthdate = CASE
    WHEN birthdate LIKE '%/%'
        THEN STR_TO_DATE(birthdate, '%m/%d/%Y')
    WHEN birthdate LIKE '%-%'
        THEN STR_TO_DATE(birthdate, '%Y-%m-%d')
END;

ALTER TABLE human_resources
MODIFY COLUMN birthdate DATE;

-- change the data type for hiredate column and change the format.
UPDATE human_resources
SET hire_date = CASE
    WHEN hire_date LIKE '%/%'
        THEN STR_TO_DATE(hire_date, '%m/%d/%Y')
    WHEN hire_date LIKE '%-%'
        THEN STR_TO_DATE(hire_date, '%m-%d-%y')
END;

ALTER TABLE human_resources
MODIFY COLUMN hire_date DATE;



-- combine the first and last name to one name.alter
ALTER TABLE human_resources
ADD COLUMN emp_name VARCHAR(200) NULL;

UPDATE human_resources
SET emp_name = CONCAT( first_name , ' ' , last_name);

ALTER TABLE human_resources
DROP COLUMN first_name,
DROP COLUMN last_name;

ALTER TABLE human_resources
MODIFY COLUMN emp_name VARCHAR(200) AFTER emp_id;

-- fill the blank termdate with data
-- leave as is for now.

DESCRIBE human_resources;

-- AGE COLUMN
SELECT *  FROM human_resources;

ALTER TABLE human_resources
ADD COLUMN age INT ;

UPDATE human_resources
SET age = curdate() - birthdate;

-- date issue fixes
SELECT
    MIN(birthdate) AS earliest_birthdate,
    MAX(birthdate) AS latest_birthdate
FROM human_resources;

SELECT
    COUNT(*) AS future_birthdates
FROM human_resources
WHERE birthdate > CURDATE();

SELECT
    YEAR(birthdate) AS birth_year,
    COUNT(*) AS employees
FROM human_resources
WHERE birthdate > CURDATE()
GROUP BY YEAR(birthdate)
ORDER BY birth_year;





