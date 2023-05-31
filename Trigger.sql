CREATE TRIGGER UpdateBookCount
ON Books
AFTER INSERT
AS
BEGIN
    UPDATE Authors
    SET BookCount = (
        SELECT COUNT(*)
        FROM Books
        WHERE Books.AuthorID = Authors.AuthorID
    )
    FROM Authors
    INNER JOIN inserted ON Authors.AuthorID = inserted.AuthorID;
END;
