DROP DATABASE IF EXISTS db_example;

CREATE DATABASE db_example;

USE db_example;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  nickname VARCHAR(100) NOT NULL,
  date_of_birth DATE NOT NULL,
  mark INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO students(first_name,last_name,nickname,date_of_birth,mark) values ('Matthias','Jones','Matty','1990-10-27',7);
INSERT INTO students(first_name,last_name,nickname,date_of_birth,mark) values ('Elizabeth','Smith','Liz','1987-05-10',9);
INSERT INTO students(first_name,last_name,nickname,date_of_birth,mark) values ('Lucian','Quinn','Luke','1985-02-22',5);
INSERT INTO students(first_name,last_name,nickname,date_of_birth,mark) values ('Alice','Mason','Ali','1994-04-03',6);
