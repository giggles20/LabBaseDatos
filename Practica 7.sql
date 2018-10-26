
USE LabPDV

create procedure Proc_Alm as 
select a.IdAlmacen as 'Id Almacen', a.Sucursal as 'Sucursal', s.Nombre as 'Nombre de Sucursal', s.Ubicacion as 'Locacion' from
Almacen as a join Sucursal as s on a.Sucursal= s.IdSucursal

create procedure Proc_AlmacenInfo as 
update Almacen_Inf set IdAlmacen=2 where IdAlmacen = 3

create procedure Proc_CajeroTurno as
update Cajero_Turno set Turno = 'V' where Turno = 2

create procedure Proc_AlmacenInfo2 as 
update Almacen_Inf set IdAlmacen=4 where IdAlmacen = 4

create proc Proc_Vista
@IdAlmacen varchar (30)
as select * from InfoAl where @IdAlmacen=@IdAlmacen


create proc Proc_VistaC
@sucursal varchar(50)
as
select * from Cajeros_Turno1 where Sucursal=@sucursal

create function ObProducto(@IdCat int) returns varchar(50) as

begin
	
	declare @verif int;
	declare @cat varchar(50);


	set @verif= (Select p.Nombre from Producto as p where p.IdCat = @IdCat);

	if(@verif=1)
		begin
			 set @cat='Frituras';
		end
	else if(@verif=2)
		begin
			 set @cat='Bebidas';
		end
	else if(@verif=3)
		begin
			 set @cat='Galletas';
		end
	else if(@verif=4)
		begin
			set @cat = 'Yogurt';
		end
	return @cat
end
