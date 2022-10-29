SELECT apellido Apellidos FROM sistema.empleados ; -- Trae apellidos
SELECT apellido Apellidos FROM sistema.empleados GROUP BY  apellido; -- Sin repeticiones
SELECT * FROM sistema.empleados ; -- Toda las columnas de la tabla empleado
SELECT nombre  Nombre,apellido  Apellido FROM sistema.empleados ;-- todos los nombres y apellidos de empleados 
SELECT cuil_cuit "Cuit/Cuil" FROM sistema.empleados; -- Lista Cuil/Cuit 
SELECT  CONCAT_WS(" ",nombre,apellido) as Nombre_y_Apellido FROM sistema.empleados; --  Lista en una misma columna
SELECT  UPPER( CONCAT_WS(" ",nombre,apellido)) as Nombre_y_Apellido FROM sistema.empleados;-- " mayusculas
SELECT  LOWER( CONCAT_WS(" ",nombre,apellido)) as Nombre_y_Apellido FROM sistema.empleados;-- " Minusculas
SELECT nombre,presupuesto  FROM sistema.departamentos WHERE presupuesto>0 ORDER BY presupuesto ASC ; -- Orden ascendente
SELECT nombre Departamentos FROM sistema.departamentos ORDER BY nombre ASC ;
SELECT nombre Departamentos FROM sistema.departamentos ORDER BY nombre DESC ;
SELECT apellido,nombre  FROM sistema.empleados ORDER BY apellido ASC, nombre ASC ;
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos ORDER BY presupuesto DESC LIMIT 3; -- Ordena y trae los mayores
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto>0 ORDER BY presupuesto ASC LIMIT 3; -- Ordena trae los menores dis de 0
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto>=150000;
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto>=100000 AND presupuesto<=200000;
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto<100000 OR presupuesto>200000;
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto BETWEEN 100000 AND 200000; 
SELECT nombre Departamentos,presupuesto Presupuesto FROM sistema.departamentos WHERE presupuesto NOT BETWEEN 100000 AND 200000 ; 
SELECT e.nombre Nombre, e.apellido Apellido, d.nombre Departamernto FROM sistema.empleados AS e INNER JOIN   sistema.departamentos AS d ON e.id_departamento=d.iddepartamento;
SELECT  d.nombre Departamernto, CONCAT_WS(" ", e.apellido, e.nombre) Empleado FROM sistema.empleados AS e INNER JOIN   sistema.departamentos AS d ON e.id_departamento=d.iddepartamento ORDER BY	d.nombre ASC, e.apellido ASC, e.nombre ASC;
SELECT  d.nombre Departamernto FROM sistema.empleados AS e INNER JOIN   sistema.departamentos AS d ON e.id_departamento=d.iddepartamento  WHERE e.cuil_cuit="27-38382980-3";
SELECT  d.nombre Departamernto FROM sistema.empleados AS e INNER JOIN   sistema.departamentos AS d ON e.id_departamento=d.iddepartamento  WHERE e.nombre="Pepe" AND e.apellido="Ruiz";
SELECT e.cuil_cuit,e.apellido,e.nombre FROM sistema.empleados AS e INNER JOIN sistema.departamentos AS d ON e.id_departamento=d.iddepartamento WHERE d.iddepartamento="5" ORDER BY e.apellido ASC,e.nombre ASC;
SELECT e.apellido,e.nombre FROM sistema.empleados AS e INNER JOIN sistema.departamentos AS d ON e.id_departamento=d.iddepartamento WHERE d.presupuesto<100000 OR d.presupuesto>200000;


