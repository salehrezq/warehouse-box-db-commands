MariaDB

CREATE TABLE items (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`specification` VARCHAR(200) NULL,
`unit_id` INT NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_items.unit_id_references_quantity_unit.id` (unit_id)
	REFERENCES quantity_unit(id)
	ON DELETE CASCADE
);

- - - - - - - - - - - - - - - 

H2

CREATE TABLE items (
id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`specification` VARCHAR(200) NULL,
`unit_id` INT NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY (unit_id)
	REFERENCES quantity_unit(id)
	ON DELETE CASCADE
);