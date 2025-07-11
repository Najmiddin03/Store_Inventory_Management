DECLARE @RedSubId INT = (SELECT id FROM subcategories WHERE name = 'Red Wines');
DECLARE @WhiteSubId INT = (SELECT id FROM subcategories WHERE name = 'White Wines');


INSERT INTO products (SKU, ProductName, Subcategory_id, Brand, Price, Currency, UnitSize, MeasurementUnit, Adult) VALUES
-- Red Wines
('5531500000001', 'Carlo Rossi Red', @RedSubId, 'Carlo Rossi', 6.99, 'USD', 0.75, 'l', 1),
('5531500000002', 'Fresco Red', @RedSubId, 'Fresco', 5.49, 'USD', 0.75, 'l', 1),
('5531500000003', 'El Sol Red', @RedSubId, 'El Sol', 5.99, 'USD', 0.75, 'l', 1),
('5531500000004', 'Pliska Red', @RedSubId, 'Pliska', 4.99, 'USD', 0.75, 'l', 1),
('5531500000005', 'Dorato Red', @RedSubId, 'Dorato', 6.29, 'USD', 0.75, 'l', 1),
('5531500000006', 'CinCin Red', @RedSubId, 'CinCin', 6.79, 'USD', 0.75, 'l', 1),
('5531500000007', 'Winiarnia Zamojska Red', @RedSubId, 'Winiarnia Zamojska', 7.99, 'USD', 0.75, 'l', 1),
('5531500000008', 'Winnica Turnau Red', @RedSubId, 'Winnica Turnau', 10.90, 'USD', 0.75, 'l', 1),
('5531500000009', 'Winnica Silesian Red', @RedSubId, 'Winnica Silesian', 10.20, 'USD', 0.75, 'l', 1),
('5531500000010', 'Dom Bliskowice Red', @RedSubId, 'Dom Bliskowice', 9.90, 'USD', 0.75, 'l', 1),
('5531500000011', 'Skarpa Dobrska Red', @RedSubId, 'Skarpa Dobrska', 10.30, 'USD', 0.75, 'l', 1),
('5531500000012', 'Winnica Jura Red', @RedSubId, 'Winnica Jura', 9.50, 'USD', 0.75, 'l', 1),
('5531500000013', 'Piwnice Poltorak Red', @RedSubId, 'Piwnice Poltorak', 9.20, 'USD', 0.75, 'l', 1),
('5531500000014', 'Gostchorze Vineyard Red', @RedSubId, 'Gostchorze Vineyard', 9.40, 'USD', 0.75, 'l', 1),
('5531500000015', 'Winnica Kojder Red', @RedSubId, 'Winnica Kojder', 8.90, 'USD', 0.75, 'l', 1),
('5531500000016', 'Winnica Biale Skaly Red', @RedSubId, 'Winnica Biale Skaly', 9.10, 'USD', 0.75, 'l', 1),
('5531500000017', 'Winnica Saint Vincent Red', @RedSubId, 'Winnica Saint Vincent', 8.60, 'USD', 0.75, 'l', 1),
('5531500000018', 'Winnica Niemczanska Red', @RedSubId, 'Winnica Niemczanska', 8.30, 'USD', 0.75, 'l', 1),
('5531500000019', 'Winnica Plochockich Red', @RedSubId, 'Winnica Plochockich', 9.40, 'USD', 0.75, 'l', 1),
('5531500000020', 'Winnica Jakubow Red', @RedSubId, 'Winnica Jakubow', 8.80, 'USD', 0.75, 'l', 1),

-- White Wines
('5531600000001', 'Carlo Rossi White', @WhiteSubId, 'Carlo Rossi', 6.99, 'USD', 0.75, 'l', 1),
('5531600000002', 'Fresco White', @WhiteSubId, 'Fresco', 5.49, 'USD', 0.75, 'l', 1),
('5531600000003', 'El Sol White', @WhiteSubId, 'El Sol', 5.99, 'USD', 0.75, 'l', 1),
('5531600000004', 'Pliska White', @WhiteSubId, 'Pliska', 4.99, 'USD', 0.75, 'l', 1),
('5531600000005', 'Dorato White', @WhiteSubId, 'Dorato', 6.29, 'USD', 0.75, 'l', 1),
('5531600000006', 'CinCin White', @WhiteSubId, 'CinCin', 6.79, 'USD', 0.75, 'l', 1),
('5531600000007', 'Winiarnia Zamojska White', @WhiteSubId, 'Winiarnia Zamojska', 7.99, 'USD', 0.75, 'l', 1),
('5531600000008', 'Winnica Turnau White', @WhiteSubId, 'Winnica Turnau', 10.90, 'USD', 0.75, 'l', 1),
('5531600000009', 'Winnica Silesian White', @WhiteSubId, 'Winnica Silesian', 10.20, 'USD', 0.75, 'l', 1),
('5531600000010', 'Dom Bliskowice White', @WhiteSubId, 'Dom Bliskowice', 9.90, 'USD', 0.75, 'l', 1),
('5531600000011', 'Skarpa Dobrska White', @WhiteSubId, 'Skarpa Dobrska', 10.30, 'USD', 0.75, 'l', 1),
('5531600000012', 'Winnica Jura White', @WhiteSubId, 'Winnica Jura', 9.50, 'USD', 0.75, 'l', 1),
('5531600000013', 'Piwnice Poltorak White', @WhiteSubId, 'Piwnice Poltorak', 9.20, 'USD', 0.75, 'l', 1),
('5531600000014', 'Gostchorze Vineyard White', @WhiteSubId, 'Gostchorze Vineyard', 9.40, 'USD', 0.75, 'l', 1),
('5531600000015', 'Winnica Kojder White', @WhiteSubId, 'Winnica Kojder', 8.90, 'USD', 0.75, 'l', 1),
('5531600000016', 'Winnica Biale Skaly White', @WhiteSubId, 'Winnica Biale Skaly', 9.10, 'USD', 0.75, 'l', 1),
('5531600000017', 'Winnica Saint Vincent White', @WhiteSubId, 'Winnica Saint Vincent', 8.60, 'USD', 0.75, 'l', 1),
('5531600000018', 'Winnica Niemczanska White', @WhiteSubId, 'Winnica Niemczanska', 8.30, 'USD', 0.75, 'l', 1),
('5531600000019', 'Winnica Plochockich White', @WhiteSubId, 'Winnica Plochockich', 9.40, 'USD', 0.75, 'l', 1),
('5531600000020', 'Winnica Jakubow White', @WhiteSubId, 'Winnica Jakubow', 8.80, 'USD', 0.75, 'l', 1);
