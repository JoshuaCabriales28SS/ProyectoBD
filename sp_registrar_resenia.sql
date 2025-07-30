USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_registrar_resenia(
	IN sp_id_cliente INT,
    IN sp_id_producto INT,
    IN sp_calificacion FLOAT,
    IN sp_comentario VARCHAR(100),
    IN sp_id_fecha INT
)
BEGIN
	IF EXISTS( -- Si existe al menos 1 pedido que tenga el producto y haya sido hecho por el cliente
		SELECT * FROM pedidos p INNER JOIN detalles_pedidos d_p ON p.id = d_p.id_pedido
        WHERE d_p.id_producto = sp_id_producto AND p.id_cliente = sp_id_cliente
    )
    THEN -- Inserta la reseña de ese pedido con el producto y su cliente
		INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) 
        VALUES(0, sp_calificacion, sp_comentario, sp_id_fecha, sp_id_producto, sp_id_cliente);
    ELSE -- Si no existe ese pedido con el producto y cliente, manda alerta
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No existe un pedido del producto por ese cliente';
    END IF;
END;

END $$
DELIMITER ;