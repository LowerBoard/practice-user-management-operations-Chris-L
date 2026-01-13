
INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 -- inserts data into the table by specified columns
 
 SELECT * FROM users;
 -- retrieves all columns, retrieves all rows
 
 UPDATE users SET firstName = 'Jane' WHERE lastName = 'Doe';
 -- updates each firstName to Jane where the lastName = Doe
 
 DELETE FROM users WHERE username = 'jdoe';
 -- deletes the row where username = jdoe
 
 SELECT firstName, lastName FROM users WHERE lastName = 'Doe';
 -- retrieve firstName and lastName columns, the rows with lastName = Doe
 
 SELECT * FROM users WHERE lastName = 'Doe' AND firstName = 'John';
 -- retrieve all columns, the rows where lastName = Doe and firstName = John 
 
 SELECT * FROM users WHERE lastName = 'Doe' OR firstName = 'John';
 -- retrieve all columns, the rows where lastName = Doe OR firstName = John
 
 SELECT * FROM users WHERE lastName = 'Doe' AND NOT firstName = 'John';
 -- retrieve all columns, the rows where lastName = Doe and firstName != John
 
 SELECT firstName AS First, lastName AS Last FROM users;
 -- alias, retrieves firstName and lastName, and returns them as First Last
 
 SELECT username, age + 10 AS ageIn10Years FROM users;
 -- retrieves username and age, adds 10 to age, and returns as ageIn10Years
 
 SELECT concat(firstName, ' ', lastName) AS fullName FROM users;
 -- retrieves firstName and lastName, concats them with a space, returns as fullName
 
 SELECT * FROM users ORDER BY age DESC;
 -- retrieves all columns, sorts by descending age
 
 SELECT * FROM users ORDER BY lastName ASC, firstName ASC;
 -- retrieves all columns, sorts by ascending lastName, then sorts by ascending firstName
 
 SELECT * FROM users LIMIT 5;
 -- retrieves all columns, limits to 1st 5 rows returns
 
 SELECT * FROM users LIMIT 5 OFFSET 5;
  -- retrieves all columns, limits to 1st 5 rows returns, starting after 5th row
 
 SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20;
  -- retrieves all columns, limits to 10 rows returned, starting after 20th row if there was one 
  