-- Consultas

SELECT p.nombre AS producto, c.nombre AS categoria, p.precio AS precio -- Nombre de columnas
FROM productos p -- Tabla principal
INNER JOIN categorias c ON p.id_categoria = c.id -- Unicamente las categorias que se encuentren enlazadas con los productos actuales
ORDER BY categoria ASC, precio ASC; -- Ordenar por orden alfabetico para las categorias y el precio de forma ascendente (de menor a mayor precio)

SELECT cl.nombre AS cliente, -- Nombre de columna
COUNT(DISTINCT CASE WHEN p.estado = 'pendiente' THEN p.id END) AS pendientes, -- Cuenta unicamente los pedidos con estado pendiente
SUM(d.cantidad * d.precio_unitario) AS total_compras -- Suma las compras de cada cliente, multiplicando la cantidad por el precio unitario de cada pedido hecho por el cliente
FROM clientes cl -- Tabla principal
INNER JOIN pedidos p ON cl.id = p.id_cliente -- Unicamente los pedidos que tengan un cliente enlazado
LEFT JOIN detalles_pedidos d ON p.id = d.id_pedido -- Unicamente los pedidos que tengan productos disponibles
GROUP BY cl.nombre -- Agrupa por nombre de clientes ya que se usan funciones COUNT y SUM y es necesario
HAVING pendientes > 0; -- Se muestran solo los pedidos con más de 0 pedidos pendientes

SELECT p.nombre AS producto, AVG(r.calificacion) AS prom_calif -- Nombre de columnas
FROM productos p -- Tabla principal
INNER JOIN resenias r ON p.id = r.id_producto -- Solo las reseñas con productos enlazados
GROUP BY producto -- Agrupa por producto ya que se usa funcion AVG para el promedio de las calificaciones
ORDER BY prom_calif DESC -- Se ordena por el promedio de calificaciones de forma descendente
LIMIT 5; -- Solo aparecen los primeros 5 productos