USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_cambiar_estado(
	IN sp_id_pedido INT
)
BEGIN
	IF EXISTS(
		SELECT * FROM pedidos WHERE id = sp_id_pedido -- Si existe el pedido con el id indicado
    )
    THEN
		UPDATE pedidos SET estado = 'enviado' WHERE id = sp_id_pedido; -- Actualiza la columna de estado del pedido a 'enviado'
    ELSE -- Si no existe el pedido, manda alerta
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Pedido no existe';
    END IF;
END;

END $$
DELIMITER ;