WITH Client_count AS (
    SELECT shop_id, COUNT(*) AS num_of_clients
    FROM Clients
    GROUP BY shop_id
)

SELECT 
    r.name AS roller_name, r.age, r.city,
    i.experience, i.num_of_students, i.rating,
    cm.name AS community,
    s.name AS shop,
    COALESCE(cc.num_of_clients, 0) AS num_of_clients
FROM Instructors i
JOIN Rollers r ON r.roller_id = i.roller_id
LEFT JOIN Shops s ON s.partner_id = i.instructor_id
LEFT JOIN client_count cc ON cc.shop_id = s.shop_id
LEFT JOIN Communities cm ON r.city = cm.city
WHERE i.rating >= (
	SELECT AVG(rating) 
	FROM Instructors)
GROUP BY  r.name, r.age, r.city, i.experience, i.num_of_students, i.rating, cm.name, s.name, num_of_clients
HAVING num_of_clients > 0
ORDER BY num_of_clients DESC, roller_name
LIMIT 2;