-- Category - Drinks
INSERT INTO subcategories(name, category_id) VALUES
('Waters', 1),
('Carbonated Drinks', 1),
('Tonics', 1),
('Juices', 1),
('Iced Teas', 1),
('Sports Drinks', 1),
('Energy Drinks',1);

INSERT INTO subcategories(name, category_id) VALUES
('Lager', 2),
('Ale', 2),
('Porter', 2),
('Stout', 2),
('Fruit Beers',2),
('Non-Alcoholic', 2);

INSERT INTO subcategories(name, category_id) VALUES
('Red Wines', 3),
('White Wines', 3)

INSERT INTO subcategories(name, category_id) VALUES
('Chocolates', 4),
('Cookies & Biscuits', 4),
('Candies', 4),
('Chips',4);

INSERT INTO subcategories(name, category_id) VALUES
('Pasta & Rice', 5),
('Canned Food', 5),
('Sauces & Condiments', 5),
('Flour & Baking', 5),
('Sugar & Sweeteners', 5),
('Cooking Oils', 5);

INSERT INTO subcategories(name, category_id) VALUES
('Fresh Fruits', 6),
('Fresh Vegetables', 6),
('Cut & Packed Produce', 6),
('Exotic Fruits', 6),
('Salads & Mixes', 6),
('Organic Produce', 6);

declare @catId int=(select id from categories where name='Dairy & Eggs')
INSERT INTO subcategories (name, category_id) VALUES
('Milk', @catId),
('Yogurt', @catId),
('Butter & Margarine', @catId),
('Cheese', @catId),
('Eggs', @catId);

declare @catId1 int=(select id from categories where name='Bread & Bakery')
INSERT INTO subcategories(name, category_id) VALUES
('Bread', @catId1),
('Buns & Rolls', @catId1),
('Pastries & Croissants', @catId1),
('Cakes', @catId1),
('Crackers & Rusks', @catId1),
('Wraps & Tortillas', @catId1);

declare @catId2 int=(select id from categories where name='Meat & Poultry')
INSERT INTO subcategories(name, category_id) VALUES
('Fresh Meat', @catId2),
('Seafood', @catId2),
('Sausages', @catId2),
('Cold Cuts', @catId2),
('Bacon & Ham', @catId2),
('Packaged Cooked Meat', @catId2);

declare @catId3 int=(select id from categories where name='Frozen Foods')
INSERT INTO subcategories(name, category_id) VALUES
('Frozen Vegetables', @catId3),
('Frozen Meat', @catId3),
('Ice Cream', @catId3),
('Frozen Dinners', @catId3),
('Pizza', @catId3),
('Frozen Bakery', @catId3);







