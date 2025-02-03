MariaDB

CREATE TABLE source (
id INT NOT NULL AUTO_INCREMENT,
`information` VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX(information)
);

- - - - - - - - - - - - - -

H2

CREATE TABLE source (
id INT NOT NULL AUTO_INCREMENT,
`information` VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE (information)
);