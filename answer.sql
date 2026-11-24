-- Week 1 Database Assignment
-- Project: Library Management System

-- 1. Create the database
CREATE DATABASE library_management;

-- 2. Select the database
USE library_management;

-- 3. Create the books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publication_year INT
);

-- 4. Create the members table
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- 5. Create the loans table
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,

    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- 6. Insert sample books
INSERT INTO books (title, author, publication_year)
VALUES
('Things Fall Apart', 'Chinua Achebe', 1958),
('The River Between', 'Ngugi wa Thiong’o', 1965),
('Animal Farm', 'George Orwell', 1945);

-- 7. Insert sample members
INSERT INTO members (full_name, email, phone)
VALUES
('Ahmed Ali', 'ahmed@example.com', '0712345678'),
('Fatima Hassan', 'fatima@example.com', '0723456789');

-- 8. Insert sample loans
INSERT INTO loans (book_id, member_id, loan_date, return_date)
VALUES
(1, 1, '2026-11-20', NULL),
(2, 2, '2026-11-21', '2026-11-23');
