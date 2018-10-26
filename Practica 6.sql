

select * from 
(select IdCat, count(IdCat) as Cat_Prod from Producto group by IdCat) 
as Cat_Prod order by IdCat desc

select * from
(select IdProv, count(IdProv) as Prov_Prod from Producto group by IdProv)
as Prov_Prod order by IdProv asc

select * from
(select * from Sucursal where IdSucursal <=8)
as Sucursal order by CP asc

with Prod_Prov as
(select *  from Producto)
select *  from Prod_Prov where IdProv =1


create view Prod_Descrip as select 
p.nombre + ' ' + prov.nombre + ' ' as descripcion from
Producto as p inner join Proveedor as prov on p.IdProv = prov.IdProv where p.IdCat = 3
select * from Prod_Descrip

create view Prod_Cat as select
p.nombre + ' cat: ' + cat.nombre as categoria_Prod from
Producto as p left join CategoriaProd as cat on p.IdCat = cat.IdCat where p.IdProv = 4
select * from Prod_Cat 

create view Ticket as select 
v.numVenta + ' ' + p.nombre as desc_ticket from
Venta as v inner join Producto as p on v.Producto = p.IdProducto where p.IdProv = 3
select * from Ticket

create view Cajero_Turno as 
select c.Nombres + ' ' + c.ApellidoPat + ' ' + c.ApellidoMat as nom_Completo, c.Turno , s.Nombre from
Cajero as c inner join Sucursal as s on c.Sucursal = s.IdSucursal where c.Turno=2
select * from Cajero_Turno

create view Prod_Descrip2 as select 
p.nombre + ' ' + prov.nombre + ' ' as descripcion from
Producto as p inner join Proveedor as prov on p.IdProv = prov.IdProv where p.IdCat = 2
select * from Prod_Descrip2


create view AlmacenInf as select 
a.IdAlmacen + ' ' + a.Sucursal + ' ' + s.Nombre + ' ' + s.Ubicacion + ' ' + s.CP as InfoAl from
Almacen as a inner join Sucursal as s on a.Sucursal = s.IdSucursal where a.Proveedor = 3
select * from AlmacenInf

create view Prod_Descrip3 as select 
p.nombre + ' ' + prov.nombre + ' ' as descripcion from
Producto as p inner join Proveedor as prov on p.IdProv = prov.IdProv where p.IdCat = 4
select * from Prod_Descrip3



declare @pro varchar(50)
set @pro = ' where IdProducto >=5' 
declare @query varchar(50)
set @query = 'select * from Producto' + @pro
exec(@query)



