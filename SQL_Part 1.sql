------SQL Mandatory Assignment 2------
CREATE FUNCTION dbo.StuffChickenIntoQuickBites (@chickenType VARCHAR(50))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @quickBites VARCHAR(50) = 'Quick Bites'
    DECLARE @result VARCHAR(100)
    
    SET @result = STUFF(@quickBites, CHARINDEX(' ', @quickBites), 0, ' ' + @chickenType)
    
    RETURN @result
END
FROM restaurant
WHERE rating = (SELECT MAX(rating) FROM restaurant)
ADD RatingStatus VARCHAR(10)

UPDATE TableName
SET RatingStatus = CASE
    WHEN Rating > 4 THEN 'Excellent'
    WHEN Rating > 3.5 AND Rating <= 4 THEN 'Good'
    WHEN Rating > 3 AND Rating <= 3.5 THEN 'Average'
    ELSE 'Bad'
    END
    CEILING(rating) AS ceil_rating,
    FLOOR(rating) AS floor_rating,
    ABS(rating) AS abs_rating,
    GETDATE() AS current_date,
    YEAR(GETDATE()) AS year,
    DATENAME(MONTH, GETDATE()) AS month_name,
    DAY(GETDATE()) AS day;
FROM restaurant
GROUP BY ROLLUP (restaurant_type)