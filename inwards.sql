MariaDB

CREATE TABLE inwards (
`id` INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`quantity` DECIMAL(8,2) NOT NULL,
`source_id` INT NULL,
`date` DATE NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_inwards.item_id_references_items.id` (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE,
	
	FOREIGN KEY `fk_inwards.source_id_references_source.id` (source_id)
	REFERENCES source(id)
	ON DELETE CASCADE
);

- - - - - - - - - - - - - - - - - 

H2

CREATE TABLE inwards (
`id` INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`quantity` DECIMAL(8,2) NOT NULL,
`source_id` INT NULL,
`date` DATE NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE,
	
	FOREIGN KEY (source_id)
	REFERENCES source(id)
	ON DELETE CASCADE
);