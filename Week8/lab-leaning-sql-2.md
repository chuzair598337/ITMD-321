# Lab - Learning SQL Chapter 2

Lab exercises for Learning SQL Chapter 2

## Objectives

* Implement and create a database
* Create primary and foreign key constraints
* Create, retrieve, update, and delete data in a table
* Explore the commandline commands for the MySQL database

## Outcomes

At the conclusion of this assignment you will created a database, retrived data, inserted new data, deleted data from the MySQL commandline

## Lab Exercises

Using the Learning SQL Third Edition textbook in Chapter-02, you will walk through the various commands to go over basic database functionality.

You will go through the exercises listed in the book and take screenshots of the code and the results

### Import Sakila Database Schema and Data P.29-30

![Alt text](./screenshot/1.png?raw=true "Optional Title")

Screenshot goes here

### Create Table Person P.31


CREATE TABLE person
 (person_id SMALLINT UNSIGNED,
 fname VARCHAR(20),
 lname VARCHAR(20),
 eye_color ENUM('BR','BL','GR'),
 birth_date DATE,
 street VARCHAR(30),
 city VARCHAR(20),
 state VARCHAR(20),
 country VARCHAR(20),
 postal_code VARCHAR(20),
 CONSTRAINT pk_person PRIMARY KEY (person_id)
 );

Screenshot goes here

### Create Table Favorite Food P.32

CREATE TABLE favorite_food
(person_id SMALLINT UNSIGNED,
food VARCHAR(20),
CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id) REFERENCES person (person_id)
);

Screenshot goes here

### Alter Table to allow for auto_increment P.34

set foreign_key_checks=0;
ALTER TABLE person
 MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
set foreign_key_checks=1;

Screenshot goes here

### INSERT statement P.35

INSERT INTO person(person_id, fname, lname, eye_color, birth_date) VALUES (null, 'William','Turner', 'BR', '1972-05-27');

screenshot goes here

### SELECT statement P.35

 SELECT person_id, fname, lname, birth_date FROM person;

Screenshot goes here

### SELECT William Turner P.36

 SELECT person_id, fname, lname, birth_date FROM person WHERE lname = 'Turner';

Screenshot goes here

### INSERT into favorite food P.36

INSERT INTO favorite_food (person_id, food) VALUES (1, 'pizza');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'cookies');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'nachos');

Screenshot goes here

### SELECT William Turners favorite food P.36

SELECT food FROM favorite_food WHERE person_id = 1 ORDER BY food;

Screenshot goes here

### INSERT INTO person P.37

INSERT INTO person(person_id, fname, lname, eye_color, birth_date,street, city, state, country, postal_code) VALUES (null, 'Susan','Smith', 'BL', '1975-11-02','23 Maple St.', 'Arlington', 'VA', 'USA', '20220');

Screenshot goes here

### SELECT person P.37

SELECT person_id, fname, lname, birth_date FROM person;

Screenshot goes here

### UPDATE data P.38

UPDATE person SET street = '1225 Tremont St.', city = 'Boston', state = 'MA', country = 'USA',postal_code = '02138' WHERE person_id = 1;

Screenshot goes here

### DELETE Data P.39

DELETE FROM person WHERE person_id = 2;

Screenshot goes here

### Non-unique Primary Key P.39

Screenshot goes here

### Non-existent Foreign Key P.40

INSERT INTO favorite_food (person_id, food) VALUES (999, 'lasagna');

Screenshot goes here

### Column Violations P.40

 UPDATE person SET eye_color = 'ZZ' WHERE person_id = 1;

Screenshot goes here

### Invalid Date Conversions P.40-41

UPDATE person SET birth_date = 'DEC-21-1980' WHERE person_id = 1;

Screenshot goes here

### SHOW tables P.42

show tables;

Screenshot goes here

### DROP TABLE P.43

 DROP TABLE favorite_food;
 DROP TABLE person;

Screenshot goes here

## Deliverable

Create a folder named: `week-08` under the `itmd-321` folder in your local repo. Download the tempalte provided for this assignment, take all needed screenshots and push this template and screeshots into your remote repo.

Submit to Blackboard the URL to that file.  Assignment Due March 08th 1:40 PM.

### Sources

Kroenke, David M.; Auer, David J.; Vandenberg, Scott L.; Vandenberg, Scott L.; Yoder, Robert C.; Yoder, Robert C.. Database Concepts (p. 124). Pearson Education. Kindle Edition. 