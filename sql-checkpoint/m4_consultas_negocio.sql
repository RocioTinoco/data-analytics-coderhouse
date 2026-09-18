SELECT SUM(cantidad*precio_unitario) AS total_facturado,SUM(cantidad) AS cantidad,Cast((SUM(cantidad*precio_unitario))/(SUM(cantidad)) AS DECIMAL(10,2)) AS ticket_promedio,MONTH(fecha_venta) AS mes FROM [Ventas_Tech_DB].[dbo].[ventas] GROUP BY MONTH(fecha_venta);
SELECT TOP(5) SUM(cantidad*precio_unitario) AS total_facturado, SUM(cantidad) AS cantidad, id_producto FROM [Ventas_Tech_DB].[dbo].[ventas] GROUP BY id_producto ORDER BY total_facturado DESC;
SELECT SUM(cantidad) AS cantidad_pedido, SUM(cantidad*precio_unitario) AS total_gastado, id_cliente FROM [Ventas_Tech_DB].[dbo].[ventas] GROUP BY id_cliente HAVING SUM(cantidad)>1 ORDER BY cantidad_pedido DESC;
WITH ventas_mensuales AS (SELECT SUM(cantidad*precio_unitario) AS total_facturado,MONTH(fecha_ventas) AS mes FROM [Ventas_Tech_DB].[dbo].[ventas] GROUP BY MONTH(fecha_venta)) SELECT mes, total_facturado, CASE WHEN total_facturado >=(SELECT AVG(total_facturado) FROM ventas_mensuales) THEN 'POR ENCIMA' ELSE 'POR DEBAJO' END AS promedio, mes  FROM ventas_mensuales ORDER BY mes;
Comentarios:
El total de venta es de S/3,821.  
El id producto con mas cantidades vendidas es el 2 con 13 ventas
Los clientes 2 y 3 han realizado 9 compras