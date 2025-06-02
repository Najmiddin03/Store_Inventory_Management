declare @subId int=(select id from subcategories where name='Chocolates')

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5541700000001', 'Milka Alpine Milk 100g',         @subID, 'Milka',       2.50, 'USD', 100, 'g'),
('5541700000002', 'Milka Oreo 100g',                @subID, 'Milka',       2.60, 'USD', 100, 'g'),
('5541700000003', 'Milka Strawberry 100g',          @subID, 'Milka',       2.55, 'USD', 100, 'g'),
('5541700000004', 'Milka Bubbly White 100g',        @subID, 'Milka',       2.70, 'USD', 100, 'g'),
('5541700000005', 'Milka Hazelnut 100g',            @subID, 'Milka',       2.65, 'USD', 100, 'g'),

('5541700000006', 'Schogetten Alpine Milk 100g',    @subID, 'Schogetten',  2.40, 'USD', 100, 'g'),
('5541700000007', 'Schogetten Hazelnut 100g',       @subID, 'Schogetten',  2.45, 'USD', 100, 'g'),
('5541700000008', 'Schogetten Cappuccino 100g',     @subID, 'Schogetten',  2.50, 'USD', 100, 'g'),
('5541700000009', 'Schogetten White Chocolate 100g',@subID, 'Schogetten',  2.55, 'USD', 100, 'g'),
('5541700000010', 'Schogetten Dark Chocolate 100g', @subID, 'Schogetten',  2.60, 'USD', 100, 'g'),

('5541700000011', 'Wedel Classic Milk 100g',        @subID, 'Wedel',       2.35, 'USD', 100, 'g'),
('5541700000012', 'Wedel Hazelnut 100g',            @subID, 'Wedel',       2.50, 'USD', 100, 'g'),
('5541700000013', 'Wedel Strawberry 100g',          @subID, 'Wedel',       2.45, 'USD', 100, 'g'),
('5541700000014', 'Wedel Coconut 100g',             @subID, 'Wedel',       2.55, 'USD', 100, 'g'),
('5541700000015', 'Wedel Dark 100g',                @subID, 'Wedel',       2.60, 'USD', 100, 'g'),

('5541700000016', 'Nestle Classic Milk 100g',       @subID, 'Nestle',      2.30, 'USD', 100, 'g'),
('5541700000017', 'Nestle White Chocolate 100g',    @subID, 'Nestle',      2.40, 'USD', 100, 'g'),
('5541700000018', 'Nestle Crunch 100g',             @subID, 'Nestle',      2.50, 'USD', 100, 'g'),
('5541700000019', 'Nestle Caramel 100g',            @subID, 'Nestle',      2.60, 'USD', 100, 'g'),
('5541700000020', 'Nestle Dark Chocolate 100g',     @subID, 'Nestle',      2.65, 'USD', 100, 'g'),

('5541700000021', 'Lindt Excellence 70% Cocoa 100g', @subID, 'Lindt',      3.10, 'USD', 100, 'g'),
('5541700000022', 'Lindt Hazelnut 100g',             @subID, 'Lindt',      3.20, 'USD', 100, 'g'),

('5541700000023', 'Alpen Gold Milk 100g',            @subID, 'Alpen Gold', 2.25, 'USD', 100, 'g'),
('5541700000024', 'Alpen Gold Raisins & Nuts 100g',  @subID, 'Alpen Gold', 2.35, 'USD', 100, 'g'),

('5541700000025', 'Wawel Kasztanki 100g',            @subID, 'Wawel',      2.20, 'USD', 100, 'g'),
('5541700000026', 'Wawel Tiki Taki 100g',            @subID, 'Wawel',      2.25, 'USD', 100, 'g'),

('5541700000027', 'Terravita Dark Chocolate 100g',   @subID, 'Terravita',  2.10, 'USD', 100, 'g'),
('5541700000028', 'Terravita Milk Chocolate 100g',   @subID, 'Terravita',  2.15, 'USD', 100, 'g'),

('5541700000029', 'Goplana Grzeski Chocolate 100g',  @subID, 'Goplana',    2.30, 'USD', 100, 'g'),
('5541700000030', 'Goplana Dark Chocolate 100g',     @subID, 'Goplana',    2.35, 'USD', 100, 'g'),

('5541700000031', 'Baron Milk Chocolate 100g',       @subID, 'Baron',      2.00, 'USD', 100, 'g'),
('5541700000032', 'Baron Hazelnut Chocolate 100g',   @subID, 'Baron',      2.10, 'USD', 100, 'g'),

('5541700000033', 'Magnetic Classic Milk 100g',      @subID, 'Magnetic',   2.05, 'USD', 100, 'g'),
('5541700000034', 'Magnetic Strawberry 100g',        @subID, 'Magnetic',   2.15, 'USD', 100, 'g'),

('5541700000035', 'Choceur Hazelnut 100g',           @subID, 'Choceur',    2.20, 'USD', 100, 'g'),
('5541700000036', 'Choceur Milk Chocolate 100g',     @subID, 'Choceur',    2.25, 'USD', 100, 'g'),

('5541700000037', 'Fin Carre White Chocolate 100g',  @subID, 'Fin Carre',  2.00, 'USD', 100, 'g'),
('5541700000038', 'Fin Carre Milk Chocolate 100g',   @subID, 'Fin Carre',  2.05, 'USD', 100, 'g'),

('5541700000039', 'Chateau Milk Chocolate 100g',     @subID, 'Chateau',    2.10, 'USD', 100, 'g'),
('5541700000040', 'Chateau Dark Chocolate 100g',     @subID, 'Chateau',    2.15, 'USD', 100, 'g');

declare @subID2 int=(select id from subcategories where name='Cookies & Biscuits')
select @subId2
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5541800000001', 'Oreo Original 154g',         @subID2, 'Oreo',         2.20, 'USD', 154, 'g'),
('5541800000002', 'Oreo Double Creme 170g',     @subID2, 'Oreo',         2.45, 'USD', 170, 'g'),
('5541800000003', 'LU Petit Beurre 200g',       @subID2, 'LU',           2.30, 'USD', 200, 'g'),
('5541800000004', 'LU Prince Chocolate 300g',   @subID2, 'LU',           3.00, 'USD', 300, 'g'),
('5541800000005', 'Delicje Szampanskie 147g',   @subID2, 'Wedel',        2.10, 'USD', 147, 'g'),

('5541800000006', 'Jezyki Classic 140g',        @subID2, 'Colian',       2.15, 'USD', 140, 'g'),
('5541800000007', 'Jezyki Kokosowe 140g',       @subID2, 'Colian',       2.20, 'USD', 140, 'g'),
('5541800000008', 'Hit Cocoa Creme 220g',       @subID2, 'Bahlsen',      2.40, 'USD', 220, 'g'),
('5541800000009', 'Hit Vanilla Creme 220g',     @subID2, 'Bahlsen',      2.40, 'USD', 220, 'g'),
('5541800000010', 'Familijne Wafers Vanilla',   @subID2, 'Colian',       2.00, 'USD', 160, 'g'),

('5541800000011', 'Tuc Classic Crackers 100g',  @subID2, 'LU',           1.85, 'USD', 100, 'g'),
('5541800000012', 'Tuc Paprika Crackers 100g',  @subID2, 'LU',           1.90, 'USD', 100, 'g'),
('5541800000013', 'Pieguski Chocolate Chip 130g',@subID2, 'Nestle',      2.35, 'USD', 130, 'g'),
('5541800000014', 'Pieguski Coconut 130g',      @subID2, 'Nestle',       2.35, 'USD', 130, 'g'),
('5541800000015', 'Lotte Choco Pie 168g',       @subID2, 'Lotte',        2.80, 'USD', 168, 'g'),

('5541800000016', 'Bahlsen Leibniz Butter 200g',@subID2, 'Bahlsen',      2.50, 'USD', 200, 'g'),
('5541800000017', 'Bahlsen Choco Leibniz 125g', @subID2, 'Bahlsen',      2.60, 'USD', 125, 'g'),
('5541800000018', 'Grzeski Mini Wafers 120g',   @subID2, 'Goplana',      2.10, 'USD', 120, 'g'),
('5541800000019', 'Grzeski Peanut Wafers 120g', @subID2, 'Goplana',      2.15, 'USD', 120, 'g'),
('5541800000020', 'Prince Polo Classic 50g',    @subID2, 'Olza',         1.30, 'USD', 50,  'g');

declare @subID3 int=(select id from subcategories where name='Candies')
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5541900000001', 'Skittles Fruits 152g',          @subID3, 'Skittles',     2.10, 'USD', 152, 'g'),
('5541900000002', 'Skittles Sour 152g',            @subID3, 'Skittles',     2.20, 'USD', 152, 'g'),
('5541900000003', 'Mamba Fruit Chews 106g',        @subID3, 'Storck',       1.60, 'USD', 106, 'g'),
('5541900000004', 'Toffifee 125g',                 @subID3, 'Storck',       2.50, 'USD', 125, 'g'),
('5541900000005', 'Werther`s Original Soft 135g',  @subID3, 'Storck',       2.30, 'USD', 135, 'g'),

('5541900000006', 'Haribo Goldbears 175g',         @subID3, 'Haribo',       2.00, 'USD', 175, 'g'),
('5541900000007', 'Haribo Happy Cola 175g',        @subID3, 'Haribo',       2.00, 'USD', 175, 'g'),
('5541900000008', 'Mentos Mint Roll 38g',          @subID3, 'Mentos',       0.95, 'USD', 38,  'g'),
('5541900000009', 'Mentos Fruit Roll 38g',         @subID3, 'Mentos',       0.95, 'USD', 38,  'g'),
('5541900000010', 'Mentos Gum Pure Fresh 84g',     @subID3, 'Mentos',       2.90, 'USD', 84,  'g'),

('5541900000011', 'Chupa Chups Lollipop Cola',     @subID3, 'Chupa Chups',  0.60, 'USD', 12,  'g'),
('5541900000012', 'Chupa Chups Lollipop Strawberry',@subID3, 'Chupa Chups', 0.60, 'USD', 12,  'g'),
('5541900000013', 'Lindt Mini Pralines 100g',      @subID3, 'Lindt',        3.80, 'USD', 100, 'g'),
('5541900000014', 'Mieszko Zozole Candy 90g',      @subID3, 'Mieszko',      1.50, 'USD', 90,  'g'),
('5541900000015', 'Bartek Fruit Candy 100g',       @subID3, 'Wawel',        1.40, 'USD', 100, 'g'),

('5541900000016', 'Wawel Krowka Milk Fudge 250g',  @subID3, 'Wawel',        3.20, 'USD', 250, 'g'),
('5541900000017', 'Goplana Fistaszki Toffee 150g', @subID3, 'Goplana',      2.25, 'USD', 150, 'g'),
('5541900000018', 'Mieszko Michalki 150g',         @subID3, 'Mieszko',      2.60, 'USD', 150, 'g'),
('5541900000019', 'Zozole Rainbow Candy 100g',     @subID3, 'Mieszko',      1.50, 'USD', 100, 'g'),
('5541900000020', 'Zozole Shock Cola Candy 100g',  @subID3, 'Mieszko',      1.50, 'USD', 100, 'g');

declare @subID4 int=(select id from subcategories where name='Chips')
INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5542000000001', 'Lays Classic 140g',           @subID4, 'Lays',     2.30, 'USD', 140, 'g'),
('5542000000002', 'Lays Paprika 140g',           @subID4, 'Lays',     2.30, 'USD', 140, 'g'),
('5542000000003', 'Lays Cheese 140g',            @subID4, 'Lays',     2.30, 'USD', 140, 'g'),
('5542000000004', 'Lays Green Onion 140g',       @subID4, 'Lays',     2.30, 'USD', 140, 'g'),
('5542000000005', 'Lays Salted 140g',            @subID4, 'Lays',     2.30, 'USD', 140, 'g'),

('5542000000006', 'Pringles Original 165g',      @subID4, 'Pringles', 3.50, 'USD', 165, 'g'),
('5542000000007', 'Pringles Sour Cream 165g',    @subID4, 'Pringles', 3.50, 'USD', 165, 'g'),
('5542000000008', 'Pringles BBQ 165g',           @subID4, 'Pringles', 3.50, 'USD', 165, 'g'),
('5542000000009', 'Pringles Paprika 165g',       @subID4, 'Pringles', 3.50, 'USD', 165, 'g'),
('5542000000010', 'Pringles Hot & Spicy 165g',   @subID4, 'Pringles', 3.50, 'USD', 165, 'g'),

('5542000000011', 'Crunchips Paprika 140g',      @subID4, 'Crunchips', 2.20, 'USD', 140, 'g'),
('5542000000012', 'Crunchips Cheese 140g',       @subID4, 'Crunchips', 2.20, 'USD', 140, 'g'),

('5542000000013', 'Lorenz Saltletts Sticks 150g',@subID4, 'Lorenz',    2.10, 'USD', 150, 'g'),
('5542000000014', 'Lorenz Nic Nacs Classic 110g',@subID4, 'Lorenz',    2.90, 'USD', 110, 'g'),

('5542000000015', 'Cheetos Cheese Balls 130g',   @subID4, 'Cheetos',   2.40, 'USD', 130, 'g'),
('5542000000016', 'Cheetos Crunchy 130g',        @subID4, 'Cheetos',   2.40, 'USD', 130, 'g'),

('5542000000017', 'Monster Munch Ketchup 90g',   @subID4, 'Monster Munch', 1.80, 'USD', 90,  'g'),
('5542000000018', 'Monster Munch Cheese 90g',    @subID4, 'Monster Munch', 1.80, 'USD', 90,  'g'),

('5542000000019', 'Star Chips Bacon 140g',       @subID4, 'Star Chips', 2.10, 'USD', 140, 'g'),
('5542000000020', 'Star Chips Paprika 140g',     @subID4, 'Star Chips', 2.10, 'USD', 140, 'g');

