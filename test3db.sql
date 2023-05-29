-- INSERT IGNORE INTO roles(name) VALUES('ROLE_USER');
-- INSERT IGNORE INTO roles(name) VALUES('ROLE_ADMIN');

CREATE TYPE role_name AS ENUM ('ROLE_USER','ROLE_ADMIN');

CREATE TABLE roles(
id integer primary key,
name role_name length=60);

INSERT IGNORE INTO roles(name) VALUES('ROLE_USER');
INSERT IGNORE INTO roles(name) VALUES('ROLE_ADMIN');

CREATE TABLE users(
id bigint primary key,
name  varchar(40),
username varchar(15),
email varchar(40),
password varchar(100));

CREATE TABLE user_roles(
role_id integer  not null,
user_id bigint not null,
CONSTRAINT FK_ROLE_ID FOREIGN KEY (role_id)
      REFERENCES roles (id),
CONSTRAINT FK_USER_ID FOREIGN KEY (user_id)
      REFERENCES users (id)
);

SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM user_roles;

INSERT INTO users
VALUES(1,'ROLE_USER','Iryna','iryna@gmail.com','12345'),
(2,'ROLE_ADMIN','Irina','irina@gmail.com','23456');

-- DROP table roles;
-- DROP table users;
-- DROP table users_roles;

