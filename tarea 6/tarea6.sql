CREATE DATABASE tarea6_flyingapp;
CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR (50),
email VARCHAR(50) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE flights(
id INT AUTO_INCREMENT PRIMARY KEY,
flight_number VARCHAR(10),
flight_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
user_id INT,
UNIQUE KEY uk_flight_date (flight_date),
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE loans(
id INT AUTO_INCREMENT PRIMARY KEY,
flight_num VARCHAR(10),
flight_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (flight_date) REFERENCES flights(flight_date)
);

CREATE TABLE notifications(
id INT AUTO_INCREMENT PRIMARY KEY,
notification_message VARCHAR(200),
user_id INT,
flight_new_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (flight_new_date) REFERENCES flights(flight_date)
);