-- SELECT properties.id as id, title, cost_per_night, avg(property_reviews.rating) as average_rating
-- FROM properties 
-- JOIN users ON users.id = owner_id
-- JOIN property_reviews ON users.id = guest_id
-- WHERE city = 'Vancouver'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night 
-- LIMIT 10

SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10
;
