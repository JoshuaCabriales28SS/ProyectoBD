USE tienda_online_proyecto;

DELIMITER $$

CREATE PROCEDURE sp_eliminar_resenia(
	IN sp_id_producto INT
)
BEGIN
	DECLARE id_resenia INT; -- variable para guardar el id de la reseña donde este el producto
    
	IF EXISTS(
		SELECT * FROM resenias WHERE resenias.id_producto = sp_id_producto -- Si existe una reseña que tenga el id del producto
    )
    THEN
		DELETE FROM resenias WHERE id_producto = sp_id_producto; -- Se elimina la reseña con el id del producto
    ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No existen resenias de ese producto';
    END IF;
END;

END $$
DELIMITER ;