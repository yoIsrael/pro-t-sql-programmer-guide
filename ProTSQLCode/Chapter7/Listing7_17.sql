-- Listing 7-17

CREATE LOGIN PublicUser WITH PASSWORD = 'p@$$w0rd';
GO

USE Master;

CREATE TABLE dbo.DenyLogonSchedule (
    UserId sysname NOT NULL,
    DayOfWeek tinyint NOT NULL,
    TimeStart time NOT NULL,
    TimeEnd time NOT NULL,
    PRIMARY KEY (UserId, DayOfWeek, TimeStart, TimeEnd)
 );
 GO

INSERT INTO dbo.DenyLogonSchedule (
    UserId,
    DayOfWeek,
    TimeStart,
    TimeEnd 
) VALUES (
    'PublicUser',
    7,
    '21:00:00',
    '23:00:00' 
 );
