-- Listing 3-2

DECLARE @direction NVARCHAR(20) = N'DESCENDING';

IF @direction = N'ASCENDING'
BEGIN
        PRINT 'Start at the top!';

        SELECT TOP (10)
        LastName,
        FirstName,
        MiddleName
        FROM Person.Person
        ORDER BY LastName ASC;
END
ELSE  IF @direction = N'DESCENDING'
BEGIN
        PRINT 'Start at the bottom!';

        SELECT TOP (10) 
        LastName,
        FirstName,
        MiddleName
        FROM Person.Person
        ORDER BY LastName DESC;
END
ELSE
        PRINT '@direction  was not recognized!';