-- Comments in SQL Start with dash-dash --
After Set-Up, SQL, psql, DB: products_db, table: products
	Questions for the answers below on another sheet, see 26.2.14_Homework

1.  INSERT INTO products (name, price, can_be_returned) VALUES ('chair', '44.00', false);

2.  INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, 'true');   I'm not sure if  the parenthesis is supposed to be around the numbers or not.

3. products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, 'false');
INSERT 0 1
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f

4. products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)

5. products_db=# SELECT name FROM products;
 name
-------
 chair
 stool
 table
(3 rows)

6. products_db=# SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124

7. products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('sofa', 113.29, 'true');

8. products_db=# SELECT name FROM products WHERE can_be_returned ='t';
 name
-------
 stool
 sofa
(2 rows)

9.products_db=# SELECT name FROM products WHERE price <44;
 name
-------
 stool
(1 row)

10. products_db=# SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;
 name
-------
 chair
 stool
(2 rows)

11. products_db=# UPDATE products SET price = price-20;
UPDATE 4
products_db=# SELECT * FROM products;
 id | name  |       price       | can_be_returned
----+-------+-------------------+-----------------
  1 | chair |                24 | f
  2 | stool | 5.989999999999998 | t
  3 | table |               104 | f
  4 | sofa  |             93.29 | t

Previous price:
name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124

12. products_db=# DELETE FROM products WHERE price < 25;
DELETE 2
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  3 | table |   104 | f
  4 | sofa  | 93.29 | t

Previous chart:

id | name  |       price       | can_be_returned
----+-------+-------------------+-----------------
  1 | chair |                24 | f
  2 | stool | 5.989999999999998 | t
  3 | table |               104 | f
  4 | sofa  |             93.29 | t

13. products_db=# UPDATE products SET price = price+20;
UPDATE 2
products_db=# SELECT * FROM products;
 id | name  | price  | can_be_returned
----+-------+--------+-----------------
  3 | table |    124 | f
  4 | sofa  | 113.29 | t

14. products_db=# UPDATE products SET can_be_returned='t';
UPDATE 2
products_db=# SELECT * FROM products;
 id | name  | price  | can_be_returned
----+-------+--------+-----------------
  3 | table |    124 | t
  4 | sofa  | 113.29 | t


