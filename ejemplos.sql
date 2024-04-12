-- Active: 1712932258286@@127.0.0.1@3306@dbft24#users

/* DML = Data Manipulation Language */
/* 
SELECT
INSERT
UPDATE
DELETE
*/

/* 
INSERT INTO table_name (fields,) VALUES (values,);
*/

INSERT INTO users (email, password, name, lastname, phone) 
VALUES ('john.doe@gmail.com', '123456', 'John', 'Doe', '555-55-55');

INSERT INTO users (email, password, name, phone) 
VALUES ('jane.doe@gmail.com', '123456', 'Jane', '555-55-66');

INSERT INTO users (email, password) VALUES ('lrodriguez@4geeks.co', '123456');

INSERT INTO users (email, password, active) VALUES ('tommy.doe@gmail.com', '123456', false);


INSERT INTO notes (note, users_id) VALUES ('Esto es una prueba', 1);

INSERT INTO notes (note, users_id) VALUES ('Esto es mi nota para probar', 2);

INSERT INTO notes (note, users_id) VALUES ('Esto es mi otra nota para probar', 2);

/* 
SELECT fields FROM table_name **WHERE CONDITION
** opcional 
*/

SELECT * FROM users;

SELECT id, name, lastname FROM users;

SELECT * FROM users WHERE id > 10;

SELECT *  FROM users WHERE id in (1, 3);

SELECT * FROM users WHERE email = 'lrodriguez@4geeks.co' AND password = '123456';

SELECT * FROM users WHERE name is not null; 

SELECT id, email, active FROM users WHERE active = false;

SELECT * FROM notes;

/* 
UPDATE table_name SET field=value, **WHERE CONDITION;
*/

UPDATE users SET active=true WHERE active = false;

UPDATE users SET name='Luis', lastname='Rodriguez' WHERE id = 3;

UPDATE users SET name='Tommy', lastname='Doe' WHERE email = 'tommy.doe@gmail.com';


/* 
DELETE FROM table_name **WHERE CONDITION
*/

DELETE FROM users;

DELETE FROM users WHERE active = false;

DELETE FROM users WHERE id >= 10 and id <= 20;


/* JOINS o UNIONES */

SELECT * FROM users AS u
JOIN notes AS n ON n.users_id = u.id;

SELECT * FROM notes AS n
JOIN users AS u ON n.users_id = u.id;


SELECT * FROM users AS u
LEFT JOIN notes AS n ON u.id = n.users_id

SELECT * FROM users AS u
RIGHT JOIN notes AS n ON u.id = n.users_id

SELECT * FROM users AS u
INNER JOIN notes AS n ON u.id = n.users_id