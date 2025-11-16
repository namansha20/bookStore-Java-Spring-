-- BookHub Database Setup Script
-- This script creates the database and table structure for the BookHub application
-- Note: Hibernate will automatically create the table if hibernate.hbm2ddl.auto=update
-- This script is provided for manual setup if needed

-- Create database
CREATE DATABASE IF NOT EXISTS bookhub_db;

-- Use the database
USE bookhub_db;

-- Create books table
-- This matches the Book entity structure
CREATE TABLE IF NOT EXISTS books (
    book_id BIGINT NOT NULL AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY (book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Optional: Insert sample data for testing
-- Uncomment the following lines if you want to start with sample books

-- INSERT INTO books (title, author, price) VALUES
-- ('The Great Gatsby', 'F. Scott Fitzgerald', 12.99),
-- ('To Kill a Mockingbird', 'Harper Lee', 14.99),
-- ('1984', 'George Orwell', 13.99),
-- ('Pride and Prejudice', 'Jane Austen', 11.99),
-- ('The Catcher in the Rye', 'J.D. Salinger', 10.99);

-- Verify table creation
SHOW TABLES;

-- Show table structure
DESCRIBE books;

-- Show current records (will be empty if no sample data inserted)
SELECT * FROM books;

-- Grant privileges (adjust username if needed)
-- GRANT ALL PRIVILEGES ON bookhub_db.* TO 'root'@'localhost';
-- FLUSH PRIVILEGES;

-- Script completed successfully
SELECT 'BookHub database setup completed!' AS Status;
