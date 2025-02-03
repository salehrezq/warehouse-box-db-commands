MariaDB

CREATE TABLE outwards (
`id` INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`quantity` DECIMAL(8,2) NOT NULL,
`recipient_id` INT NOT NULL,
`for` VARCHAR(255) NOT NULL,
`date` DATE NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_outwards.item_id_references_items.id` (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE,
	
	FOREIGN KEY `fk_outwards.recipient_id_references_recipients.id` (recipient_id)
	REFERENCES recipients(id)
	ON DELETE CASCADE
);

- - - - - - - - - - - - - - - -

H2

CREATE TABLE outwards (
`id` INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`quantity` DECIMAL(8,2) NOT NULL,
`recipient_id` INT NOT NULL,
`for` VARCHAR(255) NOT NULL,
`date` DATE NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE,
	
	FOREIGN KEY (recipient_id)
	REFERENCES recipients(id)
	ON DELETE CASCADE
);