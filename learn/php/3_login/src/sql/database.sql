DROP TABLE IF EXISTS users;

CREATE TABLE users (
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  active VARCHAR(100) NOT NULL,
  role VARCHAR(100) NOT NULL,
  CONSTRAINT PK_users PRIMARY KEY (username)
);

INSERT INTO users(username, password, active, role) values ('admin','4321','yes','admin');
INSERT INTO users(username, password, active, role) values ('john','abcd','yes','user');
INSERT INTO users(username, password, active, role) values ('paul','wxyz','no','user');
