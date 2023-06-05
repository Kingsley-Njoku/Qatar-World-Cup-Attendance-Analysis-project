# Import the Dataset
CREATE DATABASE Qatar_WC_Analysis;
USE Qatar_WC_Analysis;

# Data Cleaning/Wrangling
SELECT * FROM ats;
DESCRIBE ats;
SET sql_safe_updates = 0;

UPDATE ats
SET Date = STR_TO_DATE(Date, '%d %M %Y');

ALTER TABLE ats
MODIFY COLUMN Date date;

UPDATE ats
SET Attendance = REPLACE(Attendance, ',', '');

ALTER TABLE ats
MODIFY COLUMN Attendance INT;

# Data Analysis
SELECT DISTINCT Venue
FROM ats
ORDER BY Venue;

# Ahmed bin Ali Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Ahmed bin Ali Stadium';

# Al Janoub Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Al Janoub Stadium';

# Al Thumama Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Al Thumama Stadium';

# Al Thumama Stadium (Neutral Site) Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Al Thumama Stadium (Neutral Site)';

# Education City Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Education City Stadium';

# Khalifa International Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Khalifa International Stadium';

# Lusail Iconic Stadium Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Lusail Iconic Stadium';

# Stadium 974 Attendance
SELECT Venue, Home, Away, Attendance
FROM ats
WHERE Venue = 'Stadium 974';

