CREATE SCHEMA IF NOT EXISTS Rozetka;
-- RAW
CREATE OR REPLACE TABLE Rozetka.sell AS
SELECT *
FROM UNNEST([
  STRUCT(1 AS shop_id, 'TechNova' AS shop_name, 'Electronics' AS shop_category, 'Kyiv' AS shop_city, DATE '2021-03-15' AS registration_date, 4.7 AS rating, '+380501112233' AS contact_number, 101 AS service_id, 'Kyiv, Khreshchatyk 10' AS service_address, 'TechNova Service' AS service_name),
  (2, 'HomeLife', 'Home Appliances', 'Lviv', DATE '2020-07-10', 4.5, '+380631223344', 102, 'Lviv, Shevchenka 25', 'HomeFix'),
  (3, 'SmartStyle', 'Electronics', 'Odesa', DATE '2022-02-18', 4.2, '+380671234567', 103, 'Odesa, Deribasivska 14', 'SmartFix'),
  (4, 'GreenMarket', 'Groceries', 'Dnipro', DATE '2019-05-01', 4.8, '+380931234567', 104, 'Dnipro, Yavornytskoho 12', 'GreenSupport'),
  (5, 'MegaSport', 'Sports', 'Kharkiv', DATE '2020-09-22', 4.6, '+380981234567', 105, 'Kharkiv, Sumskaya 50', 'SportCare'),
  (6, 'BookSpace', 'Books', 'Kyiv', DATE '2018-11-11', 4.9, '+380991112233', 106, 'Kyiv, Hoholya 3', 'BookHelp'),
  (7, 'AutoHub', 'Auto Parts', 'Lviv', DATE '2021-01-05', 4.4, '+380661234555', 107, 'Lviv, Zelena 77', 'AutoService'),
  (8, 'CosmoShop', 'Beauty', 'Odesa', DATE '2023-03-12', 4.3, '+380731224466', 108, 'Odesa, Pastera 22', 'CosmoCare'),
  (9, 'BabyWorld', 'Kids', 'Kharkiv', DATE '2019-12-01', 4.7, '+380501119988', 109, 'Kharkiv, Pushkinska 17', 'BabySupport'),
  (10, 'GadgetPro', 'Electronics', 'Lviv', DATE '2021-06-07', 4.6, '+380631998877', 110, 'Lviv, Kopernyka 5', 'GadgetFix')
]);

CREATE OR REPLACE TABLE Rozetka.buy AS
SELECT *
FROM UNNEST([
  STRUCT(1 AS buyer_id, 'Lviv' AS buyer_city, 'Olena Marchenko' AS buyer_name, '18-24' AS age_group, 'O' AS gender, DATE '2020-05-04' AS join_date, 'olena.marchenko1@example.com' AS email, 122.45 AS bonuses, 1001 AS order_id, DATE '2025-10-17' AS placement_date, 'Electronics Model 658' AS order_item, 9 AS shop_id, 11766.99 AS price, 'Courier' AS delivery_type, 'Lviv' AS delivery_city, 'No warranty' AS warranty),
  (2,'Kharkiv','Andrii Petrenko','18-24','M',DATE '2023-12-10','andrii.petrenko2@example.com',211.31,1002,DATE '2023-06-07','Premium Electronics 390',18,14572.13,'Nova Poshta','Kharkiv','No warranty'),
  (3,'Kyiv','Kateryna Danylenko','25-34','F',DATE '2021-09-22','kateryna.danylenko3@example.com',98.60,1003,DATE '2022-02-20','Smartphone 8X',5,9700.00,'Courier','Kyiv','12 months'),
  (4,'Dnipro','Oleh Ivanov','35-44','M',DATE '2019-05-30','oleh.ivanov4@example.com',315.75,1004,DATE '2020-08-13','Blender MixPro',2,3450.50,'Nova Poshta','Dnipro','24 months'),
  (5,'Odesa','Svitlana Shevchenko','25-34','F',DATE '2022-07-14','svitlana.shevchenko5@example.com',180.00,1005,DATE '2023-01-17','Beauty Set Deluxe',8,2899.99,'Courier','Odesa','6 months'),
  (6,'Lviv','Roman Kovalenko','18-24','M',DATE '2020-03-09','roman.kovalenko6@example.com',102.25,1006,DATE '2021-09-21','Treadmill FitRun',5,17899.00,'Nova Poshta','Lviv','12 months'),
  (7,'Kyiv','Iryna Melnyk','45-54','F',DATE '2018-11-20','iryna.melnyk7@example.com',400.50,1007,DATE '2022-03-04','Book Collection',6,1120.00,'Courier','Kyiv','No warranty'),
  (8,'Kharkiv','Dmytro Horbunov','25-34','M',DATE '2023-04-17','dmytro.horbunov8@example.com',256.75,1008,DATE '2023-09-30','Car Battery 60Ah',7,3900.00,'Nova Poshta','Kharkiv','12 months'),
  (9,'Odesa','Maryna Tkachenko','18-24','F',DATE '2021-12-25','maryna.tkachenko9@example.com',133.20,1009,DATE '2022-05-11','Baby Stroller Comfort',9,5200.00,'Courier','Odesa','24 months'),
  (10,'Kyiv','Yurii Bondarenko','35-44','M',DATE '2019-10-01','yurii.bondarenko10@example.com',289.40,1010,DATE '2020-03-18','Laptop Ultra 15',1,27499.99,'Nova Poshta','Kyiv','36 months')
]);
CREATE OR REPLACE TABLE Rozetka.transactions AS
SELECT *
FROM UNNEST([
  STRUCT(1001 AS order_id, 5001 AS payment_id, 11766.99 AS amount, 'Card' AS payment_type, DATE '2025-10-17' AS transaction_date, 'Completed' AS status, 'PrivatBank' AS bank),
  (1002,5002,14572.13,'Card',DATE '2023-06-07','Completed','Monobank'),
  (1003,5003,9700.00,'Card',DATE '2022-02-20','Completed','Oschadbank'),
  (1004,5004,3450.50,'Cash',DATE '2020-08-13','Completed','None'),
  (1005,5005,2899.99,'Card',DATE '2023-01-17','Completed','Raiffeisen'),
  (1006,5006,17899.00,'Card',DATE '2021-09-21','Completed','PrivatBank'),
  (1007,5007,1120.00,'Card',DATE '2022-03-04','Completed','Monobank'),
  (1008,5008,3900.00,'Card',DATE '2023-09-30','Completed','Oschadbank'),
  (1009,5009,5200.00,'Card',DATE '2022-05-11','Completed','PrivatBank'),
  (1010,5010,27499.99,'Card',DATE '2020-03-18','Completed','Raiffeisen')
]);

-- STAGE

CREATE OR REPLACE TABLE Rozetka.stage_shops AS
SELECT DISTINCT
    shop_id,
    shop_name,
    shop_category,
    shop_city,
    registration_date,
    rating,
    contact_number,
    COALESCE(service_id, 0) AS service_id,
    service_name,
    service_address
FROM Rozetka.sell;

CREATE OR REPLACE TABLE Rozetka.stage_customers AS
SELECT DISTINCT
    buyer_id,
    buyer_name,
    buyer_city,
    age_group,
    gender,
    join_date,
    email,
    bonuses
FROM Rozetka.buy;

CREATE OR REPLACE TABLE Rozetka.stage_orders AS
SELECT
    order_id,
    buyer_id,
    shop_id,
    order_item,
    placement_date,
    price,
    delivery_type,
    delivery_city,
    warranty
FROM Rozetka.buy;

CREATE OR REPLACE TABLE Rozetka.stage_transactions AS
SELECT
    payment_id,
    order_id,
    amount,
    payment_type,
    transaction_date,
    status,
    bank
FROM Rozetka.transactions;


-- MART

CREATE OR REPLACE TABLE Rozetka.mart_shops AS
SELECT
    shop_id,
    shop_name,
    shop_category,
    shop_city,
    registration_date,
    rating,
    contact_number
FROM Rozetka.stage_shops;

CREATE OR REPLACE TABLE Rozetka.mart_shop_service AS
SELECT
    service_id,
    service_name,
    service_address
FROM Rozetka.stage_shops
WHERE service_id <> 0;

CREATE OR REPLACE TABLE Rozetka.mart_orders AS
SELECT
    o.order_id,
    c.buyer_id,
    o.shop_id,
    t.payment_id,
    s.service_id,
    o.placement_date,
    t.amount,
    t.status
FROM Rozetka.stage_orders o
JOIN Rozetka.stage_customers c ON o.buyer_id = c.buyer_id
JOIN Rozetka.stage_transactions t ON o.order_id = t.order_id
LEFT JOIN Rozetka.stage_shops s ON o.shop_id = s.shop_id;

CREATE OR REPLACE TABLE Rozetka.mart_order_details AS
SELECT
    o.order_id,
    o.price,
	  o.price-c.bonuses AS final_amount,
    o.delivery_type,
    o.delivery_city,
    o.order_item,
    o.warranty
FROM Rozetka.stage_orders o
JOIN Rozetka.stage_customers c ON o.buyer_id = c.buyer_id;

CREATE OR REPLACE TABLE Rozetka.mart_payments AS
SELECT
    payment_id,
    amount,
    payment_type,
    transaction_date,
    bank
FROM Rozetka.stage_transactions;

CREATE OR REPLACE TABLE Rozetka.mart_customers AS
SELECT 
    buyer_id,
    buyer_name,
    buyer_city,
    age_group,
    gender,
    DATE_DIFF(CURRENT_DATE(), join_date, MONTH) AS user_life,
    email,
    bonuses
FROM Rozetka.stage_customers;


-- ANALYTICS

-- revenues for shops
SELECT mo.shop_id, ms.shop_name, SUM(mo.amount) AS profit, COUNT(order_id) AS num_of_orders
FROM Rozetka.mart_orders mo
JOIN Rozetka.mart_shops ms ON mo.shop_id = ms.shop_id
GROUP BY mo.shop_id, ms.shop_name
ORDER BY profit DESC;

-- 10 biggest clients 
SELECT c.buyer_name, c.buyer_city, COUNT(order_id) AS num_of_orders, SUM(o.amount) AS total_spent, bonuses
FROM Rozetka.mart_customers c
JOIN Rozetka.mart_orders o ON c.buyer_id = o.buyer_id
GROUP BY c.buyer_name, c.buyer_city, bonuses
ORDER BY total_spent DESC
LIMIT 10;

-- avg user life, to see how many users of each group joined how long ago
SELECT age_group, AVG(user_life)
FROM Rozetka.mart_customers
GROUP BY age_group;


