#	SCRIPT CONSULTAS

#  | 1 | Clientes que han comprado más en valor.  | ✔️ |
USE test_dba_junior;
SELECT cli.nombreCliente AS "Cliente", cli.idCliente, fac.codigoProductoFK AS "Código Producto", COUNT(*) AS "Cantidad", pro.precioProducto AS "Precio", SUM("Cantidad" + pro.precioProducto) AS "Valor"
FROM facturas AS fac
	INNER JOIN clientes AS cli ON cli.idCliente = fac.idClienteFK
    INNER JOIN productos AS pro ON fac.codigoProductoFK = pro.codigoProducto
    GROUP BY Cliente
    ORDER BY Valor DESC;
 
#  | 2 | Clientes que han comprado más en cantidad.  | ✔️ |
USE test_dba_junior;
SELECT  cli.nombreCliente AS "Cliente", fac.codigoProductoFK AS "Código Producto", COUNT(*) AS "Cantidad"
FROM facturas AS fac
	INNER JOIN clientes AS cli
	ON cli.idCliente = fac.idClienteFK
    GROUP BY fac.codigoProductoFK
	ORDER BY Cantidad DESC;
    
#  | 3 | Productos más vendidos en valor.  | ✔️ |
USE test_dba_junior;
SELECT fac.codigoProductoFK AS "Código Producto", COUNT(*) AS "Cantidad", pro.precioProducto AS "Precio", SUM("Cantidad" + pro.precioProducto) AS "Valor"
FROM facturas AS fac
	INNER JOIN productos AS pro
	ON fac.codigoProductoFK = pro.codigoProducto
    GROUP BY codigoProductoFK
    ORDER BY Valor DESC;
    
#  | 4 | Productos más vendidos en cantidad.  | ✔️ |
USE test_dba_junior;
SELECT codigoProductoFK as "Codigo Producto" , COUNT(*) as "Cantidad" 
FROM facturas
	GROUP BY codigoProductoFK
    ORDER BY Cantidad DESC;
    
#  | 5 | Productos menos vendidos en valor.  | ✔️ |
USE test_dba_junior;
SELECT fac.codigoProductoFK AS "Código Producto", COUNT(*) AS "Cantidad", pro.precioProducto AS "Precio", SUM("Cantidad" + pro.precioProducto) AS "Valor"
FROM facturas AS fac
	INNER JOIN productos AS pro
	ON fac.codigoProductoFK = pro.codigoProducto
    GROUP BY codigoProductoFK
    ORDER BY Valor ASC;

#  | 6 | Productos menos vendidos en cantidad.  | ✔️ |
USE test_dba_junior;
SELECT codigoProductoFK as "Codigo Producto" , COUNT(*) as "Cantidad" 
FROM facturas
	GROUP BY codigoProductoFK
    ORDER BY Cantidad ASC;
    
#  | 7 | Valor de las ventas agrupadas por mes.  | ✔️ |
USE test_dba_junior;
SELECT MONTH(fac.fechaFactura) AS "Mes", COUNT(*) AS "Cantidad", pro.precioProducto AS "Precio", SUM("Cantidad" + pro.precioProducto) AS "Valor"
FROM facturas AS fac
	INNER JOIN productos AS pro
	ON fac.codigoProductoFK = pro.codigoProducto
    GROUP BY Mes
	ORDER BY Mes ASC;
    
#  | 8 | Valor de las ventas agrupadas por producto y mes.  | ✔️ |
USE test_dba_junior;
SELECT fac.codigoProductoFK AS "Código Producto", MONTH(fac.fechaFactura) AS "Mes", COUNT(*) AS "Cantidad", pro.precioProducto AS "Precio", SUM("Cantidad" + pro.precioProducto) AS "Valor"
FROM facturas AS fac
	INNER JOIN productos AS pro
	ON fac.codigoProductoFK = pro.codigoProducto
    GROUP BY Mes
	ORDER BY Mes ASC;


