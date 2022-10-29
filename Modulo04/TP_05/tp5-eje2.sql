SELECT p.fecha, p.cantidad FROM ventas.pedidos AS p ORDER BY p.fecha DESC; -- por fecha desc
SELECT * FROM ventas.pedidos AS p ORDER BY p.cantidad DESC LIMIT 2;
SELECT id_cliente FROM ventas.pedidos AS p GROUP BY id_cliente;
SELECT * FROM ventas.pedidos AS p WHERE p.fecha>"2022-01-01" AND p.fecha<"2023-01-01" AND p.cantidad>=500;
SELECT * FROM ventas.vendedores AS v WHERE v.comisión>=0.05 AND v.comisión<=0.11;
SELECT v.comisión FROM ventas.vendedores AS v ORDER BY  v.comisión DESC LIMIT 1;
SELECT c.apellido Apellido, c.nombre Nombre FROM ventas.clientes AS c where c.cuitcuil IS NOT NULL ORDER BY c.apellido ASC, c.nombre ASC ;
SELECT c.nombre Nombre FROM ventas.clientes AS c WHERE c.nombre LIKE "A%" "%n" OR c.nombre Like "P%"  ORDER BY c.nombre ASC;
SELECT c.nombre Nombre FROM ventas.clientes AS c WHERE c.nombre NOT LIKE "A%" ;
SELECT c.nombre Nombre FROM ventas.clientes AS c WHERE c.nombre LIKE "%el" or c.nombre LIKE "%o" ORDER BY c.nombre ASC;
SELECT c.id, c.apellido Apellido,c.nombre Nombrte FROM ventas.clientes AS c INNER JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE c.id=p.id_cliente GROUP BY c.id ORDER BY c.apellido ASC;
SELECT * FROM ventas.clientes AS c INNER JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE c.id=p.id_cliente  ORDER BY c.nombre ASC , c.apellido ASC;
SELECT * FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor WHERE v.id=p.id_vendedor  ORDER BY v.nombre ASC , v.apellido ASC;
SELECT c.apellido Apellido_Cliente,c.nombre Nombre_Cliente,c.cuitcuil CUIL_Cliente, c.ciudad Ciudad_cliente, c.categoría Categoría,p.cantidad Cantidad, p.fecha Fecha, v.apellido Apellido_Vend, v.nombre Nombre_Vend,v.cuitcuil CUIL_Vend, v.comisión Comisión FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor INNER JOIN ventas.clientes AS c ON p.id_cliente=c.id;
SELECT c.nombre, c.apellido, p.cantidad FROM ventas.clientes AS c INNER JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE p.fecha>"2022-01-01" AND p.fecha<"2023-01-01"  AND p.cantidad>=300  AND p.cantidad<=1000;
SELECT v.apellido Apellido_Vend, v.nombre Nombre_Vend FROM ventas.vendedores AS v  INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor  INNER JOIN ventas.clientes AS c ON p.id_cliente=c.id WHERE c.id=6;
SELECT c.apellido Apellido_Cli, c.nombre Nombre_Cli FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor INNER JOIN ventas.clientes AS c ON p.id_cliente=c.id WHERE v.id=1;
SELECT c.apellido Apellido_Cli, c.nombre Nombre_Cli, p.cantidad,p.fecha,v.apellido,v.nombre FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor INNER JOIN ventas.clientes AS c ON p.id_cliente=c.id ORDER BY v.apellido ASC, v.nombre ASC;
SELECT v.apellido Apellido_Ven, v.nombre Nombre_Ven, p.cantidad,p.fecha,c.apellido,c.nombre FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON v.id=p.id_vendedor INNER JOIN ventas.clientes AS c ON p.id_cliente=c.id ORDER BY c.apellido ASC, c.nombre ASC;
SELECT c.id, c.apellido Apellido, c.nombre Nombre FROM ventas.clientes AS c lEFT JOIN  ventas.pedidos AS p ON p.id_cliente=c.id WHERE p.id_cliente=c.id IS NULL;
 
 SELECT UPPER(CONCAT_WS(' ',apellido,nombre)) as Apellido_y_Nombre FROM ventas.clientes AS c lEFT JOIN  ventas.pedidos AS p ON p.id_cliente=c.id WHERE p.id_cliente=c.id IS NULL
UNION SELECT CONCAT_WS(' ',apellido,nombre) as Apellido_y_Nombre   from ventas.vendedores AS v LEFT JOIN  ventas.pedidos AS p ON p.id_vendedor =v.id WHERE p.id_vendedor=v.id IS NULL
ORDER BY Apellido_y_Nombre  ASC ;-- consulta 22

SELECT sum(cantidad) Cantidad_TOTAL FROM ventas.pedidos; -- consulta 23 funciona con el script limpio

SELECT avg(cantidad) Cantidad_Promedio FROM ventas.pedidos; -- consulta 24
SELECT count(distinct id_vendedor) AS Vendedores_Activos  FROM ventas.pedidos; -- consulta 25
SELECT count(distinct id) AS Clientes  FROM ventas.clientes AS c where c.cuitcuil IS NOT NULL; -- consulta 26
SELECT max(cantidad) AS CantidadMaxima  FROM ventas.pedidos; -- 27
SELECT min(cantidad) AS CantidadMaxima  FROM ventas.pedidos; -- 28
SELECT ciudad Ciudad ,max(categoría) Categoría_Maxima  FROM ventas.clientes AS c group by c.ciudad; -- 29
SELECT c.id,p.fecha, concat_ws(' ',c.nombre, c.apellido) Nombre_Apellido, max(p.cantidad) FROM ventas.clientes AS c INNER JOIN ventas.pedidos AS p ON p.id_cliente=c.id GROUP BY p.fecha ORDER BY p.fecha DESC; -- 30
SELECT c.id,p.fecha, concat_ws(' ',c.nombre, c.apellido) Nombre_Apellido, max(p.cantidad) FROM ventas.clientes AS c INNER JOIN ventas.pedidos AS p ON p.id_cliente=c.id WHERE p.cantidad>2000 GROUP BY p.fecha ORDER BY p.fecha DESC;-- 31
SELECT v.id Identificación, concat_ws(' ',v.nombre, v.apellido) Nombre_Apellido, max(p.cantidad) Cantidad_MAX,p.fecha FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON p.id_vendedor=v.id WHERE p.fecha="2021-08-17";-- 32
SELECT v.id Identificación, concat_ws(' ',v.nombre, v.apellido) Nombre_Apellido, sum(p.cantidad) Cantidad_MAX,p.fecha FROM ventas.vendedores AS v INNER JOIN ventas.pedidos AS p ON p.id_vendedor=v.id WHERE p.fecha="2021-08-17" GROUP BY Nombre_Apellido ORDER BY CAntidad_MAX DESC LIMIT 1;-- 33
SELECT c.id Identificación, concat_ws(' ',c.nombre, c.apellido) Nombre_Apellido, count(p.id_cliente) Cantidad_pedidos FROM ventas.clientes AS c LEFT JOIN ventas.pedidos AS p ON p.id_cliente=c.id GROUP BY Nombre_Apellido ;-- 33
SELECT c.id Identificación, concat_ws(' ',c.nombre, c.apellido) Nombre_Apellido, count(p.id_cliente) Cantidad_pedidos FROM ventas.clientes AS c LEFT JOIN ventas.pedidos AS p ON p.id_cliente=c.id WHERE p.fecha>="2020-01-01" and p.fecha<"2021-01-01" GROUP BY Nombre_Apellido ;-- 34
SELECT max(p.cantidad) Cantidad_MAX,YEAR(p.fecha) Año FROM ventas.pedidos AS p GROUP BY Año;-- 35
SELECT count(distinct p.cantidad) Cantidad,YEAR(p.fecha) Año FROM ventas.pedidos AS p GROUP BY Año; -- 36
SELECT c.nombre, c.apellido, p.cantidad, p.fecha FROM ventas.clientes AS c CROSS JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE c.id=2;-- 37
SELECT p.cantidad, p.fecha FROM ventas.pedidos AS p WHERE p.id_cliente=2;-- 37
SELECT v.nombre, v.apellido, p.cantidad, p.fecha FROM ventas.vendedores AS v CROSS JOIN ventas.pedidos AS p ON v.id=p.id_vendedor WHERE v.nombre="Daniel" and  v.apellido="Sáez"; -- 38
SELECT c.nombre, c.apellido, max(p.cantidad), YEAR(p.fecha) Año FROM ventas.clientes AS c CROSS JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE YEAR(p.fecha)="2020" group by Año; -- 39
SELECT p.fecha,min(p.cantidad) FROM ventas.clientes AS c CROSS JOIN ventas.pedidos AS p ON c.id=p.id_cliente WHERE nombre="Pepe" AND apellido="Ruiz" GROUP BY nombre; -- 40
SELECT c.id, c.nombre, c.apellido FROM ventas.clientes AS c WHERE c.id NOT IN (SELECT ventas.pedidos.id_cliente FROM ventas.pedidos); -- 41
SELECT v.id, v.nombre, v.apellido FROM ventas.vendedores AS v WHERE v.id NOT IN (SELECT ventas.pedidos.id_vendedor FROM ventas.pedidos); -- 42
SELECT c.id, c.nombre, c.apellido FROM ventas.clientes AS c WHERE NOT EXISTS (SELECT ventas.pedidos.id_cliente FROM ventas.pedidos WHERE c.id=ventas.pedidos.id_cliente); -- 43
SELECT v.id, v.nombre, v.apellido FROM ventas.vendedores AS v WHERE NOT EXISTS (SELECT ventas.pedidos.id_vendedor FROM ventas.pedidos WHERE v.id=ventas.pedidos.id_vendedor); -- 44
