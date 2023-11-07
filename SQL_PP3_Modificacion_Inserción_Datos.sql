USE tienda_sneakers;
/*Ejercicio 1*/
alter table zapas
add column marca varchar(45) not null,
add column talla int not null;
alter table empleados
modify column salario float;
alter table clientes
drop column pais;
alter table facturas
add column total float;
/*Ejercicio 2*/
insert into zapas (id_zapas, modelo, color, marca, talla)
values
	(1, "XQYUN" , "Negro", "Nike", 42),
	(2, "UOPMN" , "Rosas", "Nike", 39),
	(3, "OPNYT", "Verdes", "Adidas", 35);
insert into empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
values
	(1, "Laura" , "Alcobendas", 25987, '2010-09-03'),
	(2, "Maria" , "Sevilla", null, '2001-04-11'),
	(3, "Ester", "Oviedo", 30165.98, '2000-11-29');
insert into clientes (id_cliente, nombre, num_telefono, email, direccion,ciudad, provincia, CP)
values
	(1, "Monica" , 1234567289, "monica@email.com","Calle Felicidad", "Móstoles","Madrid","28176"),
	(2, "Lorena" ,289345678,"lorena@email.com","Calle Alegria", "Barcelona","Barcelona","12346"),
	(3, "Carmen", 298463759,"carmen@email.com","Calle del Color", "Vigo","Pontevedra","23456");
insert into facturas (id_factura, num_factura, fecha, id_zapas,id_empleado, id_cliente, total)
values
	(1, "123" , '2001-12-11', 1,2, 1,54.98),
	(2, "1234" ,'2005-05-23',1,1, 3,89.91),
	(3, "12345", '2015-09-18',2,3,3,76.23);
    /*Ejercicio 3*/
update zapas  
set color = "Amarillo"
where id_zapas = 2;
update empleados  
set tienda = "A Coruña"
where nombre = "Laura";
update clientes  
set num_telefono = 123456728
where nombre = "Monica";
update facturas  
set total = 89.91
where id_zapas =2 ;