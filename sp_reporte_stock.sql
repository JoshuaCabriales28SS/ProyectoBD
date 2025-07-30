USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_reporte_stock()
BEGIN
	SELECT p.nombre AS producto, p.descripcion AS descripcion, p.precio AS precio, p.stock AS stock, c.nombre AS categoria
    FROM productos p -- Tabla principal para datos de los productos
    INNER JOIN categorias c ON p.id_categoria = c.id -- Union con la categoria para mostrar su nombre
    WHERE stock <= 5
    ORDER BY stock ASC; -- Solo los productos con stock por debajo de 5
END;

END $$
DELIMITER ;