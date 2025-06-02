-- Declare subcategory ID for Fresh Meat
DECLARE @subId INT = (SELECT id FROM subcategories WHERE name = 'Fresh Meat');

-- Insert 20 Fresh Meat products
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410100000001', 'Chicken Breast Fillet', @subId, 'Local Farm', 4.99, 'USD', 1, 'kg'),
('5410100000002', 'Pork Neck Boneless', @subId, 'Local Farm', 5.79, 'USD', 1, 'kg'),
('5410100000003', 'Beef Minced Meat', @subId, 'Local Farm', 7.99, 'USD', 1, 'kg'),
('5410100000004', 'Turkey Breast', @subId, 'Local Farm', 6.99, 'USD', 1, 'kg'),
('5410100000005', 'Chicken Drumsticks', @subId, 'Local Farm', 3.99, 'USD', 1, 'kg'),
('5410100000006', 'Beef Steak', @subId, 'Local Farm', 10.99, 'USD', 1, 'kg'),
('5410100000007', 'Pork Chops Bone-in', @subId, 'Local Farm', 5.49, 'USD', 1, 'kg'),
('5410100000008', 'Chicken Wings', @subId, 'Local Farm', 3.49, 'USD', 1, 'kg'),
('5410100000009', 'Veal Shoulder', @subId, 'Local Farm', 9.49, 'USD', 1, 'kg'),
('5410100000010', 'Lamb Leg Boneless', @subId, 'Local Farm', 12.99, 'USD', 1, 'kg'),
('5410100000011', 'Beef Ribs', @subId, 'Local Farm', 8.49, 'USD', 1, 'kg'),
('5410100000012', 'Chicken Liver', @subId, 'Local Farm', 2.49, 'USD', 1, 'kg'),
('5410100000013', 'Pork Belly', @subId, 'Local Farm', 6.29, 'USD', 1, 'kg'),
('5410100000014', 'Lamb Ribs', @subId, 'Local Farm', 11.49, 'USD', 1, 'kg'),
('5410100000015', 'Beef Brisket', @subId, 'Local Farm', 9.99, 'USD', 1, 'kg'),
('5410100000016', 'Duck Breast', @subId, 'Local Farm', 10.49, 'USD', 1, 'kg'),
('5410100000017', 'Turkey Thigh', @subId, 'Local Farm', 5.49, 'USD', 1, 'kg'),
('5410100000018', 'Goat Meat Cubes', @subId, 'Local Farm', 13.99, 'USD', 1, 'kg'),
('5410100000019', 'Rabbit Legs', @subId, 'Local Farm', 9.29, 'USD', 1, 'kg'),
('5410100000020', 'Lamb Shoulder', @subId, 'Local Farm', 11.99, 'USD', 1, 'kg');

-- Declare subcategory ID for Seafood
DECLARE @subId2 INT = (SELECT id FROM subcategories WHERE name = 'Seafood');

-- Insert 20 Seafood products
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410200000001', 'Atlantic Salmon Fillet', @subId2, 'Ocean Fresh', 12.99, 'USD', 1, 'kg'),
('5410200000002', 'Cod Loin', @subId2, 'Ocean Fresh', 10.49, 'USD', 1, 'kg'),
('5410200000003', 'Rainbow Trout', @subId2, 'Ocean Fresh', 9.99, 'USD', 1, 'kg'),
('5410200000004', 'Tilapia Fillet', @subId2, 'Ocean Fresh', 7.99, 'USD', 1, 'kg'),
('5410200000005', 'Herring Fillet', @subId2, 'Ocean Fresh', 5.99, 'USD', 1, 'kg'),
('5410200000006', 'Shrimp (Medium, Peeled)', @subId2, 'Ocean Fresh', 14.99, 'USD', 1, 'kg'),
('5410200000007', 'King Prawns', @subId2, 'Ocean Fresh', 16.49, 'USD', 1, 'kg'),
('5410200000008', 'Mussels in Shell', @subId2, 'Ocean Fresh', 6.49, 'USD', 1, 'kg'),
('5410200000009', 'Squid Rings', @subId2, 'Ocean Fresh', 9.29, 'USD', 1, 'kg'),
('5410200000010', 'Octopus Tentacles', @subId2, 'Ocean Fresh', 13.99, 'USD', 1, 'kg'),
('5410200000011', 'Smoked Salmon Slices', @subId2, 'Ocean Fresh', 15.49, 'USD', 1, 'kg'),
('5410200000012', 'Anchovy Fillets', @subId2, 'Ocean Fresh', 11.29, 'USD', 1, 'kg'),
('5410200000013', 'Sardines in Brine', @subId2, 'Ocean Fresh', 4.49, 'USD', 1, 'kg'),
('5410200000014', 'Crab Meat', @subId2, 'Ocean Fresh', 17.99, 'USD', 1, 'kg'),
('5410200000015', 'Sea Bream', @subId2, 'Ocean Fresh', 10.99, 'USD', 1, 'kg'),
('5410200000016', 'Lobster Tail', @subId2, 'Ocean Fresh', 22.99, 'USD', 1, 'kg'),
('5410200000017', 'Caviar Substitute', @subId2, 'Ocean Fresh', 19.49, 'USD', 1, 'kg'),
('5410200000018', 'Fish Sticks (Breaded)', @subId2, 'Ocean Fresh', 5.99, 'USD', 1, 'kg'),
('5410200000019', 'Frozen Pollock', @subId2, 'Ocean Fresh', 6.79, 'USD', 1, 'kg'),
('5410200000020', 'Alaskan Halibut', @subId2, 'Ocean Fresh', 13.49, 'USD', 1, 'kg');

-- Declare subcategory ID for Sausages
DECLARE @subId3 INT = (SELECT id FROM subcategories WHERE name = 'Sausages');

-- Insert 20 Sausage products
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410300000001', 'Pork Sausages Classic', @subId3, 'Sokolow', 4.99, 'USD', 0.5, 'kg'),
('5410300000002', 'Beef Sausages Spicy', @subId3, 'Sokolow', 5.49, 'USD', 0.5, 'kg'),
('5410300000003', 'Chicken Sausages', @subId3, 'Sokolow', 4.29, 'USD', 0.5, 'kg'),
('5410300000004', 'Kabanos Classic', @subId3, 'Sokolow', 5.99, 'USD', 0.3, 'kg'),
('5410300000005', 'Kabanos Spicy', @subId3, 'Sokolow', 6.29, 'USD', 0.3, 'kg'),
('5410300000006', 'White Sausages', @subId3, 'Morliny', 4.79, 'USD', 0.5, 'kg'),
('5410300000007', 'Grill Sausages', @subId3, 'Morliny', 5.49, 'USD', 0.6, 'kg'),
('5410300000008', 'Smoked Pork Sausages', @subId3, 'Morliny', 5.89, 'USD', 0.5, 'kg'),
('5410300000009', 'Thin Sausages', @subId3, 'Morliny', 4.59, 'USD', 0.4, 'kg'),
('54103000000010', 'Hungarian Style Sausages', @subId3, 'Morliny', 5.99, 'USD', 0.5, 'kg'),
('54103000000011', 'Silesian Sausages', @subId3, 'Tarczynski', 5.49, 'USD', 0.5, 'kg'),
('54103000000012', 'Dry Sausages', @subId3, 'Tarczynski', 6.49, 'USD', 0.4, 'kg'),
('54103000000013', 'Cheese Filled Sausages', @subId3, 'Tarczynski', 6.29, 'USD', 0.4, 'kg'),
('54103000000014', 'Bacon Wrapped Sausages', @subId3, 'Tarczynski', 6.99, 'USD', 0.5, 'kg'),
('54103000000015', 'Liver Sausages', @subId3, 'Tarczynski', 5.19, 'USD', 0.5, 'kg'),
('54103000000016', 'Herbal Chicken Sausages', @subId3, 'Duda', 4.89, 'USD', 0.5, 'kg'),
('54103000000017', 'Jalapeno Sausages', @subId3, 'Duda', 5.79, 'USD', 0.4, 'kg'),
('54103000000018', 'Paprika Sausages', @subId3, 'Duda', 5.59, 'USD', 0.4, 'kg'),
('54103000000019', 'Thuringer Sausages', @subId3, 'Duda', 5.99, 'USD', 0.5, 'kg'),
('54103000000020', 'Breakfast Sausages', @subId3, 'Duda', 4.69, 'USD', 0.4, 'kg');

-- Declare subcategory IDs for Cold Cuts and Bacon & Ham
DECLARE @subId4 INT = (SELECT id FROM subcategories WHERE name = 'Cold Cuts');
DECLARE @subId5 INT = (SELECT id FROM subcategories WHERE name = 'Bacon & Ham');

-- Insert 10 Cold Cuts products
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410400000001', 'Turkey Cold Cuts', @subId4, 'Morliny', 7.49, 'USD', 0.5, 'kg'),
('5410400000002', 'Chicken Cold Cuts', @subId4, 'Morliny', 6.99, 'USD', 0.5, 'kg'),
('5410400000003', 'Pastrami Cold Cuts', @subId4, 'Tarczynski', 8.29, 'USD', 0.5, 'kg'),
('5410400000004', 'Beef Cold Cuts', @subId4, 'Tarczynski', 7.89, 'USD', 0.5, 'kg'),
('5410400000005', 'Salami Cold Cuts', @subId4, 'Tarczynski', 6.99, 'USD', 0.5, 'kg'),
('5410400000006', 'Mortadella Cold Cuts', @subId4, 'Sokolow', 6.49, 'USD', 0.5, 'kg'),
('5410400000007', 'Bologna Cold Cuts', @subId4, 'Sokolow', 5.99, 'USD', 0.5, 'kg'),
('5410400000008', 'Ham Cold Cuts', @subId4, 'Sokolow', 6.79, 'USD', 0.5, 'kg'),
('5410400000009', 'Czech Style Cold Cuts', @subId4, 'Kaufland', 7.29, 'USD', 0.5, 'kg'),
('5410400000010', 'Italian Style Cold Cuts', @subId4, 'Kaufland', 7.79, 'USD', 0.5, 'kg');

-- Insert 10 Bacon & Ham products
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410500000001', 'Bacon Classic', @subId5, 'Morliny', 4.99, 'USD', 0.5, 'kg'),
('5410500000002', 'Smoked Bacon', @subId5, 'Morliny', 5.29, 'USD', 0.5, 'kg'),
('5410500000003', 'Honey Ham', @subId5, 'Sokolow', 5.49, 'USD', 0.5, 'kg'),
('5410500000004', 'Cooked Ham', @subId5, 'Sokolow', 4.99, 'USD', 0.5, 'kg'),
('5410500000005', 'Bacon Strips', @subId5, 'Tarczynski', 5.89, 'USD', 0.5, 'kg'),
('5410500000006', 'Bacon Cubes', @subId5, 'Tarczynski', 5.69, 'USD', 0.5, 'kg'),
('5410500000007', 'Crispy Bacon', @subId5, 'Tarczynski', 6.19, 'USD', 0.5, 'kg'),
('5410500000008', 'Smoked Ham', @subId5, 'Duda', 5.99, 'USD', 0.5, 'kg'),
('5410500000009', 'Herb Ham', @subId5, 'Duda', 6.29, 'USD', 0.5, 'kg'),
('5410500000010', 'Premium Bacon', @subId5, 'Duda', 6.49, 'USD', 0.5, 'kg');

DECLARE @subId6 INT = (SELECT id FROM subcategories WHERE name = 'Packaged Cooked Meat');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5410600000001', 'Chicken Breast Cooked', @subId6, 'Morliny', 8.49, 'USD', 0.5, 'kg'),
('5410600000002', 'Pork Loin Cooked', @subId6, 'Morliny', 7.99, 'USD', 0.5, 'kg'),
('5410600000003', 'Turkey Breast Cooked', @subId6, 'Tarczynski', 8.29, 'USD', 0.5, 'kg'),
('5410600000004', 'Beef Roast Cooked', @subId6, 'Tarczynski', 9.49, 'USD', 0.5, 'kg'),
('5410600000005', 'Pork Ham Cooked', @subId6, 'Sokolow', 7.89, 'USD', 0.5, 'kg'),
('5410600000006', 'Smoked Turkey Cooked', @subId6, 'Sokolow', 8.79, 'USD', 0.5, 'kg'),
('5410600000007', 'Cooked Salami', @subId6, 'Sokolow', 8.19, 'USD', 0.5, 'kg'),
('5410600000008', 'Chicken Roll Cooked', @subId6, 'Duda', 7.59, 'USD', 0.5, 'kg'),
('5410600000009', 'Pork Roll Cooked', @subId6, 'Duda', 7.99, 'USD', 0.5, 'kg'),
('5410600000010', 'Cooked Sausage', @subId6, 'Duda', 8.49, 'USD', 0.5, 'kg'),
('5410600000011', 'Turkey Ham Cooked', @subId6, 'Morliny', 8.29, 'USD', 0.5, 'kg'),
('5410600000012', 'Beef Ham Cooked', @subId6, 'Morliny', 9.19, 'USD', 0.5, 'kg'),
('5410600000013', 'Cooked Bacon', @subId6, 'Tarczynski', 8.69, 'USD', 0.5, 'kg'),
('5410600000014', 'Pork Loin Slices', @subId6, 'Tarczynski', 7.79, 'USD', 0.5, 'kg'),
('5410600000015', 'Chicken Slices', @subId6, 'Sokolow', 7.99, 'USD', 0.5, 'kg'),
('5410600000016', 'Turkey Slices', @subId6, 'Sokolow', 8.39, 'USD', 0.5, 'kg'),
('5410600000017', 'Smoked Cooked Ham', @subId6, 'Duda', 8.99, 'USD', 0.5, 'kg'),
('5410600000018', 'Roast Beef Slices', @subId6, 'Duda', 9.59, 'USD', 0.5, 'kg'),
('5410600000019', 'Cooked Mortadella', @subId6, 'Morliny', 8.29, 'USD', 0.5, 'kg'),
('5410600000020', 'Cooked Bologna', @subId6, 'Morliny', 7.79, 'USD', 0.5, 'kg');