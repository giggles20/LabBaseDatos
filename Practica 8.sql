
USE LabPDV
-- insert --

create Trigger Trigger1
on CategoriaProd
after Insert
as
begin 
	select * from CategoriaProd
	select * from inserted
end

insert into CategoriaProd values (5, 'Dulces')
drop trigger Trigger1

-- update --

create Trigger Trigger2
on Producto 
instead of update
as begin 
select * from Producto 
end

update Producto set Nombre = 'Sour Cream' where IdProducto = 22
drop Trigger Trigger2
 
 -- delete --

create Trigger Trigger3
on Producto after delete as begin 
select * from Producto
select * from deleted
end

delete from Producto where Nombre = 'Ciel'
drop Trigger Trigger3
