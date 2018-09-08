USE PuntoDVenta

Create table VENTA(
	iNumVenta int primary key identity (1000,1) not null,
	tMercancia text null, 
	iCostoM int not null, 
	iIDEmp int check (iIDEmp > 8 and iIDEmp < 20) not null,
)

create table ALMACEN(
	tProducto text null, 
	biPrecio bigint not null, 
	bDisponibilidad bit default(0), 
	tDescripcion text null,
	tProveedor text null, 
)

create table EMPLEADO(
	vNombreEmp varchar(30) null unique, 
	vAPEmp varchar(20) null unique, 
	vAMEmp varchar(20) null unique, 
	Nombre_Emp as (vNombreEmp + vAPEmp + vAMEmp),
	iIDEmp int check (iIDEmp > 8 and iIDEmp < 20) not null primary key,
	iEdad int check (iEdad>18),
)

create table NOMINA(
	iIDEmp int check(iIDEmp > 8 and iIDEmp < 20) not null,
	tPuesto text not null,
	fPagoxHrPuesto float not null,
	iHorasTrabajadas int not null,
	Dias_Trabajados as iHorasTrabajadas / 8,
	Salario as iHorasTrabajadas * fPagoxHrPuesto,
	constraint PK_Empleado foreign key (iIDEmp) references EMPLEADO(iIDEmp)
)

create table PUESTO(
	iIdPuesto int primary key identity(20,5)not null,
	tNombPuesto text not null, 
	fPagoxHrPuesto float not null,
)

create unique nonclustered index Vendidos on VENTA(
	iNumVenta ASC,
	iIDEmp,
	iCostoM
)

create unique nonclustered index Storage on ALMACEN(
	bDisponibilidad ASC, 
	biPrecio
)

create unique nonclustered index Id_Empleado on EMPLEADO(
	vNombreEmp ASC,
	iIDEmp
)

create unique nonclustered index Pago_x_Empleado on NOMINA(
	iIDEmp ASC, 
	fPagoxHrPuesto
)

create unique nonclustered index multiples_Puestos on PUESTO(
	iIdPuesto ASC
)

