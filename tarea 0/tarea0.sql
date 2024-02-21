CREATE DATABASE Tarea0_libreria_online;
CREATE TABLE roles(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (50)
);
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);
CREATE TABLE authors(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    nacionality VARCHAR(30)
);
CREATE TABLE books(
	id INT AUTO_INCREMENT PRIMARY KEY,
	tile VARCHAR(80),
    genre VARCHAR(30),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
CREATE TABLE loans(
	id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    loan_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    due_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE book_favourite(
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);