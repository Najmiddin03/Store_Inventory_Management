DECLARE @subIdFruits INT = (SELECT id FROM subcategories WHERE name='Fresh Fruits');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5562700000001', 'Apple Red', @subIdFruits, NULL, 1.20, 'USD', 1, 'kg'),
('5562700000002', 'Apple Green', @subIdFruits, NULL, 1.15, 'USD', 1, 'kg'),
('5562700000003', 'Apple Golden', @subIdFruits, NULL, 1.25, 'USD', 1, 'kg'),
('5562700000004', 'Banana', @subIdFruits, 'TropicalCo', 1.10, 'USD', 1, 'kg'),
('5562700000005', 'Orange', @subIdFruits, 'CitrusWorld', 1.30, 'USD', 1, 'kg'),
('5562700000006', 'Mandarin', @subIdFruits, 'CitrusWorld', 1.35, 'USD', 1, 'kg'),
('5562700000007', 'Pear', @subIdFruits, NULL, 1.40, 'USD', 1, 'kg'),
('5562700000008', 'Plum', @subIdFruits, NULL, 1.50, 'USD', 1, 'kg'),
('5562700000009', 'Peach', @subIdFruits, NULL, 1.45, 'USD', 1, 'kg'),
('5562700000010', 'Nectarine', @subIdFruits, NULL, 1.60, 'USD', 1, 'kg'),
('5562700000011', 'Cherry', @subIdFruits, NULL, 2.00, 'USD', 1, 'kg'),
('5562700000012', 'Strawberry', @subIdFruits, NULL, 2.50, 'USD', 1, 'kg'),
('5562700000013', 'Blueberry', @subIdFruits, NULL, 3.00, 'USD', 1, 'kg'),
('5562700000014', 'Raspberry', @subIdFruits, NULL, 3.20, 'USD', 1, 'kg'),
('5562700000015', 'Grape Red', @subIdFruits, NULL, 1.90, 'USD', 1, 'kg'),
('5562700000016', 'Grape Green', @subIdFruits, NULL, 1.85, 'USD', 1, 'kg'),
('5562700000017', 'Watermelon', @subIdFruits, NULL, 0.90, 'USD', 1, 'kg'),
('5562700000018', 'Melon', @subIdFruits, NULL, 1.00, 'USD', 1, 'kg'),
('5562700000019', 'Pineapple', @subIdFruits, 'TropicalCo', 1.70, 'USD', 1, 'kg'),
('5562700000020', 'Pomegranate', @subIdFruits, NULL, 2.10, 'USD', 1, 'kg'),
('5562700000021', 'Kiwi', @subIdFruits, NULL, 2.00, 'USD', 1, 'kg'),
('5562700000022', 'Lemon', @subIdFruits, 'CitrusWorld', 1.50, 'USD', 1, 'kg'),
('5562700000023', 'Lime', @subIdFruits, 'CitrusWorld', 1.40, 'USD', 1, 'kg'),
('5562700000024', 'Cranberry', @subIdFruits, NULL, 2.80, 'USD', 1, 'kg'),
('5562700000025', 'Blackberry', @subIdFruits, NULL, 3.10, 'USD', 1, 'kg'),
('5562700000026', 'Apricot', @subIdFruits, NULL, 1.55, 'USD', 1, 'kg'),
('5562700000027', 'Fig', @subIdFruits, NULL, 3.50, 'USD', 1, 'kg'),
('5562700000028', 'Coconut', @subIdFruits, 'TropicalCo', 2.00, 'USD', 1, 'kg'),
('5562700000029', 'Date', @subIdFruits, NULL, 3.30, 'USD', 1, 'kg'),
('5562700000030', 'Passion Fruit', @subIdFruits, NULL, 3.70, 'USD', 1, 'kg');

DECLARE @subIdVegetables INT = (SELECT id FROM subcategories WHERE name='Fresh Vegetables');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5562970000001', 'Carrot', @subIdVegetables, NULL, 0.80, 'USD', 1, 'kg'),
('5562970000002', 'Potato', @subIdVegetables, NULL, 0.60, 'USD', 1, 'kg'),
('5562970000003', 'Onion', @subIdVegetables, NULL, 0.70, 'USD', 1, 'kg'),
('5562970000004', 'Tomato', @subIdVegetables, NULL, 1.20, 'USD', 1, 'kg'),
('5562970000005', 'Cucumber', @subIdVegetables, NULL, 1.00, 'USD', 1, 'kg'),
('5562970000006', 'Bell Pepper Red', @subIdVegetables, NULL, 1.50, 'USD', 1, 'kg'),
('5562970000007', 'Bell Pepper Green', @subIdVegetables, NULL, 1.40, 'USD', 1, 'kg'),
('5562970000008', 'Lettuce', @subIdVegetables, NULL, 1.10, 'USD', 1, 'kg'),
('5562970000009', 'Spinach', @subIdVegetables, NULL, 1.30, 'USD', 1, 'kg'),
('5562970000010', 'Broccoli', @subIdVegetables, NULL, 1.60, 'USD', 1, 'kg'),
('5562970000011', 'Cauliflower', @subIdVegetables, NULL, 1.50, 'USD', 1, 'kg'),
('5562970000012', 'Green Beans', @subIdVegetables, NULL, 1.70, 'USD', 1, 'kg'),
('5562970000013', 'Peas', @subIdVegetables, NULL, 1.60, 'USD', 1, 'kg'),
('5562970000014', 'Zucchini', @subIdVegetables, NULL, 1.20, 'USD', 1, 'kg'),
('5562970000015', 'Eggplant', @subIdVegetables, NULL, 1.30, 'USD', 1, 'kg'),
('5562970000016', 'Celery', @subIdVegetables, NULL, 1.00, 'USD', 1, 'kg'),
('5562970000017', 'Mushrooms', @subIdVegetables, NULL, 2.00, 'USD', 1, 'kg'),
('5562970000018', 'Radish', @subIdVegetables, NULL, 0.90, 'USD', 1, 'kg'),
('5562970000019', 'Sweet Corn', @subIdVegetables, NULL, 1.20, 'USD', 1, 'kg'),
('5562970000020', 'Pumpkin', @subIdVegetables, NULL, 1.10, 'USD', 1, 'kg'),
('5562970000021', 'Garlic', @subIdVegetables, NULL, 2.20, 'USD', 1, 'kg'),
('5562970000022', 'Leek', @subIdVegetables, NULL, 1.30, 'USD', 1, 'kg'),
('5562970000023', 'Chili Pepper', @subIdVegetables, NULL, 1.80, 'USD', 1, 'kg'),
('5562970000024', 'Kale', @subIdVegetables, NULL, 1.40, 'USD', 1, 'kg'),
('5562970000025', 'Brussels Sprouts', @subIdVegetables, NULL, 1.70, 'USD', 1, 'kg'),
('5562970000026', 'Artichoke', @subIdVegetables, NULL, 2.50, 'USD', 1, 'kg'),
('5562970000027', 'Asparagus', @subIdVegetables, NULL, 3.00, 'USD', 1, 'kg'),
('5562970000028', 'Cabbage Green', @subIdVegetables, NULL, 0.90, 'USD', 1, 'kg'),
('5562970000029', 'Cabbage Red', @subIdVegetables, NULL, 1.00, 'USD', 1, 'kg'),
('5562970000030', 'Fennel', @subIdVegetables, NULL, 1.80, 'USD', 1, 'kg');


-- Cut & Packed Produce
DECLARE @subIdCutPacked INT = (SELECT id FROM subcategories WHERE name='Cut & Packed Produce');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5563240000001', 'Cut Carrots', @subIdCutPacked, NULL, 2.50, 'USD', 0.3, 'kg'),
('5563240000002', 'Cut Pineapple', @subIdCutPacked, NULL, 3.00, 'USD', 0.4, 'kg'),
('5563240000003', 'Sliced Mango', @subIdCutPacked, NULL, 3.20, 'USD', 0.3, 'kg'),
('5563240000004', 'Cut Watermelon', @subIdCutPacked, NULL, 2.80, 'USD', 0.5, 'kg'),
('5563240000005', 'Cut Melon', @subIdCutPacked, NULL, 2.60, 'USD', 0.5, 'kg'),
('5563240000006', 'Cut Papaya', @subIdCutPacked, NULL, 3.10, 'USD', 0.4, 'kg'),
('5563240000007', 'Prepacked Salad Mix', @subIdCutPacked, NULL, 2.90, 'USD', 0.2, 'kg'),
('5563240000008', 'Cut Cucumber', @subIdCutPacked, NULL, 2.40, 'USD', 0.3, 'kg'),
('5563240000009', 'Cut Broccoli', @subIdCutPacked, NULL, 2.80, 'USD', 0.3, 'kg'),
('5563240000010', 'Cut Cauliflower', @subIdCutPacked, NULL, 2.90, 'USD', 0.3, 'kg');

-- Exotic Fruits
DECLARE @subIdExoticFruits INT = (SELECT id FROM subcategories WHERE name='Exotic Fruits');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5563510000001', 'Dragon Fruit', @subIdExoticFruits, NULL, 5.50, 'USD', 1, 'kg'),
('5563510000002', 'Rambutan', @subIdExoticFruits, NULL, 6.00, 'USD', 1, 'kg'),
('5563510000003', 'Passion Fruit', @subIdExoticFruits, NULL, 5.80, 'USD', 1, 'kg'),
('5563510000004', 'Mangosteen', @subIdExoticFruits, NULL, 7.00, 'USD', 1, 'kg'),
('5563510000005', 'Jackfruit', @subIdExoticFruits, NULL, 4.50, 'USD', 1, 'kg'),
('5563510000006', 'Star Fruit', @subIdExoticFruits, NULL, 6.20, 'USD', 1, 'kg'),
('5563510000007', 'Lychee', @subIdExoticFruits, NULL, 5.00, 'USD', 1, 'kg'),
('5563510000008', 'Kiwano', @subIdExoticFruits, NULL, 6.50, 'USD', 1, 'kg'),
('5563510000009', 'Durian', @subIdExoticFruits, NULL, 7.50, 'USD', 1, 'kg'),
('5563510000010', 'Tamarillo', @subIdExoticFruits, NULL, 5.90, 'USD', 1, 'kg');

-- Salads & Mixes
DECLARE @subIdSaladsMixes INT = (SELECT id FROM subcategories WHERE name='Salads & Mixes');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5563780000001', 'Caesar Salad Mix', @subIdSaladsMixes, NULL, 3.50, 'USD', 0.25, 'kg'),
('5563780000002', 'Greek Salad Mix', @subIdSaladsMixes, NULL, 3.70, 'USD', 0.25, 'kg'),
('5563780000003', 'Garden Salad Mix', @subIdSaladsMixes, NULL, 3.40, 'USD', 0.25, 'kg'),
('5563780000004', 'Asian Salad Mix', @subIdSaladsMixes, NULL, 3.80, 'USD', 0.25, 'kg'),
('5563780000005', 'Kale & Quinoa Mix', @subIdSaladsMixes, NULL, 4.00, 'USD', 0.25, 'kg'),
('5563780000006', 'Spinach & Strawberry Mix', @subIdSaladsMixes, NULL, 3.90, 'USD', 0.25, 'kg'),
('5563780000007', 'Arugula Mix', @subIdSaladsMixes, NULL, 3.60, 'USD', 0.25, 'kg'),
('5563780000008', 'Coleslaw Mix', @subIdSaladsMixes, NULL, 3.30, 'USD', 0.25, 'kg'),
('5563780000009', 'Broccoli & Cauliflower Mix', @subIdSaladsMixes, NULL, 3.70, 'USD', 0.25, 'kg'),
('5563780000010', 'Cabbage & Carrot Mix', @subIdSaladsMixes, NULL, 3.40, 'USD', 0.25, 'kg');

-- Organic Produce
DECLARE @subIdOrganicProduce INT = (SELECT id FROM subcategories WHERE name='Organic Produce');
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5564050000001', 'Organic Apple', @subIdOrganicProduce, NULL, 2.50, 'USD', 1, 'kg'),
('5564050000002', 'Organic Banana', @subIdOrganicProduce, NULL, 2.20, 'USD', 1, 'kg'),
('5564050000003', 'Organic Carrot', @subIdOrganicProduce, NULL, 2.10, 'USD', 1, 'kg'),
('5564050000004', 'Organic Tomato', @subIdOrganicProduce, NULL, 2.80, 'USD', 1, 'kg'),
('5564050000005', 'Organic Potato', @subIdOrganicProduce, NULL, 2.00, 'USD', 1, 'kg'),
('5564050000006', 'Organic Cucumber', @subIdOrganicProduce, NULL, 2.30, 'USD', 1, 'kg'),
('5564050000007', 'Organic Spinach', @subIdOrganicProduce, NULL, 2.60, 'USD', 1, 'kg'),
('5564050000008', 'Organic Lettuce', @subIdOrganicProduce, NULL, 2.40, 'USD', 1, 'kg'),
('5564050000009', 'Organic Broccoli', @subIdOrganicProduce, NULL, 2.90, 'USD', 1, 'kg'),
('5564050000010', 'Organic Cauliflower', @subIdOrganicProduce, NULL, 2.80, 'USD', 1, 'kg');
