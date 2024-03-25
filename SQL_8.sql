
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

UPDATE employee
SET
name = 'Ceylan',
birthday = '1997-05-07',
email = 'ceylan@gmail.com'
WHERE id <= 5
RETURNING*;

DELETE FROM employee
WHERE id
IN (SELECT id FROM employee WHERE id <= 15 LIMIT 5)
RETURNING*;

SELECT*FROM employee;