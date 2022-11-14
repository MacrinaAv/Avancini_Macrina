USE elsistema;
CREATE TABLE paises (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);
CREATE TABLE provincias (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
id_pais INT UNSIGNED,
FOREIGN KEY (id_pais) REFERENCES paises (id)
);
CREATE TABLE localidades (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
id_provincia INT UNSIGNED,
FOREIGN KEY (id_provincia) REFERENCES provincias (id)
);

ALTER TABLE elsistema.empleados ADD  direccion VARCHAR(50), ADD id_localidad INT UNSIGNED, ADD email VARCHAR(100), ADD fecha_ingreso DATE, ADD tms TIMESTAMP, ADD telefono VARCHAR(45), ADD FOREIGN KEY (id_localidad) REFERENCES localidades (id); -- 2
ALTER TABLE elsistema.departamentos ADD  gasto DOUBLE, ADD tms TIMESTAMP; -- 3

INSERT INTO `elsistema`.`paises` (`nombre`) VALUES ('Argentina'); -- 4
INSERT INTO `elsistema`.`paises` (`nombre`) VALUES ('Brasil'); -- 4
INSERT INTO `elsistema`.`paises` (`nombre`) VALUES ('Paraguay'); -- 4
INSERT INTO `elsistema`.`paises` (`nombre`) VALUES ('Chile'); -- 4
INSERT INTO `elsistema`.`paises` (`nombre`) VALUES ('Uruguay'); -- 4
INSERT INTO `elsistema`.`provincias` (`nombre`,`id_pais`) VALUES ('Misiones',1);-- 4
INSERT INTO `elsistema`.`provincias` (`nombre`,`id_pais`) VALUES ('Corrientes',1);-- 4
INSERT INTO `elsistema`.`provincias` (`nombre`,`id_pais`) VALUES ('Itapua',3);-- 4
INSERT INTO `elsistema`.`provincias` (`nombre`,`id_pais`) VALUES ('Rio de Janeiro',2);-- 4
INSERT INTO `elsistema`.`provincias` (`nombre`,`id_pais`) VALUES ('Alto Parana',3);-- 4
INSERT INTO `elsistema`.`localidades` (`nombre`,`id_provincia`) VALUES ('Ciudad del Este',5);-- 4
INSERT INTO `elsistema`.`localidades` (`nombre`,`id_provincia`) VALUES ('Obera',1);-- 4
INSERT INTO `elsistema`.`localidades` (`nombre`,`id_provincia`) VALUES ('Posadas',1);-- 4
INSERT INTO `elsistema`.`localidades` (`nombre`,`id_provincia`) VALUES ('Encarnacion',3);-- 4
INSERT INTO `elsistema`.`localidades` (`nombre`,`id_provincia`) VALUES ('Corrientes',2);-- 4
INSERT INTO `elsistema`.`departamentos` (`nombre`,`presupuesto`,`estado`,`gasto`) VALUES ('Desarrollo',120000,1,100000); -- 4
INSERT INTO `elsistema`.`departamentos` (`nombre`,`presupuesto`,`estado`,`gasto`) VALUES ('Proyectos',1200000,0,0); -- 4
INSERT INTO `elsistema`.`departamentos` (`nombre`,`presupuesto`,`estado`,`gasto`) VALUES ('Contabilidad',100000,1,20000);-- 4 
INSERT INTO `elsistema`.`departamentos` (`nombre`,`presupuesto`,`estado`,`gasto`) VALUES ('Recursos Humanos',110000,1,100000);-- 4
INSERT INTO `elsistema`.`departamentos` (`nombre`,`presupuesto`,`estado`,`gasto`) VALUES ('Sistema',200000,1,150000);-- 4
INSERT INTO `elsistema`.`empleados` (`cuil_cuit`,`nombre`,`apellido`,`id_departamento`,`estado`,`direccion`,`id_localidad`,`email`,`fecha_ingreso`,`telefono`) VALUES ('27-32481596-3', 'Aarón', 'Rivero',4,1,'san juan 65461',1,'aaron@gmail.com','2010-05-13','404040'); -- 4
INSERT INTO `elsistema`.`empleados` (`cuil_cuit`,`nombre`,`apellido`,`id_departamento`,`estado`,`direccion`,`id_localidad`,`email`,`fecha_ingreso`,`telefono`) VALUES ( '27-29557532-1', 'Adela', 'Salas',5,0,'25 mayo 54',5,'adela@gmail.com','2015-08-07','404454'); -- 4
INSERT INTO `elsistema`.`empleados` (`cuil_cuit`,`nombre`,`apellido`,`id_departamento`,`estado`,`direccion`,`id_localidad`,`email`,`fecha_ingreso`,`telefono`) VALUES ('20-36970642-1', 'Adolfo', 'Rubio',1, 1,'Mendoza 12',3,'aaron@gmail.com','2022-06-25','589494'); -- 4
INSERT INTO `elsistema`.`empleados` (`cuil_cuit`,`nombre`,`apellido`,`id_departamento`,`estado`,`direccion`,`id_localidad`,`email`,`fecha_ingreso`,`telefono`) VALUES ('24-71651431-3', 'Pepe', 'Ruiz', 3,0,'25 mayo 789',5,'adela@gmail.com','2022-04-02','858585'); -- 4
INSERT INTO `elsistema`.`empleados` (`cuil_cuit`,`nombre`,`apellido`,`id_departamento`,`estado`,`direccion`,`id_localidad`,`email`,`fecha_ingreso`,`telefono`) VALUES ('27-36738983-3', 'Marta','Herrera',1, 1,'Trueno 881',1,'aaron@gmail.com','2022-04-02','845648'); -- 4

RENAME TABLE elsistema.pedidos TO movimientos; -- 5

CREATE TABLE Cajas(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
horainicio DATETIME,
 horacierre DATETIME,
 estado BOOLEAN,
 tsm TIMESTAMP
 );
CREATE TABLE Proveedores (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
razon_social VARCHAR(100),
nombre VARCHAR(100),
apellido VARCHAR(100),
naturaleza ENUM("fisica","juridica"),
cuit VARCHAR(100),
id_localidad  INT UNSIGNED,
estado BOOLEAN,
tsm TIMESTAMP,
FOREIGN KEY (id_localidad) REFERENCES elsistema.localidades (id)
);
CREATE TABLE Marcas (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(100),
imagen VARCHAR(100),
id_proveedor INT UNSIGNED,
estado BOOLEAN,
tsm TIMESTAMP,
FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id)
);
CREATE TABLE Productos (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(100),
id_marca INT UNSIGNED,
stok DOUBLE,
estado BOOLEAN,
tms  TIMESTAMP, 
FOREIGN KEY (id_marca) REFERENCES Marcas (id)
);
-- 6
INSERT INTO `elsistema`.`cajas` (`horainicio`, `horacierre`, `estado`) VALUES ('2021-10-20 08:00:00', '2021-10-20 20:00:00', '1'); -- 7
INSERT INTO `elsistema`.`cajas` (`horainicio`, `horacierre`, `estado`) VALUES ('2021-10-21 07:00:00', '2021-10-22 19:00:00', '1'); -- 7
INSERT INTO `elsistema`.`cajas` (`horainicio`, `horacierre`, `estado`) VALUES ('2021-10-22 08:00:00', '2021-10-22 22:00:00', '0'); -- 7
INSERT INTO `elsistema`.`cajas` (`horainicio`, `horacierre`, `estado`) VALUES ('2021-10-23 08:00:00', '2021-10-23 21:00:00', '0'); -- 7
INSERT INTO `elsistema`.`cajas` (`horainicio`, `horacierre`, `estado`) VALUES ('2021-10-25 06:00:00', '2021-10-25 22:00:00', '1'); -- 7
INSERT INTO `elsistema`.`proveedores` (`razon_social`, `nombre`, `apellido`, `naturaleza`, `cuit`, `id_localidad`, `estado`) VALUES ('Banco', 'Manuel', 'Roca', 'juridica', ' \'20-34638446-', '2', '1');-- 7
INSERT INTO `elsistema`.`proveedores` (`razon_social`, `nombre`, `apellido`, `naturaleza`, `cuit`, `id_localidad`, `estado`) VALUES ('Tienda Luz', 'Marta', 'Herrera', 'fisica', ', \'27-36738983-', '2', '1');-- 7
INSERT INTO `elsistema`.`proveedores` (`razon_social`, `nombre`, `apellido`, `naturaleza`, `cuit`, `id_localidad`, `estado`) VALUES ('Caras', 'Juan', 'Antonio', 'fisica', ' \'20-38265162-', '1', '0');-- 7
INSERT INTO `elsistema`.`proveedores` (`razon_social`, `nombre`, `apellido`, `naturaleza`, `cuit`, `id_localidad`, `estado`) VALUES ('Maria', 'Maria', 'Santa', 'juridica', ' \'27-38382980-', '5', '1');-- 7
INSERT INTO `elsistema`.`proveedores` (`razon_social`, `nombre`, `apellido`, `naturaleza`, `cuit`, `id_localidad`, `estado`) VALUES ('J Juan', 'Juan', 'Gomez', 'fisica', ' \'25-36399183-', '5', '0');-- 7
INSERT INTO `elsistema`.`marcas` (`descripcion`, `imagen`, `id_proveedor`, `estado`) VALUES ('ropa', 'aaa', '4', '1'); -- 7
INSERT INTO `elsistema`.`marcas` (`descripcion`, `imagen`, `id_proveedor`, `estado`) VALUES ('ropa', 'bbb', '2', '1'); -- 7
INSERT INTO `elsistema`.`marcas` (`descripcion`, `imagen`, `id_proveedor`, `estado`) VALUES ('comida', 'ccc', '5', '0'); -- 7
INSERT INTO `elsistema`.`marcas` (`descripcion`, `imagen`, `id_proveedor`, `estado`) VALUES ('comida', 'ddd', '3', '0'); -- 7
INSERT INTO `elsistema`.`marcas` (`descripcion`, `imagen`, `id_proveedor`, `estado`) VALUES ('tela', 'eee', '4', '1'); -- 7
INSERT INTO `elsistema`.`productos` (`descripcion`, `id_marca`, `stok`, `estado`) VALUES ('pantalones', '1', '25', '1'); -- 7
INSERT INTO `elsistema`.`productos` (`descripcion`, `id_marca`, `stok`, `estado`) VALUES ('remeras', '1', '85', '1'); -- 7
INSERT INTO `elsistema`.`productos` (`descripcion`, `id_marca`, `stok`, `estado`) VALUES ('empanadas', '3', '100', '0'); -- 7
INSERT INTO `elsistema`.`productos` (`descripcion`, `id_marca`, `stok`, `estado`) VALUES ('pizza', '4', '50', '1'); -- 7
INSERT INTO `elsistema`.`productos` (`descripcion`, `id_marca`, `stok`, `estado`) VALUES ('seda', '5', '100', '1'); -- 7

SELECT d.nombre Nombre,d.presupuesto Presupuesto,d.gasto Gasto,(d.presupuesto-d.gasto) Diferencia FROM elsistema.departamentos AS d WHERE estado=1; -- 8
SELECT p.nombre Pais,l.nombre Localidad FROM elsistema.paises AS p INNER JOIN elsistema.provincias AS pp ON p.id=pp.id_pais INNER JOIN elsistema.localidades AS l	ON pp.id=l.id_provincia ORDER BY Pais ;-- 9
UPDATE `elsistema`.`empleados` SET `telefono` = '408595' WHERE (`idemplaedo` = '1'); -- 10
UPDATE `elsistema`.`empleados` SET `id_localidad` = '2', `fecha_ingreso` = '2022-04-30' WHERE (`idemplaedo` = '5'); -- 10

INSERT INTO `elsistema`.`vendedores` (`nombre`, `apellido`, `cuitcuil`, `comisión`) VALUES ('Daniel', 'Sáez', '24-38481296-3', '0.15'); -- 11
INSERT INTO `elsistema`.`vendedores` (`nombre`, `apellido`, `cuitcuil`, `comisión`) VALUES ('Juan', 'Gómez', '20-39231523-3', '0.13'); -- 11
INSERT INTO `elsistema`.`vendedores` (`nombre`, `apellido`, `cuitcuil`, `comisión`) VALUES ('Diego', 'Flores', '20-38481221-3', '0.11'); -- 11
INSERT INTO `elsistema`.`vendedores` (`nombre`, `apellido`, `cuitcuil`, `comisión`) VALUES ('Marta', 'Herrera', '27-40481736-1', '0.14'); -- 11
INSERT INTO `elsistema`.`vendedores` (`nombre`, `apellido`, `cuitcuil`, `comisión`) VALUES ('Antonia', 'Carretero', '20-31481370-7', '0.12'); -- 11
ALTER TABLE elsistema.movimientos ADD id_producto INT UNSIGNED, ADD estado BOOLEAN, ADD tms TIMESTAMP, ADD tipo_movimiento ENUM("ingreso","egreso","pedido"), ADD FOREIGN KEY (id_producto) REFERENCES productos (id); -- 12
INSERT INTO `elsistema`.`clientes` (`nombre`, `apellido`, `cuitcuil`, `ciudad`, `categoría`) VALUES ('Aaeón', 'Rivero', '20-4148122-1', 'Garuhape', '100');-- para que funcione el 13
INSERT INTO `elsistema`.`clientes` (`nombre`, `apellido`, `cuitcuil`, `ciudad`, `categoría`) VALUES ('Adela', 'Salas', '27-42482596-3', 'Capiovi', '200');-- para que funcione el 13
INSERT INTO `elsistema`.`clientes` (`nombre`, `apellido`, `cuitcuil`, `ciudad`) VALUES ('Adolfo', 'Rubio', '23-37928596-3', 'Posadas');-- para que funcione el 13
INSERT INTO `elsistema`.`clientes` (`nombre`, `apellido`, `cuitcuil`, `ciudad`, `categoría`) VALUES ('Marcos', 'Loyola', '24-42481327-3', 'Posadas', '200');-- para que funcione el 13
INSERT INTO `elsistema`.`clientes` (`nombre`, `apellido`, `cuitcuil`, `ciudad`, `categoría`) VALUES ('María', 'Santana', '27-3877152-2', 'Oberá', '200');-- para que funcione el 13
INSERT INTO `elsistema`.`movimientos` (`cantidad`, `fecha`, `id_cliente`, `id_vendedor`, `id_producto`, `estado`, `tipo_movimiento`) VALUES ('5', '2022-01-25', '1', '2', '2', '1', 'ingreso');-- 13
INSERT INTO `elsistema`.`movimientos` (`cantidad`, `fecha`, `id_cliente`, `id_vendedor`, `id_producto`, `estado`, `tipo_movimiento`) VALUES ('8', '2022-05-05', '2', '1', '5', '0', 'egreso');-- 13
INSERT INTO `elsistema`.`movimientos` (`cantidad`, `fecha`, `id_cliente`, `id_vendedor`, `id_producto`, `estado`, `tipo_movimiento`) VALUES ('5', '2021-09-07', '4', '3', '3', '1', 'pedido');-- 13
INSERT INTO `elsistema`.`movimientos` (`cantidad`, `fecha`, `id_cliente`, `id_vendedor`, `id_producto`, `estado`, `tipo_movimiento`) VALUES ('10', '2022-11-20', '5', '5', '3', '1', 'pedido');-- 13
INSERT INTO `elsistema`.`movimientos` (`cantidad`, `fecha`, `id_cliente`, `id_vendedor`, `id_producto`, `estado`, `tipo_movimiento`) VALUES ('20', '2022-11-25', '3', '5', '4', '1', 'ingreso');-- 13
UPDATE `elsistema`.`movimientos` SET `estado` = NULL WHERE (`id` = '1');-- 14
UPDATE `elsistema`.`movimientos` SET `estado` = NULL WHERE (`id` = '2');-- 14
ALTER TABLE elsistema.paises MODIFY COLUMN nombre VARCHAR(100);-- permite poner el nombre null
SELECT p.id, p.nombre ,count(p.nombre) FROM elsistema.paises AS p INNER JOIN elsistema.provincias AS pp ON p.id=pp.id_pais INNER JOIN elsistema.localidades AS l ON pp.id=l.id_provincia GROUP BY p.nombre ;-- muestra el pais en orden de mas localidades
UPDATE elsistema.paises AS p SET p.nombre=null WHERE  id=1 ; -- elimina el nombre del pais que en este caso es el de mayor cantidad de localidades
UPDATE elsistema.productos SET stok=(stok+(select m.cantidad FROM elsistema.movimientos AS m WHERE m.id=1)) WHERE elsistema.productos.id=2;-- 15
UPDATE elsistema.productos SET stok=(stok-(select m.cantidad FROM elsistema.movimientos AS m WHERE m.id=2)) WHERE elsistema.productos.id=5;-- 15
UPDATE elsistema.productos SET stok=(stok+(select m.cantidad FROM elsistema.movimientos AS m WHERE m.id=3)) WHERE elsistema.productos.id=3;-- 15
UPDATE elsistema.productos SET stok=(stok+(select m.cantidad FROM elsistema.movimientos AS m WHERE m.id=4)) WHERE elsistema.productos.id=3;-- 15
UPDATE elsistema.productos SET stok=(stok+(select m.cantidad FROM elsistema.movimientos AS m WHERE m.id=5)) WHERE elsistema.productos.id=4;-- 15
CREATE TABLE `elsistema`.`parametros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tsm` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `cosas` JSON NULL,
  `id_usuario` INT NULL,
  PRIMARY KEY (`id`));
INSERT INTO `elsistema`.`parametros` (`cosas`, `id_usuario`) VALUES ('{\"idDeLaCosa\": \"101\", \"permisos\": \"PUT, GET\"}', '1');
INSERT INTO `elsistema`.`parametros` (`cosas`, `id_usuario`) VALUES ('{\"vistasPermitidas\":\"menuPrincipal,menuSecundario,ventas,estadisticaVentas,listaCliente\", \"grupo\": \"ventas\"}', '2');
INSERT INTO `elsistema`.`parametros` (`cosas`, `id_usuario`) VALUES ('{\"zonaHoraria\": \"America/Argentina/BuenosAires\"}','5');
INSERT INTO `elsistema`.`parametros` (`cosas`, `id_usuario`) VALUES ('{\"fechaInicioActividades\": \"01/01/2019\", \"mesAperturaCaja\": \"Enero\", \"mesCierreCaja\": \"Diciembre\"}','5');
INSERT INTO `elsistema`.`parametros` (`cosas`, `id_usuario`) VALUES ('{\"balancesAniosAnteriores\": {\"2019\": {\"ingreso\": \"7374901.93\",\"egreso\": \"3732538,75\"},\"2020\":{\"ingreso\": \"27442665,12\",\"egreso\": \"8522331,82\"},\"2021\": {\"ingreso\":\"31634912,57\",\"egreso\": \"9757142,66\"}}}','3');







