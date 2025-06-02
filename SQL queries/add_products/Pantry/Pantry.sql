-- Pasta & Rice
declare @subId int=(select id from subcategories where name='Pasta & Rice')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
-- Pasta
('5552100000001', 'Barilla Penne Rigate 500g',       @subId, 'Barilla',    1.49, 'USD', 0.5, 'kg'),
('5552100000002', 'Barilla Spaghetti No.5 500g',     @subId, 'Barilla',    1.59, 'USD', 0.5, 'kg'),
('5552100000003', 'Barilla Fusilli 500g',            @subId, 'Barilla',    1.49, 'USD', 0.5, 'kg'),
('5552100000004', 'Barilla Farfalle 500g',           @subId, 'Barilla',    1.69, 'USD', 0.5, 'kg'),
('5552100000005', 'Barilla Tagliatelle 500g',        @subId, 'Barilla',    1.79, 'USD', 0.5, 'kg'),

('5552100000006', 'Lubella Penne 500g',              @subId, 'Lubella',    1.19, 'USD', 0.5, 'kg'),
('5552100000007', 'Lubella Spaghetti 500g',          @subId, 'Lubella',    1.29, 'USD', 0.5, 'kg'),
('5552100000008', 'Lubella Fusilli 500g',            @subId, 'Lubella',    1.19, 'USD', 0.5, 'kg'),
('5552100000009', 'Lubella Lasagna 500g',            @subId, 'Lubella',    1.49, 'USD', 0.5, 'kg'),
('55521000000010','Lubella Farfalle 500g',           @subId, 'Lubella',    1.39, 'USD', 0.5, 'kg'),

('55521000000011','Czaniecki Egg Noodles 250g',      @subId, 'Czaniecki',  1.29, 'USD', 0.25, 'kg'),
('55521000000012','Czaniecki Twisted Pasta 500g',    @subId, 'Czaniecki',  1.19, 'USD', 0.5, 'kg'),
('55521000000013','Czaniecki Shell Pasta 500g',      @subId, 'Czaniecki',  1.29, 'USD', 0.5, 'kg'),
('55521000000014','Czaniecki Tagliatelle 250g',      @subId, 'Czaniecki',  1.39, 'USD', 0.25, 'kg'),
('55521000000015','Czaniecki Lasagna 500g',          @subId, 'Czaniecki',  1.49, 'USD', 0.5, 'kg'),

('55521000000016','Misko Penne 500g',                @subId, 'Misko',      1.29, 'USD', 0.5, 'kg'),
('55521000000017','Misko Spaghetti 500g',            @subId, 'Misko',      1.39, 'USD', 0.5, 'kg'),
('55521000000018','Misko Macaroni 500g',             @subId, 'Misko',      1.19, 'USD', 0.5, 'kg'),
('55521000000019','Misko Twisted Pasta 500g',        @subId, 'Misko',      1.29, 'USD', 0.5, 'kg'),
('55521000000020','Misko Shells 500g',               @subId, 'Misko',      1.29, 'USD', 0.5, 'kg'),

-- Rice
('5552100000021', 'Uncle Ben`s Long Grain Rice 1kg',        @subId, 'Uncle Ben`s', 2.49, 'USD', 1, 'kg'),
('5552100000022', 'Uncle Ben`s Basmati Rice 1kg',           @subId, 'Uncle Ben`s', 2.79, 'USD', 1, 'kg'),
('5552100000023', 'Kupiec Parboiled Rice 1kg',              @subId, 'Kupiec',      1.89, 'USD', 1, 'kg'),
('5552100000024', 'Kupiec Brown Rice 1kg',                  @subId, 'Kupiec',      1.99, 'USD', 1, 'kg'),
('5552100000025', 'Sonko Jasmine Rice 1kg',                 @subId, 'Sonko',       2.29, 'USD', 1, 'kg'),
('5552100000026', 'Sonko Brown Rice 1kg',                   @subId, 'Sonko',       2.09, 'USD', 1, 'kg'),
('5552100000027', 'Gold Parboiled Rice 4x100g',             @subId, 'Gold Pack',   1.49, 'USD', 0.4, 'kg'),
('5552100000028', 'Gold Jasmine Rice 4x100g',               @subId, 'Gold Pack',   1.69, 'USD', 0.4, 'kg'),
('5552100000029', 'Britta Long Grain Rice 1kg',             @subId, 'Britta',      1.79, 'USD', 1, 'kg'),
('5552100000030', 'Britta Basmati Rice 1kg',                @subId, 'Britta',      1.99, 'USD', 1, 'kg');

-- Canned food
declare @subId2 int=(select id from subcategories where name='Canned Food')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
-- Heinz
('5552200000001', 'Heinz Baked Beans in Tomato Sauce 415g', @subId2, 'Heinz',     1.49, 'USD', 0.415, 'kg'),
('5552200000002', 'Heinz Canned Spaghetti 400g',            @subId2, 'Heinz',     1.39, 'USD', 0.4,   'kg'),
('5552200000003', 'Heinz Canned Chili Beans 420g',          @subId2, 'Heinz',     1.59, 'USD', 0.42,  'kg'),
('5552200000004', 'Heinz Beanz with Sausages 415g',         @subId2, 'Heinz',     1.69, 'USD', 0.415, 'kg'),
('5552200000005', 'Heinz Mixed Vegetables 400g',            @subId2, 'Heinz',     1.29, 'USD', 0.4,   'kg'),

-- Dawtona
('5552200000006', 'Dawtona Canned Corn 340g',               @subId2, 'Dawtona',   0.99, 'USD', 0.34,  'kg'),
('5552200000007', 'Dawtona Canned Peas 400g',               @subId2, 'Dawtona',   1.09, 'USD', 0.4,   'kg'),
('5552200000008', 'Dawtona Canned Beans Red 400g',          @subId2, 'Dawtona',   1.19, 'USD', 0.4,   'kg'),
('5552200000009', 'Dawtona Pickled Cucumbers 500g',         @subId2, 'Dawtona',   1.39, 'USD', 0.5,   'kg'),
('5552200000010', 'Dawtona Sauerkraut 500g',                @subId2, 'Dawtona',   1.29, 'USD', 0.5,   'kg'),

-- Bonduelle
('5552200000011', 'Bonduelle Sweet Corn 300g',              @subId2, 'Bonduelle', 1.39, 'USD', 0.3,   'kg'),
('5552200000012', 'Bonduelle Red Kidney Beans 400g',        @subId2, 'Bonduelle', 1.49, 'USD', 0.4,   'kg'),
('5552200000013', 'Bonduelle Peas & Carrots 400g',          @subId2, 'Bonduelle', 1.59, 'USD', 0.4,   'kg'),
('5552200000014', 'Bonduelle Mexican Mix 400g',             @subId2, 'Bonduelle', 1.69, 'USD', 0.4,   'kg'),
('5552200000015', 'Bonduelle Lentils 400g',                 @subId2, 'Bonduelle', 1.29, 'USD', 0.4,   'kg'),

-- Kroger
('5552200000016', 'Kroger Black Beans 425g',                @subId2, 'Kroger',    1.09, 'USD', 0.425, 'kg'),
('5552200000017', 'Kroger Pinto Beans 425g',                @subId2, 'Kroger',    1.09, 'USD', 0.425, 'kg'),
('5552200000018', 'Kroger Canned Corn 400g',                @subId2, 'Kroger',    0.95, 'USD', 0.4,   'kg'),
('5552200000019', 'Kroger Canned Tomatoes 400g',            @subId2, 'Kroger',    1.19, 'USD', 0.4,   'kg'),
('5552200000020', 'Kroger Mixed Beans 400g',                @subId2, 'Kroger',    1.25, 'USD', 0.4,   'kg');

--Sauces & Condiments
declare @subId3 int=(select id from subcategories where name='Sauces & Condiments')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
-- Heinz
('5552300000001', 'Heinz Tomato Ketchup 460g', @subId3, 'Heinz', 2.49, 'USD', 0.46, 'kg'),
('5552300000002', 'Heinz Yellow Mustard 400g', @subId3, 'Heinz', 2.19, 'USD', 0.4, 'kg'),
('5552300000003', 'Heinz BBQ Sauce Classic 500g', @subId3, 'Heinz', 2.79, 'USD', 0.5, 'kg'),
('5552300000004', 'Heinz Garlic Sauce 220ml', @subId3, 'Heinz', 1.99, 'USD', 0.22, 'l'),
('5552300000005', 'Heinz Sweet Chili Sauce 300ml', @subId3, 'Heinz', 2.29, 'USD', 0.3, 'l'),

-- Kamis
('5552300000006', 'Kamis Horseradish Sauce 180g', @subId3, 'Kamis', 1.59, 'USD', 0.18, 'kg'),
('5552300000007', 'Kamis Dijon Mustard 200g', @subId3, 'Kamis', 1.69, 'USD', 0.2, 'kg'),
('5552300000008', 'Kamis Remoulade Sauce 250g', @subId3, 'Kamis', 1.89, 'USD', 0.25, 'kg'),
('5552300000009', 'Kamis Tartar Sauce 200g', @subId3, 'Kamis', 1.75, 'USD', 0.2, 'kg'),
('5552300000010', 'Kamis Mild Ketchup 470g', @subId3, 'Kamis', 2.09, 'USD', 0.47, 'kg'),

-- Pudliszki
('5552300000011', 'Pudliszki Tomato Concentrate 190g', @subId3, 'Pudliszki', 1.29, 'USD', 0.19, 'kg'),
('5552300000012', 'Pudliszki Ketchup Hot 480g', @subId3, 'Pudliszki', 2.39, 'USD', 0.48, 'kg'),
('5552300000013', 'Pudliszki Paprika Sauce 500g', @subId3, 'Pudliszki', 2.59, 'USD', 0.5, 'kg'),
('5552300000014', 'Pudliszki Curry Sauce 300g', @subId3, 'Pudliszki', 1.99, 'USD', 0.3, 'kg'),
('5552300000015', 'Pudliszki BBQ Sauce Spicy 450g', @subId3, 'Pudliszki', 2.49, 'USD', 0.45, 'kg'),

-- Kikkoman
('5552300000016', 'Kikkoman Soy Sauce 250ml', @subId3, 'Kikkoman', 3.49, 'USD', 0.25, 'l'),
('5552300000017', 'Kikkoman Teriyaki Marinade 300ml', @subId3, 'Kikkoman', 3.79, 'USD', 0.3, 'l'),
('5552300000018', 'Kikkoman Ponzu Citrus Soy Sauce 250ml', @subId3, 'Kikkoman', 3.99, 'USD', 0.25, 'l'),
('5552300000019', 'Kikkoman Wasabi Sauce 200ml', @subId3, 'Kikkoman', 3.29, 'USD', 0.2, 'l'),
('5552300000020', 'Kikkoman Less Salt Soy Sauce 250ml', @subId3, 'Kikkoman', 3.59, 'USD', 0.25, 'l');


-- Flour & Baking
declare @subId4 int=(select id from subcategories where name='Flour & Baking')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5552400000001', 'Lubella Wheat Flour Type 500 1kg', @subId4, 'Lubella', 1.29, 'USD', 1, 'kg'),
('5552400000002', 'Lubella Wholemeal Rye Flour 1kg', @subId4, 'Lubella', 1.49, 'USD', 1, 'kg'),
('5552400000009', 'Lubella Semolina Flour 1kg', @subId4, 'Lubella', 1.69, 'USD', 1, 'kg'),
('5552400000003', 'Basia Cake Flour Type 450 1kg', @subId4, 'Basia', 1.39, 'USD', 1, 'kg'),
('5552400000004', 'Basia Bread Flour Type 750 1kg', @subId4, 'Basia', 1.59, 'USD', 1, 'kg'),
('5552400000010', 'Basia Multi-Grain Baking Flour 1kg', @subId4, 'Basia', 2.09, 'USD', 1, 'kg'),
('5552400000005', 'Mlyn Polski Spelt Flour 1kg', @subId4, 'Mlyn Polski', 1.89, 'USD', 1, 'kg'),
('5552400000006', 'Mlyn Polski Buckwheat Flour 1kg', @subId4, 'Mlyn Polski', 2.19, 'USD', 1, 'kg'),
('5552400000007', 'Szymanowska Wheat Flour Type 650 1kg', @subId4, 'Szymanowska', 1.29, 'USD', 1, 'kg'),
('5552400000008', 'Szymanowska Gluten-Free Flour Mix 1kg', @subId4, 'Szymanowska', 2.49, 'USD', 1, 'kg')

-- Sugar & Sweeteners
declare @subId5 int=(select id from subcategories where name='Sugar & Sweeteners')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5552500000001', 'Diamant White Sugar 1kg', @subId5, 'Diamant', 1.39, 'USD', 1, 'kg'),
('5552500000002', 'Diamant Powdered Sugar 500g', @subId5, 'Diamant', 1.19, 'USD', 0.5, 'kg'),
('5552500000003', 'Diamant Cane Sugar 1kg', @subId5, 'Diamant', 2.09, 'USD', 1, 'kg'),
('5552500000004', 'Kruger Stevia Sweetener 300 Tablets', @subId5, 'Kruger', 2.49, 'USD', 0.03, 'kg'),
('5552500000005', 'Kruger Sweetener Tablets 1200 pcs', @subId5, 'Kruger', 4.29, 'USD', 0.1, 'kg'),
('5552500000006', 'Cukromix Xylitol 500g', @subId5, 'Cukromix', 3.99, 'USD', 0.5, 'kg'),
('5552500000007', 'Cukromix Erythritol 500g', @subId5, 'Cukromix', 4.49, 'USD', 0.5, 'kg'),
('5552500000008', 'Wielkopolski Brown Sugar 1kg', @subId5, 'Wielkopolski', 1.89, 'USD', 1, 'kg'),
('5552500000009', 'Wielkopolski Vanilla Sugar 100g', @subId5, 'Wielkopolski', 0.79, 'USD', 0.1, 'kg'),
('5552500000010', 'Diamant Gel Sugar 2:1 500g', @subId5, 'Diamant', 1.89, 'USD', 0.5, 'kg');

-- Cooking Oils
declare @subId6 int=(select id from subcategories where name='Cooking Oils')
INSERT INTO products(SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit) VALUES
('5552600000001', 'Kujawski Rapeseed Oil 1L', @subId6, 'Kujawski', 3.49, 'USD', 1, 'l'),
('5552600000002', 'Kujawski Rapeseed Oil with Garlic 1L', @subId6, 'Kujawski', 3.89, 'USD', 1, 'l'),
('5552600000003', 'Krosno Sunflower Oil 1L', @subId6, 'Krosno', 3.29, 'USD', 1, 'l'),
('5552600000004', 'Krosno Corn Oil 1L', @subId6, 'Krosno', 3.69, 'USD', 1, 'l'),
('5552600000005', 'Monini Extra Virgin Olive Oil 500ml', @subId6, 'Monini', 6.49, 'USD', 0.5, 'l'),
('5552600000006', 'Monini Classico Olive Oil 1L', @subId6, 'Monini', 9.99, 'USD', 1, 'l'),
('5552600000007', 'Kamis Flavored Olive Oil Chili 250ml', @subId6, 'Kamis', 4.79, 'USD', 0.25, 'l'),
('5552600000008', 'Kamis Flavored Olive Oil Basil 250ml', @subId6, 'Kamis', 4.79, 'USD', 0.25, 'l'),
('5552600000009', 'Kujawski Olive & Rapeseed Mix 1L', @subId6, 'Kujawski', 4.99, 'USD', 1, 'l'),
('5552600000010', 'Monini Organic Olive Oil 500ml', @subId6, 'Monini', 7.49, 'USD', 0.5, 'l');
