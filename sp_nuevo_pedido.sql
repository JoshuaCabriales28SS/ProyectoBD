USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_nuevo_pedido(
	IN sp_id_cliente INT,
    IN sp_cantidad INT,
    IN sp_id_producto INT,
    IN sp_id_fecha_pedido INT
)
BEGIN
	IF(
		SELECT stock FROM productos WHERE id = sp_id_producto -- Si existe el producto con el id indicado que tenga stock mayor a la cantidad
    ) > sp_cantidad
    THEN
		IF(
			SELECT COUNT(*) FROM pedidos WHERE id_cliente = sp_id_cliente -- Si el cliente ha hecho más de 5 pedidos
        ) >= 5
        THEN -- Manda alerta de limite de pedidos
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Limite de pedidos alcanzado';
		ELSE -- Si no alcanzó el limite de pedidos, inserta y pasa el pedido con los datos
			INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, sp_id_fecha_pedido, 'pendiente', sp_id_cliente);
        END IF;
    ELSE -- Si no cumple la condición, se ejecuta la alerta
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock inferior a cantidad solicitada';
    END IF;
END;

END $$
DELIMITER ;