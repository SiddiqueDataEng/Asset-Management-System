/*
 * Asset Management System
 * Project #19 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Stored Procedures
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'AssetDB')
BEGIN
    ALTER DATABASE AssetDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE AssetDB;
END
GO

CREATE DATABASE AssetDB
ON PRIMARY
(
    NAME = 'AssetDB_Data',
    FILENAME = 'C:\SQLData\AssetDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'AssetDB_Log',
    FILENAME = 'C:\SQLData\AssetDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE AssetDB SET RECOVERY SIMPLE;
ALTER DATABASE AssetDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE AssetDB;
GO

PRINT 'Database AssetDB created successfully';
PRINT 'Project: Asset Management System';
PRINT 'Description: Asset lifecycle, depreciation, and maintenance tracking';
GO
