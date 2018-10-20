select ApellidoMat from Cajero
select ApellidoPat as 'ApPat' from Cajero
select ApellidoMat as 'ApMat' from Cajero
select Top 2 (c.Nombres + ' ' + c.ApellidoPat + ' ' + c.ApellidoMat) as NombreCompleto from Cajero as c
select c.* from cajero as c 
select p.* from producto as p
select s.* from Sucursal as s
select pr.* from proveedor as pr
select cat.* from CategoriaProd as cat



create table Proveedor(
IdProv int not null primary key,
Nombre varchar(50) not null,
Contacto int not null
)

select * from Proveedor
insert into Proveedor values (1, 'Sabritas', 84463447)

create table CategoriaProd(
IdCat int not null primary key,
Nombre varchar(50) not null,
)

select * from CategoriaProd
insert into CategoriaProd values (1, 'Frituras')

create table Producto(
IdProducto int not null primary key,
Nombre varchar (30) not null,
Precio float not null,
IdProv int not null foreign key references Proveedor(IdProv), 
IdCat int not null foreign key references CategoriaProd(IdCat)
)

select * from Producto
insert into Producto values (1,'Tostitos', 15,1,1)
insert into Producto values (2,'Ruffles', 15,1,1)

Select top 3 * from Sucursal 
INNER JOIN Cajero
ON Sucursal.IdSucursal = Cajero.Sucursal
where cajero.Edad = 18
order by Ubicacion

select COUNT (c.Nombres + ' ' + c.ApellidoPat + ' ' + c.ApellidoMat) as NombreCompleto from Cajero as c
select COUNT (s.nombre + ' ' + s.ubicacion) as DatosSuc from Sucursal as s 

select MIN (s.nombre + ' ' + s.ubicacion) as Ubi from Sucursal as s group by IdSucursal
select MAX (c.Nombres + ' ' + c.ApellidoPat + ' ' + c.ApellidoMat) as NombreCompleto from Cajero as c group by Edad

select COUNT(edad), nombres 
from Cajero where edad > 17 
group by Nombres
having COUNT(Nombres) > 2



Select * from Producto
LEFT JOIN Proveedor
ON Producto.IdProv = Proveedor.IdProv

Select * from Producto as p
RIGHT JOIN CategoriaProd
ON p.IdCat = CategoriaProd.IdCat
where p.Nombre='Tostitos' 

Select * from Sucursal as s
FULL OUTER JOIN Cajero
ON s.IdSucursal = Cajero.Sucursal
where s.CP= 66045

Select * from Sucursal as s
LEFT JOIN Cajero
ON s.IdSucursal = Cajero.Sucursal
where s.IdSucursal= 1


select * from Sucursal as s
RIGHT JOIN cajero
ON s.IdSucursal = Cajero.Sucursal
where s.Ubicacion= 'Sendero'

select * from Sucursal as s
RIGHT JOIN cajero
ON s.IdSucursal = Cajero.Sucursal
group by IdSucursal

select * from Sucursal as s
RIGHT JOIN cajero
ON s.IdSucursal = Cajero.Sucursal
group by Sucursal

Select * from Producto as p
RIGHT JOIN CategoriaProd
ON p.IdCat = CategoriaProd.IdCat
group by IdProducto

create table Empleado(
Sucursal int not null foreign key references Sucursal(IdSucursal)
)

drop table Empleado

alter table Empleado 
add nombre varchar(30)

select * from empleado