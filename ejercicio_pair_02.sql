 CREATE SCHEMA `tienda_zapatillas`;
 
 USE `tienda_zapatillas`;
 
 create table empleados (
	id_empleado int auto_increment not null,
    nombre char(45) not null,
    tienda char(45) not null,
	salario int,
    fecha_incorporacion date not null,
	primary key (id_empleado));
 
 create table clientes (
	id_cliente int auto_increment not null,
    nombre char(45) not null,
    numero_telefono int(9) not null,
    email char(45) not null,
    direccion char(45) not null,
    ciudad char(45),
    pais char(45),
    codigo_postal char(45),   
    primary key (id_cliente));
  
  create table zapatillas (
	id_zapatilla int auto_increment not null,
	modelo char not null,
    color char not null,
    primary key (id_zapatilla));
    
 
 create table facturas (
	id_factura int auto_increment not null,
    numero_factura char(45) not null,
    fecha date not null,
    id_zapatilla int not null,
    id_empleado int not null,
    id_cliente int not null,
    primary key (id_factura),
	
    constraint fk_empleados
	foreign key (id_empleado)
	references empleados(id_empleado),
    
    constraint fk_zapatillas
    foreign key (id_zapatilla)
    references zapatillas(id_zapatilla),
    
    constraint fk_cliente
    foreign key (id_cliente)
    references clientes(id_cliente));
        
		
    
 
 
 
 