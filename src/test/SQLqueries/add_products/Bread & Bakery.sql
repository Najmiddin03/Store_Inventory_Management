DECLARE @subId INT = (SELECT id FROM subcategories WHERE name = 'Bread');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5583600000001', 'White Bread Loaf', @subId, 'Balviten', 1.20, 'USD', 1, 'pcs'),
('5583600000002', 'Whole Wheat Bread', @subId, 'Balviten', 1.35, 'USD', 1, 'pcs'),
('5583600000003', 'Rye Bread', @subId, 'Oskroba', 1.40, 'USD', 1, 'pcs'),
('5583600000004', 'Multigrain Bread', @subId, 'Oskroba', 1.50, 'USD', 1, 'pcs'),
('5583600000005', 'Sourdough Bread', @subId, 'Putka', 1.80, 'USD', 1, 'pcs'),
('5583600000006', 'Sunflower Seed Bread', @subId, 'Putka', 1.60, 'USD', 1, 'pcs'),
('5583600000007', 'Chia Seed Bread', @subId, 'Balviten', 1.70, 'USD', 1, 'pcs'),
('5583600000008', 'Gluten-Free White Bread', @subId, 'Bezgluten', 1.90, 'USD', 500, 'g'),
('5583600000009', 'Gluten-Free Dark Bread', @subId, 'Bezgluten', 2.10, 'USD', 500, 'g'),
('5583600000010', 'Pumpkin Seed Bread', @subId, 'Putka', 1.75, 'USD', 1, 'pcs'),
('5583600000011', 'Spelt Bread', @subId, 'Oskroba', 1.85, 'USD', 1, 'pcs'),
('5583600000012', 'Potato Bread', @subId, 'Putka', 1.65, 'USD', 1, 'pcs'),
('5583600000013', 'Barley Bread', @subId, 'Oskroba', 1.55, 'USD', 1, 'pcs'),
('5583600000014', 'Bread with Walnuts', @subId, 'Putka', 2.20, 'USD', 1, 'pcs'),
('5583600000015', 'Rustic Farm Bread', @subId, NULL, 1.45, 'USD', 1, 'pcs'),
('5583600000016', 'Soft Sandwich Bread', @subId, 'Balviten', 1.25, 'USD', 1, 'pcs'),
('5583600000017', 'Thick Crust Bread', @subId, 'Oskroba', 1.30, 'USD', 1, 'pcs'),
('5583600000018', 'Olive Bread', @subId, 'Putka', 2.00, 'USD', 1, 'pcs'),
('5583600000019', 'Herb and Garlic Bread', @subId, 'Putka', 2.10, 'USD', 1, 'pcs'),
('5583600000020', 'Mini Ciabatta', @subId, 'Oskroba', 0.90, 'USD', 1, 'pcs');

DECLARE @subId2 INT = (SELECT id FROM subcategories WHERE name = 'Buns & Rolls');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5583700000001', 'Plain Bun', @subId2, 'Balviten', 0.30, 'USD', 1, 'pcs'),
('5583700000002', 'Whole Wheat Bun', @subId2, 'Balviten', 0.35, 'USD', 1, 'pcs'),
('5583700000003', 'Sesame Seed Bun', @subId2, 'Oskroba', 0.40, 'USD', 1, 'pcs'),
('5583700000004', 'Potato Bun', @subId2, 'Oskroba', 0.38, 'USD', 1, 'pcs'),
('5583700000005', 'Burger Bun', @subId2, 'Putka', 0.45, 'USD', 1, 'pcs'),
('5583700000006', 'Hot Dog Roll', @subId2, 'Putka', 0.42, 'USD', 1, 'pcs'),
('5583700000007', 'Multigrain Roll', @subId2, 'Balviten', 0.50, 'USD', 1, 'pcs'),
('5583700000008', 'Mini Dinner Rolls Pack', @subId2, 'Oskroba', 2.50, 'USD', 6, 'pcs'),
('5583700000009', 'Sweet Milk Bun', @subId2, 'Balviten', 0.55, 'USD', 1, 'pcs'),
('5583700000010', 'Brioche Bun', @subId2, 'Putka', 0.65, 'USD', 1, 'pcs'),
('5583700000011', 'Cheese Roll', @subId2, 'Putka', 0.70, 'USD', 1, 'pcs'),
('5583700000012', 'Garlic Roll', @subId2, 'Balviten', 0.60, 'USD', 1, 'pcs'),
('5583700000013', 'Cinnamon Roll', @subId2, 'Oskroba', 0.75, 'USD', 1, 'pcs'),
('5583700000014', 'Poppy Seed Roll', @subId2, 'Oskroba', 0.55, 'USD', 1, 'pcs'),
('5583700000015', 'Spinach Roll', @subId2, 'Putka', 0.68, 'USD', 1, 'pcs'),
('5583700000016', 'Pretzel Roll', @subId2, 'Balviten', 0.62, 'USD', 1, 'pcs'),
('5583700000017', 'Ciabatta Roll', @subId2, 'Putka', 0.72, 'USD', 1, 'pcs'),
('5583700000018', 'Sweet Bun with Jam', @subId2, 'Oskroba', 0.80, 'USD', 1, 'pcs'),
('5583700000019', 'Chocolate Bun', @subId2, 'Balviten', 0.85, 'USD', 1, 'pcs'),
('5583700000020', 'Fruit-filled Roll', @subId2, 'Putka', 0.90, 'USD', 1, 'pcs');

DECLARE @subId3 INT = (SELECT id FROM subcategories WHERE name = 'Pastries & Croissants');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5583800000001', 'Butter Croissant', @subId3, 'Balviten', 1.20, 'USD', 1, 'pcs'),
('5583800000002', 'Chocolate Croissant', @subId3, 'Balviten', 1.50, 'USD', 1, 'pcs'),
('5583800000003', 'Almond Croissant', @subId3, 'Oskroba', 1.70, 'USD', 1, 'pcs'),
('5583800000004', 'Cheese Danish', @subId3, 'Oskroba', 1.60, 'USD', 1, 'pcs'),
('5583800000005', 'Apple Turnover', @subId3, 'Putka', 1.40, 'USD', 1, 'pcs'),
('5583800000006', 'Cherry Danish', @subId3, 'Putka', 1.45, 'USD', 1, 'pcs'),
('5583800000007', 'Cinnamon Roll', @subId3, 'Balviten', 1.55, 'USD', 1, 'pcs'),
('5583800000008', 'Puff Pastry with Cream', @subId3, 'Oskroba', 1.65, 'USD', 1, 'pcs'),
('5583800000009', 'Raspberry Danish', @subId3, 'Balviten', 1.50, 'USD', 1, 'pcs'),
('5583800000010', 'Blueberry Muffin', @subId3, 'Putka', 1.30, 'USD', 1, 'pcs'),
('5583800000011', 'Lemon Danish', @subId3, 'Balviten', 1.45, 'USD', 1, 'pcs'),
('5583800000012', 'Apricot Danish', @subId3, 'Oskroba', 1.50, 'USD', 1, 'pcs'),
('5583800000013', 'Hazelnut Croissant', @subId3, 'Putka', 1.60, 'USD', 1, 'pcs'),
('5583800000014', 'Strawberry Danish', @subId3, 'Balviten', 1.55, 'USD', 1, 'pcs'),
('5583800000015', 'Vanilla Cream Puff', @subId3, 'Oskroba', 1.70, 'USD', 1, 'pcs'),
('5583800000016', 'Chocolate Eclair', @subId3, 'Putka', 1.80, 'USD', 1, 'pcs'),
('5583800000017', 'Caramel Danish', @subId3, 'Balviten', 1.60, 'USD', 1, 'pcs'),
('5583800000018', 'Poppy Seed Roll', @subId3, 'Oskroba', 1.50, 'USD', 1, 'pcs'),
('5583800000019', 'Coconut Pastry', @subId3, 'Balviten', 1.55, 'USD', 1, 'pcs'),
('5583800000020', 'Mixed Berry Danish', @subId3, 'Putka', 1.70, 'USD', 1, 'pcs');


DECLARE @subId1 INT = (SELECT id FROM subcategories WHERE name = 'Cakes');
-- Insert 10 Cakes
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5583720000001', 'Chocolate Cake', @subId1, 'Wedel', 4.50, 'USD', 500, 'g'),
('5583720000002', 'Vanilla Cake', @subId1, 'Sante', 4.75, 'USD', 500, 'g'),
('5583720000003', 'Carrot Cake', @subId1, 'Bakalland', 5.00, 'USD', 450, 'g'),
('5583720000004', 'Cheesecake', @subId1, 'Dukat', 6.00, 'USD', 400, 'g'),
('5583720000005', 'Lemon Drizzle Cake', @subId1, 'Wedel', 4.80, 'USD', 500, 'g'),
('5583720000006', 'Red Velvet Cake', @subId1, 'Sante', 5.50, 'USD', 450, 'g'),
('5583720000007', 'Black Forest Cake', @subId1, 'Bakalland', 6.20, 'USD', 500, 'g'),
('5583720000008', 'Coffee Cake', @subId1, 'Dukat', 4.90, 'USD', 450, 'g'),
('5583720000009', 'Fruit Cake', @subId1, 'Wedel', 5.30, 'USD', 500, 'g'),
('5583720000010', 'Sponge Cake', @subId1, 'Sante', 4.40, 'USD', 450, 'g');

DECLARE @subId4 INT = (SELECT id FROM subcategories WHERE name = 'Crackers & Rusks');
-- Insert 10 Crackers & Rusks
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5583800000061', 'Salted Crackers', @subId4, 'Lay`s', 2.30, 'USD', 200, 'g'),
('5583800000062', 'Cheese Crackers', @subId4, 'Pringles', 2.50, 'USD', 200, 'g'),
('5583800000063', 'Wholegrain Crackers', @subId4, 'Krakus', 2.70, 'USD', 220, 'g'),
('5583800000064', 'Multigrain Rusks', @subId4, 'Biedronka', 3.00, 'USD', 250, 'g'),
('5583800000065', 'Garlic Rusks', @subId4, 'Krakus', 2.80, 'USD', 230, 'g'),
('5583800000066', 'Butter Crackers', @subId4, 'Lay`s', 2.60, 'USD', 200, 'g'),
('5583800000067', 'Herb Rusks', @subId4, 'Biedronka', 2.90, 'USD', 240, 'g'),
('5583800000068', 'Rye Crackers', @subId4, 'Krakus', 2.40, 'USD', 210, 'g'),
('5583800000069', 'Sea Salt Rusks', @subId4, 'Biedronka', 2.75, 'USD', 230, 'g'),
('5583800000060', 'Plain Crackers', @subId4, 'Pringles', 2.20, 'USD', 200, 'g');


-- Declare subcategory ID for Wraps & Tortillas
DECLARE @subId5 INT = (SELECT id FROM subcategories WHERE name = 'Wraps & Tortillas');

-- Insert 20 Wraps & Tortillas
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES

('5683800000001', 'Wheat Tortilla 6pcs', @subId5, 'Santa Maria', 2.99, 'USD', 240, 'g'),
('5683800000002', 'Whole Grain Tortilla 6pcs', @subId5, 'Santa Maria', 3.29, 'USD', 240, 'g'),
('5683800000003', 'Spinach Wraps 6pcs', @subId5, 'Santa Maria', 3.49, 'USD', 240, 'g'),
('5683800000004', 'Tomato Wraps 6pcs', @subId5, 'Santa Maria', 3.49, 'USD', 240, 'g'),
('5683800000005', 'Mini Wheat Tortilla 8pcs', @subId5, 'Santa Maria', 2.59, 'USD', 200, 'g'),

('5683800000006', 'Wheat Tortilla 6pcs', @subId5, 'Old El Paso', 2.89, 'USD', 240, 'g'),
('5683800000007', 'Whole Grain Tortilla 6pcs', @subId5, 'Old El Paso', 3.19, 'USD', 240, 'g'),
('5683800000008', 'Chili Wraps 6pcs', @subId5, 'Old El Paso', 3.39, 'USD', 240, 'g'),
('5683800000009', 'Garlic Wraps 6pcs', @subId5, 'Old El Paso', 3.39, 'USD', 240, 'g'),
('5683800000010', 'Mini Wheat Tortilla 8pcs', @subId5, 'Old El Paso', 2.59, 'USD', 200, 'g'),

('5683800000011', 'Wheat Tortilla 6pcs', @subId5, 'Dawtona', 2.69, 'USD', 240, 'g'),
('5683800000012', 'Whole Grain Wraps 6pcs', @subId5, 'Dawtona', 2.99, 'USD', 240, 'g'),
('5683800000013', 'Herb Wraps 6pcs', @subId5, 'Dawtona', 3.19, 'USD', 240, 'g'),
('5683800000014', 'Paprika Wraps 6pcs', @subId5, 'Dawtona', 3.19, 'USD', 240, 'g'),
('5683800000015', 'Mini Wraps 8pcs', @subId5, 'Dawtona', 2.39, 'USD', 200, 'g'),

('5683800000016', 'Wheat Tortilla 6pcs', @subId5, 'Pano', 2.59, 'USD', 240, 'g'),
('5683800000017', 'Whole Grain Wraps 6pcs', @subId5, 'Pano', 2.89, 'USD', 240, 'g'),
('5683800000018', 'Multigrain Wraps 6pcs', @subId5, 'Pano', 3.09, 'USD', 240, 'g'),
('5683800000019', 'Mini Wraps 8pcs', @subId5, 'Pano', 2.39, 'USD', 200, 'g'),
('5683800000020', 'Spinach Tortilla 6pcs', @subId5, 'Pano', 3.29, 'USD', 240, 'g');
