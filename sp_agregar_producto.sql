USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_agregar_producto(
	IN sp_nombre VARCHAR(50),
    IN sp_descripcion VARCHAR(100),
    IN sp_precio DECIMAL(10,2),
    IN sp_stock INT,
    IN sp_id_categoria INT
)
BEGIN
	IF NOT EXISTS(
		SELECT * FROM productos 
        WHERE nombre = sp_nombre AND id_categoria = sp_id_categoria -- Si no existe ya un producto con el mismo nombre y la misma categoria
	)
    THEN
		IF EXISTS(
			SELECT * FROM categorias WHERE id = sp_id_categoria -- Si existe el id de la categoria deseada
        )
        THEN
			INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) 
            VALUES(0, sp_nombre, sp_descripcion, sp_precio, sp_stock, sp_id_categoria); -- Se inserta el nuevo producto
		ELSE
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No existe esa categoria'; -- Si no existe la categoria, se manda el aviso
        END IF;
    ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ya se encuentra disponible ese producto en la categoria'; -- Si ya existe un duplicado, manda alerta
    END IF;
END;

END $$
DELIMITER ;