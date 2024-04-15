-- Make a database for AirBnB_v2 with database name hbnb_test_db
-- Create user hbnb_test with pwd hbnb_dev_pwd
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
-- Create Database named hbnb_test_db
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- Grant all privileges for hbnb_test on hbnb_test_db database
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
-- Grant select performance_schema privileges for hbnb_dev on hbnb_dev_db database
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
-- Flush or apply those privileges
FLUSH PRIVILEGES;
