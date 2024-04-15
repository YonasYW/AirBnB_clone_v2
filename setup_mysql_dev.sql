-- Make a database for AirBnB_v2 with database name hbnb_dev_db
-- Create user hbnb_dev with pwd hbnb_dev_pwd
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- Create Database named hbnb_dev_db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- Grant all privileges for hbnb_dev on hbnb_dev_db database
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
-- Grant select performance_schema privileges for hbnb_dev on hbnb_dev_db database
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
-- Flush or apply those privileges
FLUSH PRIVILEGES;
