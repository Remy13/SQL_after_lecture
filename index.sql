Table - Person
Answers:
 #1

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    height INTEGER,
    city VARCHAR(100),
    favorite_color VARCHAR(100)  
);

#2

INSERT INTO person (
    name, 
    age, 
    height, 
    city, 
    favorite_color)
VALUES 
    ('Cam Lye', 40, 182, 'Salt Lake', 'black'),
    ('Jessica Jones', 28, 152, 'New York', 'purple'),
    ('Luke Cage', 35, 198, 'New York', 'yellow'),
    ('Matt Murdock', 30, 175, 'New York', 'red'),
    ('Danny rand', 23, 167, 'New York', 'green');
    
#3

SELECT * FROM person ORDER BY height DESC;

#4

SELECT * FROM person ORDER BY height ASC;

#5

SELECT * FROM person ORDER BY age DESC;

#6

SELECT * FROM person WHERE age > 20;

#7

SELECT * FROM person WHERE age = 18;

#8

SELECT * FROM person WHERE age < 20 OR age > 30;

#9

SELECT * FROM person WHERE age != 27;

#10

SELECT * FROM person WHERE favorite_color != 'red';

#11

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

#12

SELECT * FROM person WHERE favorite_color = 'orange' or favorite_color = 'green';

#13

SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

#14

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');



Table - Orders

#1

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER, 
  product_name VARCHAR(100), 
  product_price NUMERIC, 
  quantity INTEGER
  );

#2

INSERT INTO orders (
    person_id,
    order_id,
    product_price, 
    quantity,  
    product_name)
VALUES 
    (1, 1, 150.99, 5, 'whiskey'),
   	(1, 2, 89.99, 2, 'gin'),
    (2, 3, 30.99, 10, 'red wine'),
    (2, 4, 150.99, 3, 'white wine'),
    (1, 5, 67.99, 1, 'tequila');

#3

SELECT * FROM orders;

#4

SELECT SUM (quantity) FROM orders;

#5

SELECT SUM (product_price) FROM orders;

#6

SELECT SUM (product_price) FROM orders WHERE person_id = 1;



Table - Artist

#1

INSERT INTO artist (name)
VALUES 
  ('Rancid'), 
  ('Bad Religion'),
  ('NoFx');

#2

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

#3

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

#4

SELECT * FROM artist WHERE name LIKE 'Black%';

#5

SELECT * FROM artist WHERE name LIKE '%Black%';



Table - Employee

#1 

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

#2

SELECT MAX(birth_date) from employee;

#3

SELECT MIN(birth_date) from employee;

#4

SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards';
SELECT * FROM employee

#5

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';



Table - invoice

#1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

#2

SELECT MAX(total) FROM invoice;

#3

SELECT MIN(total) FROM invoice;

#4

SELECT * FROM invoice WHERE TOTAL > 5;

#5 

SELECT * FROM invoice WHERE TOTAL < 5;

#6

SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

#7

SELECT AVG (total) FROM invoice;

#8

SELECT SUM (total) FROM invoice;







































