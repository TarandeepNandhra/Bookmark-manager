-- Create prodcution database and table
CREATE DATABASE bookmark_manager;
GO
USE bookmark_manager;
GO
CREATE TABLE bookmarks_1(id SERIAL PRIMARY KEY, url VARCHAR(60));
GO

-- Create test database
CREATE DATABASE bookmark_manager_test;
