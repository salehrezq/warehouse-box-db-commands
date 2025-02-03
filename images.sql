MariaDB

CREATE TABLE images (
id INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`name` VARCHAR(41) NOT NULL,
`order` INT NOT NULL,
`default_image` BOOL NOT NULL,
`scale` DECIMAL(3,2) NOT NULL DEFAULT 0.6,

PRIMARY KEY (id),

FOREIGN KEY `fk_images.item_id_references_items.id` (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE
);

- - - - - - - - - - - -

H2

CREATE TABLE images (
id INT NOT NULL AUTO_INCREMENT,
`item_id` INT NOT NULL,
`name` VARCHAR(41) NOT NULL,
`order` INT NOT NULL,
`default_image` BOOL NOT NULL,
`scale` DECIMAL(3,2) NOT NULL DEFAULT 0.6,

PRIMARY KEY (id),

FOREIGN KEY (item_id)
	REFERENCES items(id)
	ON DELETE CASCADE
);