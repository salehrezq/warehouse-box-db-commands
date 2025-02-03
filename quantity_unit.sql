MariaDB

CREATE TABLE quantity_unit (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(10) NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX(name)
);

- - - - - - - - - -

H2 >>

CREATE TABLE quantity_unit (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(10) NOT NULL,
PRIMARY KEY (id),
UNIQUE (name)
);