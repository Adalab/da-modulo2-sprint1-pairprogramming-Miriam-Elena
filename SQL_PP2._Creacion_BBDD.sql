CREATE SCHEMA TIENDA_SNEAKERS;
USE TIENDA_SNEAKERS;
create table zapas(
	id_zapas int auto_increment not null primary key,
	modelo varchar(45) not null,
	color varchar(45) not null);
    
create table clientes(
id_cliente int auto_increment not null primary key,
nombre varchar(45) not null,
num_telefono int not null,
email varchar(45) not null,
direccion varchar(45) not null,
ciudad varchar(45) not null,
provincia varchar(45) not null,
pais varchar(45) not null,
CP varchar(45) not null);
create table empleados(
id_empleado int auto_increment not null primary key,
nombre varchar(45) not null,
tienda varchar(45) not null,
salario int not null,
fecha_incorporacion date not null);
create table facturas(
id_factura  int auto_increment not null primary key,
num_factura varchar(45) not null,
fecha date not null, 
id_zapas  int not null,
foreign key (id_zapas) references zapas(id_zapas),
id_empleado  int not null,
foreign key(id_empleado) references empleados(id_empleado),
id_cliente  int not null,
foreign key (id_cliente) references clientes(id_cliente)
)
ENGINE = InnoDB;
