CREATE PROCEDURE GetBooksByAuthor
    @AuthorID INT
AS
BEGIN
    SELECT Title
    FROM Books
    WHERE AuthorID = @AuthorID;
END;
