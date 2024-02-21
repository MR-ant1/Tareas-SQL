CREATE DATABASE tarea2_Reservas_Restaurante;
CREATE TABLE levels(
	id INT AUTO_INCREMENT PRIMARY KEY,
    level ENUM('amateur_foodie','food_lover','real_foodie','master_foodie')
);
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
	level_id INT,
    FOREIGN KEY (level_id) REFERENCES levels(id)
);
CREATE TABLE restaurants(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(80) NOT NULL,
review_id INT,
FOREIGN KEY (review_id) REFERENCES reviews(id)
);
CREATE TABLE bookings(
	id INT AUTO_INCREMENT PRIMARY KEY,
    date_hour TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    restaurant_id INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);
CREATE TABLE reviews(
	id INT AUTO_INCREMENT PRIMARY KEY
);