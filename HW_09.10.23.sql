--1уровень сложности: Создание таблицы в MySQL с констрейнтами и добавление данных
--Создать таблицу "Users"
--Поле "user_id" - уникальный идентификатор пользователя (целое число, автоинкрементное, первичный ключ).
--Поле "user_name" - имя пользователя (строка, максимум 50 символов, обязательное).
--Поле "email" - адрес электронной почты (строка, максимум 100 символов, уникальное).
--Поле "age" - возраст пользователя (целое число, от 0 до 140).
--Поле "gender" - пол пользователя (значение 'm' или 'f')
--Добавить следующие данные в таблицу "Users"
--Пользователь с именем "John Doe", адрес электронной почты "johndoe@example.com", возраст 30 лет.
--Пользователь с именем "Jane Smith", адрес электронной почты "janesmith@example.com", возраст 25 лет.

create database HW_091023;
use HW_091023;
drop table Users;
create table Users (
	user_id integer AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age integer CHECK(age BETWEEN 0 and 140),
    gender CHAR(1) CHECK (gender IN ('m', 'f'))
);

INSERT INTO Users (user_name, email, age, gender)
	VALUES ('John Doe', 'johndoe@example.com', 30, 'm');

INSERT INTO Users (user_name, email, age, gender)
	VALUES ('Jane Smith', 'janesmith@example.com', 25, 'f');


	