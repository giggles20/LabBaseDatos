USE LabPDV

insert into Venta values (1 , 5)
insert into Venta values (11 , 3)
insert into Venta values (8 , 10)
insert into Venta values (3 , 4)
insert into Venta values (5 , 1)
insert into Venta values (10 , 2)
insert into Venta values (2 , 6)
insert into Venta values (1 , 8)
insert into Venta values (4 , 9)
insert into Venta values (6 , 7)
select * from Venta

insert into Almacen values (1, 10, 6,8,4)
insert into Almacen values (2, 361, 3,5,3)
insert into Almacen values (3, 47, 10,7,4)
insert into Almacen values (4, 164, 2,9,5)
insert into Almacen values (5, 238, 8,4,2)
select * from Almacen

insert into Sucursal values (1, 'Soriana', 'Sendero', 66030)
insert into Sucursal values (2, 'Soriana', 'Gonzalitos', 66040)
insert into Sucursal values(3, 'Oxxo','Las Lomas', 66045)
insert into Sucursal values(4, 'Oxxo','Escobedo', 66031)
insert into Sucursal values (5, 'Soriana', 'Sendero', 66030)
insert into Sucursal values (6, 'Soriana', 'Cumbres', 57702)
insert into Sucursal values (7, 'Soriana', 'Country', 54570)
insert into Sucursal values (8, 'Soriana', 'Santa Catarina', 78902)
insert into Sucursal values (9, 'Soriana', 'Escobedo', 74634)
insert into Sucursal values (10, 'Soriana', 'Guadalupe', 67993)
insert into Sucursal values (11, 'Soriana', 'Apodaca', 48143)
select * from Sucursal

insert into Cajero values (1,'Osmar Francisco','Morales','Martinez',19,1,1)
insert into Cajero values (2,'Laura Denise','Navarro','Reyes',19,2,2)
insert into Cajero values (3,'Bruno','Martinez','Tovar',21,1,3)
insert into Cajero values (4 ,'Alondra','Rivas','Mora',18,1,4)
insert into Cajero values (5,'Cesar Alejandro','Saucedo','Coronado',20,2,5)
insert into Cajero values (6,'Lesly Alejandra','Limas','Limas',18,2,6)
insert into Cajero values (7,'Estefany','Limas','Macias',18,2,7)
insert into Cajero values (8,'Mauro','Duque','Montemayor',24,1,8)
insert into Cajero values (9,'Arturo','Moore','Orozco',20,1,9) 
insert into Cajero values (10,'Diana Geraldine','Perez','Huerta',18,2,10) 
insert into Cajero values (11,'Paulina','Navarrro','Reyes',16,1,1)  
select * from Cajero

insert into Proveedor values (1, 'Sabritas', 84463447)
insert into Proveedor values (2, 'Coca Cola', 34887510)
insert into Proveedor values (3, 'Gamesa', 45766147)
insert into Proveedor values (4, 'Starbucks', 51743138)
insert into Proveedor values (5, 'Yoplait', 13788462)
select * from Proveedor

insert into CategoriaProd values (1, 'Frituras')
insert into CategoriaProd values (2, 'Bebidas')
insert into CategoriaProd values (3, 'Galletas')
insert into CategoriaProd values (4, 'Yogurt')
select * from CategoriaProd

insert into Producto values (1,'Tostitos', 15,1,1)
insert into Producto values (2,'Ruffles', 15,1,1)
insert into Producto values (3,'Sprite', 18,2,2)
insert into Producto values (4,'Fanta', 17,2,2)
insert into Producto values (5,'Emperador', 12,3,3)
insert into Producto values (6,'Marias', 12,3,3)
insert into Producto values (7,'Espresso Macchiato', 23,4,2)
insert into Producto values (8,'Capuccino', 23,4,2)
insert into Producto values (9,'Batido Natural', 8,5,4)
insert into Producto values (10,'Licuado Fresas y Cereales', 15,5,2)
insert into Producto values (11,'Cheetos', 17,1,1)
insert into Producto values (12,'Doritos', 13,1,1)
insert into Producto values (13,'Powerade', 21,2,2)
insert into Producto values (14,'Ciel', 12,2,2)
insert into Producto values (15,'Chokis', 16,3,3)
insert into Producto values (16,'Mamut', 10,3,3)
insert into Producto values (17,'Skinny Vanilla Latte', 26,4,2)
insert into Producto values (18,'Iced Coffee', 25,4,2)
insert into Producto values (19,'Griego Batido Fresa', 15,5,4)
insert into Producto values (20,'Griego Beber Coco', 20,5,2)
insert into Producto values (21,'Sabritas', 15,1,1)
insert into Producto values (22,'Fritos', 13,1,1)
insert into Producto values (23,'Glaceau vitaminwater', 25,2,2)
insert into Producto values (24,'Sidral Mundet', 18,2,2)
insert into Producto values (25,'Cremax', 10,3,3)
insert into Producto values (26,'Crackets', 12,3,3)
insert into Producto values (27,'Double Shot Energy', 20,4,2)
insert into Producto values (28,'Frapuccino Caramel', 23,4,2)
insert into Producto values (29,'Disfruta Zarzamora', 8,5,4)
insert into Producto values (30,'Disfruta Beber Durazno', 15,5,2)
select * from Producto

delete from Producto where IdProducto= 6
delete from Almacen where IdAlmacen= 3
delete from Venta where NumVenta= 1
delete from Cajero where IdEmpleado= 9
delete from Sucursal where IdSucursal= 7

update Proveedor set Nombre= 'Bonafont' where IdProv = 3
update Sucursal set CP= 45221  where IdSucursal = 6
update Producto set Precio= 17 where Nombre = 'Disfruta Beber Durazno'
update Producto set Nombre= 'Disfruta Zarzamora' where IdProducto= 30
update Producto set IdCat= 4 where Nombre = 'Disfruta Zarzamora'
