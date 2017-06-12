USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(250),
  PASSWORD VARCHAR(250),
  email    VARCHAR(250),
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title       VARCHAR(300),
  description TEXT,
  user_id     INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);