DECLARE @subId INT = (SELECT id FROM subcategories WHERE name = 'Milk');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5563300000001', 'Mlekovita Whole Milk 1L',           @subId, 'Mlekovita', 1.20, 'USD', 1, 'l'),
('5563300000002', 'Mlekovita 2% Milk 1L',               @subId, 'Mlekovita', 1.15, 'USD', 1, 'l'),
('5563300000003', 'Mlekovita Skim Milk 1L',             @subId, 'Mlekovita', 1.10, 'USD', 1, 'l'),
('5563300000004', 'Mlekovita Lactose-Free Milk 1L',     @subId, 'Mlekovita', 1.30, 'USD', 1, 'l'),
('5563300000005', 'Mlekovita UHT Milk 1L',              @subId, 'Mlekovita', 1.25, 'USD', 1, 'l'),

('5563300000006', 'Laciate Whole Milk 1L',              @subId, 'Laciate', 1.22, 'USD', 1, 'l'),
('5563300000007', 'Laciate 2% Milk 1L',                 @subId, 'Laciate', 1.18, 'USD', 1, 'l'),
('5563300000008', 'Laciate Skim Milk 1L',               @subId, 'Laciate', 1.10, 'USD', 1, 'l'),
('5563300000009', 'Laciate Lactose-Free Milk 1L',       @subId, 'Laciate', 1.35, 'USD', 1, 'l'),
('5563300000010', 'Laciate UHT Milk 1L',                @subId, 'Laciate', 1.28, 'USD', 1, 'l'),

('5563300000011', 'Piatnica Whole Milk 1L',             @subId, 'Piatnica', 1.19, 'USD', 1, 'l'),
('5563300000012', 'Piatnica 2% Milk 1L',                @subId, 'Piatnica', 1.14, 'USD', 1, 'l'),
('5563300000013', 'Piatnica Skim Milk 1L',              @subId, 'Piatnica', 1.08, 'USD', 1, 'l'),
('5563300000014', 'Piatnica Lactose-Free Milk 1L',      @subId, 'Piatnica', 1.32, 'USD', 1, 'l'),
('5563300000015', 'Piatnica UHT Milk 1L',               @subId, 'Piatnica', 1.27, 'USD', 1, 'l'),

('5563300000016', 'Zott Whole Milk 1L',                 @subId, 'Zott', 1.21, 'USD', 1, 'l'),
('5563300000017', 'Zott 2% Milk 1L',                    @subId, 'Zott', 1.16, 'USD', 1, 'l'),
('5563300000018', 'Zott Skim Milk 1L',                  @subId, 'Zott', 1.09, 'USD', 1, 'l'),
('5563300000019', 'Zott Lactose-Free Milk 1L',          @subId, 'Zott', 1.33, 'USD', 1, 'l'),
('5563300000020', 'Zott UHT Milk 1L',                   @subId, 'Zott', 1.26, 'USD', 1, 'l');


DECLARE @subId INT = (SELECT id FROM subcategories WHERE name = 'Yogurt');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Zott
('5573300000001', 'Zott Jogobella Strawberry Yogurt 150g', @subId, 'Zott', 0.90, 'USD', 0.15, 'kg'),
('5573300000002', 'Zott Jogobella Blueberry Yogurt 150g',  @subId, 'Zott', 0.90, 'USD', 0.15, 'kg'),
('5573300000003', 'Zott Jogobella Cherry Yogurt 150g',     @subId, 'Zott', 0.90, 'USD', 0.15, 'kg'),
('5573300000004', 'Zott Jogobella Peach Yogurt 150g',      @subId, 'Zott', 0.90, 'USD', 0.15, 'kg'),
('5573300000005', 'Zott Jogobella Natural Yogurt 150g',    @subId, 'Zott', 0.85, 'USD', 0.15, 'kg'),

-- Danone
('5573300000006', 'Danone Strawberry Yogurt 150g',         @subId, 'Danone', 0.95, 'USD', 0.15, 'kg'),
('5573300000007', 'Danone Blueberry Yogurt 150g',          @subId, 'Danone', 0.95, 'USD', 0.15, 'kg'),
('5573300000008', 'Danone Raspberry Yogurt 150g',          @subId, 'Danone', 0.95, 'USD', 0.15, 'kg'),
('5573300000009', 'Danone Natural Yogurt 150g',            @subId, 'Danone', 0.90, 'USD', 0.15, 'kg'),
('5573300000010', 'Danone Vanilla Yogurt 150g',            @subId, 'Danone', 0.95, 'USD', 0.15, 'kg'),

-- Bakoma
('5573300000011', 'Bakoma Bio Strawberry Yogurt 150g',     @subId, 'Bakoma', 1.00, 'USD', 0.15, 'kg'),
('5573300000012', 'Bakoma Bio Blueberry Yogurt 150g',      @subId, 'Bakoma', 1.00, 'USD', 0.15, 'kg'),
('5573300000013', 'Bakoma Bio Cherry Yogurt 150g',         @subId, 'Bakoma', 1.00, 'USD', 0.15, 'kg'),
('5573300000014', 'Bakoma Natural Yogurt 150g',            @subId, 'Bakoma', 0.90, 'USD', 0.15, 'kg'),
('5573300000015', 'Bakoma Peach Yogurt 150g',              @subId, 'Bakoma', 1.00, 'USD', 0.15, 'kg'),

-- Piątnica (Piatnica)
('5573300000016', 'Piatnica Natural Yogurt 150g',          @subId, 'Piatnica', 0.85, 'USD', 0.15, 'kg'),
('5573300000017', 'Piatnica Strawberry Yogurt 150g',       @subId, 'Piatnica', 0.95, 'USD', 0.15, 'kg'),
('5573300000018', 'Piatnica Blueberry Yogurt 150g',        @subId, 'Piatnica', 0.95, 'USD', 0.15, 'kg'),
('5573300000019', 'Piatnica Raspberry Yogurt 150g',        @subId, 'Piatnica', 0.95, 'USD', 0.15, 'kg'),
('5573300000020', 'Piatnica Vanilla Yogurt 150g',          @subId, 'Piatnica', 0.95, 'USD', 0.15, 'kg'),

-- Local Farm (no brand)
('5573300000021', 'Local Strawberry Yogurt 150g',          @subId, NULL, 0.80, 'USD', 0.15, 'kg'),
('5573300000022', 'Local Blueberry Yogurt 150g',           @subId, NULL, 0.80, 'USD', 0.15, 'kg'),
('5573300000023', 'Local Peach Yogurt 150g',               @subId, NULL, 0.80, 'USD', 0.15, 'kg'),
('5573300000024', 'Local Natural Yogurt 150g',             @subId, NULL, 0.75, 'USD', 0.15, 'kg'),
('5573300000025', 'Local Cherry Yogurt 150g',              @subId, NULL, 0.80, 'USD', 0.15, 'kg'),

-- Lactose-Free and Large Packs
('5573300000026', 'Zott Lactose-Free Yogurt 400g',         @subId, 'Zott', 1.90, 'USD', 0.4, 'kg'),
('5573300000027', 'Danone Natural Yogurt 400g',            @subId, 'Danone', 1.85, 'USD', 0.4, 'kg'),
('5573300000028', 'Bakoma Greek Style Yogurt 400g',        @subId, 'Bakoma', 2.10, 'USD', 0.4, 'kg'),
('5573300000029', 'Piatnica Bio Yogurt 400g',              @subId, 'Piatnica', 2.00, 'USD', 0.4, 'kg'),
('5573300000030', 'Local Natural Yogurt 400g',             @subId, NULL, 1.70, 'USD', 0.4, 'kg');

DECLARE @subId3 INT = (SELECT id FROM subcategories WHERE name = 'Butter & Margarine');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Łaciate (Laciate)
('5573400000001', 'Laciate Extra Butter 200g',            @subId3, 'Laciate', 2.10, 'USD', 0.2, 'kg'),
('5573400000002', 'Laciate Salted Butter 200g',           @subId3, 'Laciate', 2.15, 'USD', 0.2, 'kg'),
('5573400000003', 'Laciate Unsalted Butter 200g',         @subId3, 'Laciate', 2.10, 'USD', 0.2, 'kg'),
('5573400000004', 'Laciate Butter 100g',                  @subId3, 'Laciate', 1.10, 'USD', 0.1, 'kg'),
('5573400000005', 'Laciate Spreadable Butter 250g',       @subId3, 'Laciate', 2.90, 'USD', 0.25, 'kg'),

-- Mlekovita
('5573400000006', 'Mlekovita Extra Butter 200g',          @subId3, 'Mlekovita', 2.05, 'USD', 0.2, 'kg'),
('5573400000007', 'Mlekovita Salted Butter 200g',         @subId3, 'Mlekovita', 2.10, 'USD', 0.2, 'kg'),
('5573400000008', 'Mlekovita Clarified Butter 200g',      @subId3, 'Mlekovita', 2.80, 'USD', 0.2, 'kg'),
('5573400000009', 'Mlekovita Butter Roll 250g',           @subId3, 'Mlekovita', 3.10, 'USD', 0.25, 'kg'),
('5573400000010', 'Mlekovita Spreadable Butter 250g',     @subId3, 'Mlekovita', 2.85, 'USD', 0.25, 'kg'),

-- Rama (Margarine)
('5573400000011', 'Rama Classic Margarine 450g',          @subId3, 'Rama', 1.60, 'USD', 0.45, 'kg'),
('5573400000012', 'Rama Light Margarine 450g',            @subId3, 'Rama', 1.60, 'USD', 0.45, 'kg'),
('5573400000013', 'Rama with Butter 400g',                @subId3, 'Rama', 1.85, 'USD', 0.4, 'kg'),
('5573400000014', 'Rama Vegan Margarine 400g',            @subId3, 'Rama', 1.90, 'USD', 0.4, 'kg'),
('5573400000015', 'Rama for Cooking 250g',                @subId3, 'Rama', 1.30, 'USD', 0.25, 'kg'),

-- Local Brands (no brand name)
('5573400000016', 'Local Farm Butter 200g',               @subId3, NULL, 1.90, 'USD', 0.2, 'kg'),
('5573400000017', 'Local Farm Salted Butter 200g',        @subId3, NULL, 1.95, 'USD', 0.2, 'kg'),
('5573400000018', 'Local Farm Clarified Butter 200g',     @subId3, NULL, 2.50, 'USD', 0.2, 'kg'),
('5573400000019', 'Local Farm Butter 100g',               @subId3, NULL, 1.00, 'USD', 0.1, 'kg'),
('5573400000020', 'Local Farm Spreadable Butter 250g',    @subId3, NULL, 2.60, 'USD', 0.25, 'kg');

DECLARE @subId4 INT = (SELECT id FROM subcategories WHERE name = 'Cheese');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
-- Hochland
('5573500000001', 'Hochland Gouda Cheese Slices 150g',        @subId4, 'Hochland', 2.50, 'USD', 0.15, 'kg'),
('5573500000002', 'Hochland Emmental Cheese Slices 150g',     @subId4, 'Hochland', 2.60, 'USD', 0.15, 'kg'),
('5573500000003', 'Hochland Cream Cheese Natural 200g',       @subId4, 'Hochland', 2.20, 'USD', 0.2,  'kg'),
('5573500000004', 'Hochland Cream Cheese with Herbs 200g',    @subId4, 'Hochland', 2.25, 'USD', 0.2,  'kg'),
('5573500000005', 'Hochland Gouda Block Cheese 400g',         @subId4, 'Hochland', 4.20, 'USD', 0.4,  'kg'),

-- Mlekovita
('5573500000006', 'Mlekovita Gouda Cheese 250g',              @subId4, 'Mlekovita', 3.10, 'USD', 0.25, 'kg'),
('5573500000007', 'Mlekovita Edam Cheese 250g',               @subId4, 'Mlekovita', 3.15, 'USD', 0.25, 'kg'),
('5573500000008', 'Mlekovita Smoked Cheese 200g',             @subId4, 'Mlekovita', 2.90, 'USD', 0.2,  'kg'),
('5573500000009', 'Mlekovita Cream Cheese 200g',              @subId4, 'Mlekovita', 2.00, 'USD', 0.2,  'kg'),
('5573500000010', 'Mlekovita Camembert Cheese 120g',          @subId4, 'Mlekovita', 2.10, 'USD', 0.12, 'kg'),

-- President
('5573500000011', 'President Brie Cheese 125g',               @subId4, 'President', 2.40, 'USD', 0.125, 'kg'),
('5573500000012', 'President Camembert Cheese 125g',          @subId4, 'President', 2.45, 'USD', 0.125, 'kg'),
('5573500000013', 'President Goat Cheese Log 180g',           @subId4, 'President', 3.80, 'USD', 0.18,  'kg'),
('5573500000014', 'President Blue Cheese 150g',               @subId4, 'President', 3.20, 'USD', 0.15,  'kg'),
('5573500000015', 'President Feta Cheese 200g',               @subId4, 'President', 2.90, 'USD', 0.2,   'kg'),

-- Local Farm / Generic
('5573500000016', 'Local Farm Yellow Cheese Block 300g',      @subId4, NULL,       3.50, 'USD', 0.3,  'kg'),
('5573500000017', 'Local Farm Cheese Slices 250g',            @subId4, NULL,       3.10, 'USD', 0.25, 'kg'),
('5573500000018', 'Local Farm Cottage Cheese 200g',           @subId4, NULL,       2.00, 'USD', 0.2,  'kg'),
('5573500000019', 'Local Farm Feta Style Cheese 200g',        @subId4, NULL,       2.30, 'USD', 0.2,  'kg'),
('5573500000020', 'Local Farm Smoked Cheese Block 300g',      @subId4, NULL,       3.80, 'USD', 0.3,  'kg');

DECLARE @subId5 INT = (SELECT id FROM subcategories WHERE name = 'Eggs');

INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit)
VALUES
('5573600000001', 'Eggs Free Range 10 pcs',           @subId5, 'Farmio',       3.50, 'USD', 10, 'pcs'),
('5573600000002', 'Eggs Organic 10 pcs',              @subId5, 'Bio Planet',   4.20, 'USD', 10, 'pcs'),
('5573600000003', 'Eggs Caged 10 pcs',                @subId5, 'Moja Kurka',   2.50, 'USD', 10, 'pcs'),
('5573600000004', 'Eggs Barn 10 pcs',                 @subId5, 'Farmio',       2.90, 'USD', 10, 'pcs'),
('5573600000005', 'Eggs Fresh M 10 pcs',              @subId5, 'Krasnystaw',   2.80, 'USD', 10, 'pcs'),
('5573600000006', 'Eggs Fresh L 10 pcs',              @subId5, 'Krasnystaw',   3.00, 'USD', 10, 'pcs'),
('5573600000007', 'Eggs Free Range 6 pcs',            @subId5, 'Farmio',       2.30, 'USD', 6,  'pcs'),
('5573600000008', 'Eggs Extra Class A 10 pcs',        @subId5, 'Moja Kurka',   3.80, 'USD', 10, 'pcs'),
('5573600000009', 'Eggs Bio L 6 pcs',                 @subId5, 'Bio Planet',   3.00, 'USD', 6,  'pcs'),
('5573600000010', 'Eggs Village 10 pcs',              @subId5, NULL,           2.70, 'USD', 10, 'pcs');
