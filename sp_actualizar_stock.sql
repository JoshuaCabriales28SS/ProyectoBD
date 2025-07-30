USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_actualizar_stock(
	IN sp_id_detalles_pedidos INT
)
BEGIN
	-- Declaracion de variables para guardar la cantidad que se pidio y el id del producto
	DECLARE v_cantidad INT;
    DECLARE v_id_producto INT;

	IF EXISTS(
		SELECT cantidad FROM detalles_pedidos WHERE id = sp_id_detalles_pedidos -- Si existen los detalles del pedido con el mismo id
    )
    THEN
		SELECT cantidad, id_producto -- Selecciona las columnas que contienen los datos
        INTO v_cantidad, v_id_producto -- Se almacenan los datos en las variables
        FROM detalles_pedidos -- Tabla de donde se extraen los datos
        WHERE id = sp_id_detalles_pedidos; -- Unicamente del id dado
		
		UPDATE productos SET stock = stock - v_cantidad WHERE id = v_id_producto; -- Se actualiza el stock del producto
    ELSE -- Si no existe el pedido manda alerta
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Pedido no encontrado';
    END IF;
END;

END $$
DELIMITER ;