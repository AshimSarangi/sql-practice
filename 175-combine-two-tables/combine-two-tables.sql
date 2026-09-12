/* Write your T-SQL query statement below */
SELECT firstName, lastName, city, state FROM person p LEFT JOIN Address a 
ON p.personId = a.personId