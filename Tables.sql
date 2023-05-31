CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Email NVARCHAR(100),
	BookCount INT DEFAULT 0;
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title NVARCHAR(100),
    AuthorID INT,
    Price DECIMAL(10, 2),
    CONSTRAINT FK_Books_Authors FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
