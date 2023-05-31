ALTER TABLE Books
ADD CONSTRAINT CHK_PriceGreaterThanZero CHECK (Price > 0);