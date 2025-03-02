CREATE VIEW frequently_reviewed AS
SELECT
    listings.id,
    property_type,
    host_name,
    COUNT(comments) AS reviews
FROM listings
JOIN reviews ON listings.id = reviews.listing_id
GROUP BY listings.id, listings.property_type, listings.host_name
ORDER BY reviews DESC, listings.property_type, listings.host_name
LIMIT 100;
