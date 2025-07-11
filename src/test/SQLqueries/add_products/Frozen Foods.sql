DECLARE @subIdFrozenVeg INT = (SELECT id FROM subcategories WHERE name = 'Frozen Vegetables');
DECLARE @subIdFrozenMeat INT = (SELECT id FROM subcategories WHERE name = 'Frozen Meat');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5593900000001', 'Frozen Peas', @subIdFrozenVeg, 'GreenFarm', 1.50, 'USD', 1, 'kg'),
('5593900000002', 'Frozen Corn', @subIdFrozenVeg, 'GreenFarm', 1.60, 'USD', 1, 'kg'),
('5593900000003', 'Frozen Mixed Vegetables', @subIdFrozenVeg, 'FrostyVeg', 1.75, 'USD', 1, 'kg'),
('5593900000004', 'Frozen Spinach', @subIdFrozenVeg, 'FrostyVeg', 1.80, 'USD', 1, 'kg'),
('5593900000005', 'Frozen Broccoli', @subIdFrozenVeg, 'GreenFarm', 1.90, 'USD', 1, 'kg'),
('5593900000006', 'Frozen Carrots', @subIdFrozenVeg, 'FrostyVeg', 1.70, 'USD', 1, 'kg'),
('5593900000007', 'Frozen Green Beans', @subIdFrozenVeg, 'GreenFarm', 1.60, 'USD', 1, 'kg'),
('5593900000008', 'Frozen Cauliflower', @subIdFrozenVeg, 'FrostyVeg', 1.85, 'USD', 1, 'kg'),
('5593900000009', 'Frozen Asparagus', @subIdFrozenVeg, 'GreenFarm', 2.00, 'USD', 1, 'kg'),
('5593900000010', 'Frozen Brussels Sprouts', @subIdFrozenVeg, 'FrostyVeg', 2.10, 'USD', 1, 'kg');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5594000000001', 'Frozen Chicken Breast', @subIdFrozenMeat, 'FrostMeat', 5.50, 'USD', 1, 'kg'),
('5594000000002', 'Frozen Pork Chops', @subIdFrozenMeat, 'FrostMeat', 6.00, 'USD', 1, 'kg'),
('5594000000003', 'Frozen Beef Steaks', @subIdFrozenMeat, 'MeatPro', 7.00, 'USD', 1, 'kg'),
('5594000000004', 'Frozen Turkey', @subIdFrozenMeat, 'MeatPro', 6.50, 'USD', 1, 'kg'),
('5594000000005', 'Frozen Minced Meat', @subIdFrozenMeat, 'FrostMeat', 5.75, 'USD', 1, 'kg'),
('5594000000006', 'Frozen Meatballs', @subIdFrozenMeat, 'MeatPro', 6.20, 'USD', 1, 'kg'),
('5594000000007', 'Frozen Lamb Chops', @subIdFrozenMeat, 'FrostMeat', 8.00, 'USD', 1, 'kg'),
('5594000000008', 'Frozen Sausages', @subIdFrozenMeat, 'MeatPro', 5.90, 'USD', 1, 'kg'),
('5594000000009', 'Frozen Duck', @subIdFrozenMeat, 'FrostMeat', 7.50, 'USD', 1, 'kg'),
('5594000000010', 'Frozen Veal', @subIdFrozenMeat, 'MeatPro', 9.00, 'USD', 1, 'kg');

DECLARE @subIdIceCream INT = (SELECT id FROM subcategories WHERE name = 'Ice Cream');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Brand: Algida
('5594100000001', 'Vanilla Classic', @subIdIceCream, 'Algida', 3.50, 'USD', 500, 'ml'),
('5594100000002', 'Chocolate Fudge', @subIdIceCream, 'Algida', 3.70, 'USD', 500, 'ml'),
('5594100000003', 'Strawberry Swirl', @subIdIceCream, 'Algida', 3.65, 'USD', 500, 'ml'),
('5594100000004', 'Mint Choco Chip', @subIdIceCream, 'Algida', 3.80, 'USD', 500, 'ml'),
('5594100000005', 'Caramel Delight', @subIdIceCream, 'Algida', 3.90, 'USD', 500, 'ml'),

-- Brand: Koral
('5594100000006', 'Creamy Vanilla', @subIdIceCream, 'Koral', 3.55, 'USD', 500, 'ml'),
('5594100000007', 'Chocolate Dream', @subIdIceCream, 'Koral', 3.75, 'USD', 500, 'ml'),
('5594100000008', 'Forest Fruits', @subIdIceCream, 'Koral', 3.60, 'USD', 500, 'ml'),
('5594100000009', 'Lemon Sorbet', @subIdIceCream, 'Koral', 3.50, 'USD', 500, 'ml'),
('5594100000010', 'Hazelnut Cream', @subIdIceCream, 'Koral', 3.85, 'USD', 500, 'ml'),

-- Brand: Grycan
('5594100000011', 'Classic Vanilla', @subIdIceCream, 'Grycan', 3.60, 'USD', 500, 'ml'),
('5594100000012', 'Belgian Chocolate', @subIdIceCream, 'Grycan', 3.80, 'USD', 500, 'ml'),
('5594100000013', 'Raspberry Sorbet', @subIdIceCream, 'Grycan', 3.65, 'USD', 500, 'ml'),
('5594100000014', 'Pistachio Nut', @subIdIceCream, 'Grycan', 4.00, 'USD', 500, 'ml'),
('5594100000015', 'Strawberry Delight', @subIdIceCream, 'Grycan', 3.70, 'USD', 500, 'ml'),

-- Brand: Zott
('5594100000016', 'Vanilla Bean', @subIdIceCream, 'Zott', 3.55, 'USD', 500, 'ml'),
('5594100000017', 'Choco Crunch', @subIdIceCream, 'Zott', 3.75, 'USD', 500, 'ml'),
('5594100000018', 'Mango Tango', @subIdIceCream, 'Zott', 3.65, 'USD', 500, 'ml'),
('5594100000019', 'Blueberry Blast', @subIdIceCream, 'Zott', 3.80, 'USD', 500, 'ml'),
('5594100000020', 'Caramel Swirl', @subIdIceCream, 'Zott', 3.90, 'USD', 500, 'ml'),

-- Brand: Grycan Premium
('5594100000021', 'Salted Caramel', @subIdIceCream, 'Grycan Premium', 4.10, 'USD', 500, 'ml'),
('5594100000022', 'Dark Chocolate', @subIdIceCream, 'Grycan Premium', 4.20, 'USD', 500, 'ml'),
('5594100000023', 'Lemon Sorbet', @subIdIceCream, 'Grycan Premium', 3.90, 'USD', 500, 'ml'),
('5594100000024', 'Hazelnut Cream', @subIdIceCream, 'Grycan Premium', 4.15, 'USD', 500, 'ml'),
('5594100000025', 'Tiramisu', @subIdIceCream, 'Grycan Premium', 4.25, 'USD', 500, 'ml'),

-- Brand: Mlekovita
('5594100000026', 'Vanilla Classic', @subIdIceCream, 'Mlekovita', 3.55, 'USD', 500, 'ml'),
('5594100000027', 'Chocolate Fudge', @subIdIceCream, 'Mlekovita', 3.70, 'USD', 500, 'ml'),
('5594100000028', 'Strawberry Swirl', @subIdIceCream, 'Mlekovita', 3.60, 'USD', 500, 'ml'),
('5594100000029', 'Mint Chip', @subIdIceCream, 'Mlekovita', 3.80, 'USD', 500, 'ml'),
('5594100000030', 'Caramel Delight', @subIdIceCream, 'Mlekovita', 3.90, 'USD', 500, 'ml');

DECLARE @subIdFrozenDinners INT = (SELECT id FROM subcategories WHERE name = 'Frozen Dinners');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Brand: Frosta
('5594200000001', 'Fish Fillet with Vegetables', @subIdFrozenDinners, 'Frosta', 6.50, 'USD', 350, 'g'),
('5594200000002', 'Vegetable Stir Fry', @subIdFrozenDinners, 'Frosta', 5.90, 'USD', 300, 'g'),
('5594200000003', 'Chicken Curry', @subIdFrozenDinners, 'Frosta', 7.20, 'USD', 350, 'g'),
('5594200000004', 'Lasagna Classic', @subIdFrozenDinners, 'Frosta', 7.80, 'USD', 400, 'g'),
('5594200000005', 'Shrimp Risotto', @subIdFrozenDinners, 'Frosta', 8.00, 'USD', 350, 'g'),

-- Brand: Bonduelle
('5594200000006', 'Vegetable Medley', @subIdFrozenDinners, 'Bonduelle', 6.00, 'USD', 300, 'g'),
('5594200000007', 'Chicken Stroganoff', @subIdFrozenDinners, 'Bonduelle', 7.50, 'USD', 350, 'g'),
('5594200000008', 'Beef Stew', @subIdFrozenDinners, 'Bonduelle', 7.90, 'USD', 400, 'g'),
('5594200000009', 'Seafood Paella', @subIdFrozenDinners, 'Bonduelle', 8.50, 'USD', 350, 'g'),
('5594200000010', 'Vegetable Pasta Bake', @subIdFrozenDinners, 'Bonduelle', 6.80, 'USD', 350, 'g'),

-- Brand: Hortex
('5594200000011', 'Chicken with Rice', @subIdFrozenDinners, 'Hortex', 7.00, 'USD', 350, 'g'),
('5594200000012', 'Beef Stroganoff', @subIdFrozenDinners, 'Hortex', 7.70, 'USD', 400, 'g'),
('5594200000013', 'Vegetable Curry', @subIdFrozenDinners, 'Hortex', 6.30, 'USD', 300, 'g'),
('5594200000014', 'Macaroni and Cheese', @subIdFrozenDinners, 'Hortex', 6.90, 'USD', 350, 'g'),
('5594200000015', 'Salmon with Vegetables', @subIdFrozenDinners, 'Hortex', 8.10, 'USD', 350, 'g'),

-- Brand: Krakus
('5594200000016', 'Pierogi with Potatoes', @subIdFrozenDinners, 'Krakus', 7.20, 'USD', 400, 'g'),
('5594200000017', 'Cabbage Rolls', @subIdFrozenDinners, 'Krakus', 7.50, 'USD', 400, 'g'),
('5594200000018', 'Chicken Kiev', @subIdFrozenDinners, 'Krakus', 8.00, 'USD', 350, 'g'),
('5594200000019', 'Beef Goulash', @subIdFrozenDinners, 'Krakus', 7.90, 'USD', 400, 'g'),
('5594200000020', 'Vegetable Stew', @subIdFrozenDinners, 'Krakus', 6.80, 'USD', 350, 'g');

DECLARE @subIdPizza INT = (SELECT id FROM subcategories WHERE name = 'Pizza');

INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Brand: Dr. Oetker
('5594300000001', 'Ristorante Margherita', @subIdPizza, 'Dr. Oetker', 5.99, 'USD', 320, 'g'),
('5594300000002', 'Ristorante Pepperoni', @subIdPizza, 'Dr. Oetker', 6.49, 'USD', 320, 'g'),
('5594300000003', 'Ristorante Quattro Formaggi', @subIdPizza, 'Dr. Oetker', 6.79, 'USD', 320, 'g'),
('5594300000004', 'Ristorante Funghi', @subIdPizza, 'Dr. Oetker', 6.29, 'USD', 320, 'g'),
('5594300000005', 'Ristorante Prosciutto', @subIdPizza, 'Dr. Oetker', 6.59, 'USD', 320, 'g'),

-- Brand: Casa di Mama
('5594300000006', 'Classic Margherita', @subIdPizza, 'Casa di Mama', 7.20, 'USD', 350, 'g'),
('5594300000007', 'Four Cheese', @subIdPizza, 'Casa di Mama', 7.80, 'USD', 350, 'g'),
('5594300000008', 'Pepperoni Feast', @subIdPizza, 'Casa di Mama', 7.50, 'USD', 350, 'g'),
('5594300000009', 'Vegetarian Delight', @subIdPizza, 'Casa di Mama', 7.10, 'USD', 350, 'g'),
('5594300000010', 'BBQ Chicken', @subIdPizza, 'Casa di Mama', 7.90, 'USD', 350, 'g'),

-- Brand: Bella Italia
('5594300000011', 'Classic Pepperoni', @subIdPizza, 'Bella Italia', 6.99, 'USD', 340, 'g'),
('5594300000012', 'Hawaiian', @subIdPizza, 'Bella Italia', 7.20, 'USD', 340, 'g'),
('5594300000013', 'Four Seasons', @subIdPizza, 'Bella Italia', 7.50, 'USD', 340, 'g'),
('5594300000014', 'Vegetable Medley', @subIdPizza, 'Bella Italia', 7.00, 'USD', 340, 'g'),
('5594300000015', 'Meat Lovers', @subIdPizza, 'Bella Italia', 7.80, 'USD', 340, 'g'),

-- Brand: Ristorante Italiano
('5594300000016', 'Margherita Speciale', @subIdPizza, 'Ristorante Italiano', 6.59, 'USD', 330, 'g'),
('5594300000017', 'Quattro Stagioni', @subIdPizza, 'Ristorante Italiano', 7.10, 'USD', 330, 'g'),
('5594300000018', 'Diavola', @subIdPizza, 'Ristorante Italiano', 7.40, 'USD', 330, 'g'),
('5594300000019', 'Funghi e Prosciutto', @subIdPizza, 'Ristorante Italiano', 7.20, 'USD', 330, 'g'),
('5594300000020', 'Capricciosa', @subIdPizza, 'Ristorante Italiano', 7.30, 'USD', 330, 'g'),

-- Brand: Pizza King
('5594300000021', 'Classic Cheese', @subIdPizza, 'Pizza King', 6.50, 'USD', 350, 'g'),
('5594300000022', 'Pepperoni Classic', @subIdPizza, 'Pizza King', 6.80, 'USD', 350, 'g'),
('5594300000023', 'Veggie Supreme', @subIdPizza, 'Pizza King', 6.70, 'USD', 350, 'g'),
('5594300000024', 'BBQ Meat', @subIdPizza, 'Pizza King', 7.00, 'USD', 350, 'g'),
('5594300000025', 'Four Cheese Deluxe', @subIdPizza, 'Pizza King', 7.20, 'USD', 350, 'g'),

-- Brand: Italiano Bella
('5594300000026', 'Margherita', @subIdPizza, 'Italiano Bella', 6.90, 'USD', 340, 'g'),
('5594300000027', 'Pepperoni', @subIdPizza, 'Italiano Bella', 7.10, 'USD', 340, 'g'),
('5594300000028', 'Mushroom Feast', @subIdPizza, 'Italiano Bella', 6.80, 'USD', 340, 'g'),
('5594300000029', 'Spinach & Cheese', @subIdPizza, 'Italiano Bella', 7.00, 'USD', 340, 'g'),
('5594300000030', 'Meat Feast', @subIdPizza, 'Italiano Bella', 7.50, 'USD', 340, 'g');