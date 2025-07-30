USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_actualizar_cliente(
	IN sp_nombre VARCHAR(50),
    IN sp_correo VARCHAR(50),
    IN sp_telefono VARCHAR(10),
    IN sp_direccion VARCHAR(50)
)
BEGIN
	DECLARE v_id_cliente INT; -- variable para poder actualizar el cliente
    
	IF EXISTS(
		SELECT * FROM clientes WHERE nombre = sp_nombre -- Si existe el cliente
	)
    THEN
		SELECT id
        INTO v_id_cliente -- Guarda el id del cliente en una variable para actualizar sus datos
        FROM clientes
        WHERE nombre = sp_nombre;
    
		UPDATE clientes -- Se actualizan todos sus datos con los nuevos 
        SET correo = sp_correo, telefono = sp_telefono, direccion = sp_direccion
        WHERE id = v_id_cliente;
	ELSE -- Si no existe el cliente, manda un aviso
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cliente no existe';
	END IF;
END;

END $$
DELIMITER ;