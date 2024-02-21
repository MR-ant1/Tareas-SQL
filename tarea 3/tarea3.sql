CREATE DATABASE tarea3_students_web;
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(150) NOT NULL
);
CREATE TABLE curses(
curse_name VARCHAR(80),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE tasks(
task_name VARCHAR(50),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE exams(
exam_name VARCHAR(50),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
);