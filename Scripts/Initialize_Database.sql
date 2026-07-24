--create database
Use master;

Create database DataWarehouse;
go
--swaping databases
use DataWarehouse

--creating schemas
go
create schema bronze;
go
create schema silver;
go
create schema gold;
