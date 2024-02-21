CREATE DATABASE tarea4_gestion_inventario;
CREATE TABLE products(
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
quantity VARCHAR(20)
);
CREATE TABLE delivery(
id INT AUTO_INCREMENT PRIMARY KEY,
status ENUM('pending','travelling','arrived'),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products(id)
);
CREATE TABLE movements(
id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
new_location VARCHAR(40),
FOREIGN KEY (product_id) REFERENCES products(id)
);
CREATE TABLE requests(
id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
quantity_request VARCHAR(10),
FOREIGN KEY (product_id) REFERENCES products(id)
);