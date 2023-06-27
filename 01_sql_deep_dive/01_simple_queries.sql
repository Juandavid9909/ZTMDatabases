-- Traer datos (public es el nombre del Schema)
SELECT * FROM "public"."employees";
SELECT * FROM "public"."departments";
SELECT * FROM "public"."salaries" WHERE emp_no = '10001';

-- Renombrar columnas
SELECT emp_no AS "Employee #", birth_date AS "Birthday", first_name AS "First name" FROM "public"."employees";

-- Concatenar columnas
SELECT CONCAT(emp_no, ' is a ', title) AS "Employee Title" FROM "public"."titles";
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS "Full name" FROM "public"."employees";

-- Aggregate functions
-- Calcular promedio
SELECT AVG(salary) FROM "public"."salaries";
-- Contar valores
SELECT COUNT(emp_no) FROM "public"."employees";
-- Valor mínimo
SELECT MIN(salary) FROM "public"."salaries";
-- Valor máximo
SELECT MAX(salary) FROM "public"."salaries";
-- Calcular suma
SELECT SUM(salary) FROM "public"."salaries";

--- Filtrar datos
SELECT first_name FROM "public"."employees" WHERE gender = 'F';
-- AND
SELECT first_name, gender, hire_date FROM "public"."employees" WHERE first_name = 'Georgi' AND last_name = 'Facello';
-- OR
SELECT first_name, gender, hire_date FROM "public"."employees" WHERE first_name = 'Georgi' AND first_name = 'Bezalel';