--create a table--
CREATE TABLE categories(
    categoryID INT PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(50) UNIQUE
);
--insert categories with unique categoryName--
INSERT categories(categoryName) VALUES
('utilities'),
('rent'),
('grocery'),
('entertainment'),
('transport');
--create a table wth some requirements--
CREATE TABLE customer (
    customerID INT AUTO_INCREMENT,
    customerName VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phoneNumber VARCHAR(11),
    customerAddress VARCHAR(20),
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--insert data into a table--
INSERT INTO customer(customerName, email, phoneNumber, customerAddress)VALUES


('John Doe', 'john.doe@example.com', '0712345678', '123 Main St'),
('Jane Smith', 'jane.smith@example.com', '0798765432', '456 Oak Ave'),
('Peter Jones', 'peter.jones@example.com', '0789012345', '789 Pine Ln'),
('Mary Brown', 'mary.brown@example.com', '0754321098', '101 Elm St');
--update customerAddress--
UPDATE customer
set customerAddress="lavington"
WHERE categoryID IN (1,2);
--deleting a category--
DELETE FROM categories
WHERE categoryID=2;

