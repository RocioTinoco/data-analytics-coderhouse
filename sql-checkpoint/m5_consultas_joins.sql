Consulta 1

SELECT cli.nombre,cli.ciudad,geo.region,geo.pais,pro.nombre_producto,cat.nombre_categoria,ven.cantidad,ven.fecha_venta,ven.precio_unitario as precio_venta, (ven.cantidad*ven.precio_unitario)as total_venta 
FROM dbo.ventas ven 
INNER JOIN dbo.clientes cli ON ven.id_cliente = cli.id_cliente 
INNER JOIN dbo.productos pro ON ven.id_producto = pro.id_producto 
INNER JOIN dbo.dimension_geografica geo ON cli.id_geografia = geo.id_geografia 
INNER JOIN dbo.categorias cat ON cat.id_categoria = pro.id_categoria;

Consulta 2
SELECT cli.nombre, cli.email, cli.fecha_registro
FROM dbo.clientes cli LEFT JOIN dbo.ventas ven ON cli.id_cliente = ven.id_cliente
WHERE ven.id_venta IS NULL;

Consulta 3
SELECT pro.nombre_producto, cat.nombre_categoria, pro.precio
FROM dbo.productos pro
LEFT JOIN dbo.ventas ven ON pro.id_producto = ven.id_producto
INNER JOIN dbo.categorias cat ON pro.id_categoria = cat.id_categoria
WHERE ven.id_venta IS NULL;

Consulta 4
SELECT datos.canal, SUM(datos.total) AS total_ventas
FROM (SELECT ven.fecha_venta AS fecha, ven.cantidad * ven.precio_unitario AS total, 'Online' AS canal
FROM dbo.ventas ven WHERE ven.fecha_venta >= '2026-01-01' AND ven.fecha_venta < '2026-04-01'
UNION ALL SELECT ven.fecha_venta AS fecha, ven.cantidad * ven.precio_unitario AS total, 'Presencial' AS canal
FROM dbo.ventas ven WHERE ven.fecha_venta >= '2026-04-01' AND ven.fecha_venta <'2026-07-01') AS datos GROUP BY datos.canal;