MariaDB

CREATE TABLE recipients (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX(name)
);

- - - - - - - - - - - - - - 

H2

CREATE TABLE recipients (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE (name)
);