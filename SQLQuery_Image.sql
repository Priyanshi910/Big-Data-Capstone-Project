Create Database SuperMarket;

Use SuperMarket
Create Table Products(
ProductID int IDENTITY(100,1) NOT NULL,
ProductName varchar(50) NOT NULL,
Price decimal(10,2) NOT NULL,
ProductImage Image ,
);

Insert into Products ( ProductName, Price, ProductImage)
values ('Bread', 3.49,(SELECT * FROM OPENROWSET(BULK N'C:\Users\Vinay Moond\Downloads\SQL\bread\bread.jpg', SINGLE_BLOB) as T1));
Insert into Products ( ProductName, Price, ProductImage)
values ('Butter', 4.99,(SELECT * FROM OPENROWSET(BULK N'C:\Users\Vinay Moond\Downloads\SQL\butter\butter.jpg', SINGLE_BLOB) as T1));
Insert into Products ( ProductName, Price, ProductImage)
values ('Jam', 6.49,(SELECT * FROM OPENROWSET(BULK N'C:\Users\Vinay Moond\Downloads\SQL\jam\jam.jpg', SINGLE_BLOB) as T1));
Insert into Products ( ProductName, Price, ProductImage)
values ('Ham', 5.99,(SELECT * FROM OPENROWSET(BULK N'C:\Users\Vinay Moond\Downloads\SQL\ham\ham.jpg', SINGLE_BLOB) as T1));

Select * from Products


