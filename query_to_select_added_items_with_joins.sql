SELECT ad.item_id AS item_id, ad.id AS addition_id ,ad.quantity, u.name AS unit_name, s.information AS source ,ad.date, i.name AS item_name, i.specification AS item_specs
FROM added_items as ad JOIN items AS i JOIN quantity_unit AS u JOIN source AS s
ON (ad.item_id = i.id) AND (i.unit_id = u.id) AND (s.id = ad.source_id)
ORDER BY ad.date ASC, ad.id ASC;