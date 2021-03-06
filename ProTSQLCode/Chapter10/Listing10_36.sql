-- Listing 10-36

CREATE DATABASE cliparts
CONTAINMENT = NONE
ON  PRIMARY 
( NAME = N'cliparts', FILENAME = N'C:\sqldata\MSSQL12.MSSQLSERVER\MSSQL\DATA\cliparts.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB ), 
FILEGROUP [filestreamFG1] CONTAINS FILESTREAM 
( NAME = N'filestream1', FILENAME = N'C:\sqldata\MSSQL12.MSSQLSERVER\MSSQL\DATA\filestream1' )
LOG ON 
( NAME = N'cliparts_log', FILENAME = N'C:\sqldata\MSSQL12.MSSQLSERVER\MSSQL\DATA\cliparts_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%);
GO

ALTER DATABASE [cliparts] SET FILESTREAM( NON_TRANSACTED_ACCESS = FULL, DIRECTORY_NAME = N'cliparts' );
