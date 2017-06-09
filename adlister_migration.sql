-- create tables users and ads

USE adlister_db;

DROP TABLE IF EXISTS users, ads;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL ,
  email VARCHAR(255),
  password VARCHAR(255) NOT NULL
);

CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(255),
  description VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(id)
);