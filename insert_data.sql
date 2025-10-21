INSERT INTO Rollers (name, age, city) VALUES
('Angelina', 19, 'Kyiv'),
('Vitaly', 22, 'Odesa'),
('Diana', 28, 'Kyiv'),
('Anastasia', 21, 'Odesa'),
('Yulia', 25, 'Kyiv'),
('Denis', 18, 'Odesa'),
('Oleksii', 24, 'Kyiv'),
('Neil', 22, 'Vinnytsia'),
('Oleh', 30, 'Kyiv'),
('Tina', 17, 'Vinnytsia');

INSERT INTO Instructors (roller_id, experience, num_of_students, rating) VALUES
(1, 2, 30, 4),
(2, 3, 15, 3),
(3, 5, 25, 3),
(7, 4, 34, 4),
(8, 5, 28, 5);

INSERT INTO Communities (name, num_of_people, city) VALUES
('Uroll', 543, 'Kyiv'),
('Rollers-in-Odesa', 231, 'Odesa'),
('Vinnrollers', 86, 'Vinnytsia');

INSERT INTO Shops (name, city, partner_id) VALUES
('Rollerland', 'Kyiv', 1),
('Rollershop', 'Kyiv', 4),
('FlyingEagle', 'Kyiv', 3),
('Rollerblade', 'Odesa', 2),
('Myroller', 'Vinnytsia', 5);

INSERT INTO Clients (shop_id, order_name) VALUES
(1, 'Rollerblades'),
(2, 'Protection'),
(3, 'Rollerblades'),
(4, 'Equipment'),
(2, 'Protection'),
(1, 'Equipment'),
(5, 'Rollerblades');

