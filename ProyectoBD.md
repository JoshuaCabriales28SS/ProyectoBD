# Proyecto Base de Datos

## Scripts para generar tabla y poblar con datos

### Generación de Tablas
~~~sql

DROP SCHEMA IF EXISTS tienda_online_proyecto;
CREATE SCHEMA tienda_online_proyecto;

USE tienda_online_proyecto;

-- Creacion de tablas de la BD

CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(50) UNIQUE,
    telefono VARCHAR(10),
    direccion VARCHAR(50)
);
CREATE INDEX idx_nombre ON clientes(nombre);

CREATE TABLE categorias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100)
);
CREATE INDEX idx_nombre ON categorias(nombre);

CREATE TABLE productos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100),
    precio DECIMAL(10,2),
    stock INT CHECK (stock >= 0),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);
CREATE INDEX idx_nombre ON productos(nombre);
CREATE INDEX idx_stock ON productos(stock);

CREATE TABLE fecha_pedidos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido DATE
);
CREATE TABLE pedidos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_fecha_pedido INT,
    FOREIGN KEY (id_fecha_pedido) REFERENCES fecha_pedidos(id),
    estado VARCHAR(20),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
CREATE INDEX idx_id_cliente ON pedidos(id_cliente);
CREATE INDEX idx_estado ON pedidos(estado);

CREATE TABLE detalles_pedidos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

CREATE TABLE fecha_resenias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE
);
CREATE TABLE resenias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    calificacion FLOAT,
    comentario VARCHAR(100),
    id_fecha INT,
    FOREIGN KEY (id_fecha) REFERENCES fecha_resenias(id),
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

~~~

### Población de Base de Datos con información de prueba

~~~sql

USE tienda_online_proyecto;

-- Llenado de tablas de la BD

-- Clientes 15
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Joshua", "joshua@correo.com", '5512345678', "atizapan");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Fernanda", "fernanda@correo.com", '5514235867', "lomas verdes");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Marlon", "marlon@correo.com", '5516792463', "cuspide");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Alberto", "alberto@correo.com", '5519342311', "satelite");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Pablo", "pablo@correo.com", '5516813647', "azcapotzalco");

INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Irving", "irving@correo.com", '5514793258', "coyoacan");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Esperanza", "esperanza@correo.com", '5514632028', "toluca");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Alejandro", "alejandro@correo.com", '5593485621', "cuajimalpa");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Paola", "paola@correo.com", '5578240169', "tlalpan");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Eder", "eder@correo.com", '5510236580', "polanco");

INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Mariel", "mariel@correo.com", '5579605781', "condesa");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Daniel", "daniel@correo.com", '5531025791', "interlomas");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Aldo", "aldo@correo.com", '5546578249', "xochimilco");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Catherine", "catherine@correo.com", '5569873020', "lerma");
INSERT INTO clientes(id, nombre, correo, telefono, direccion) VALUES(0, "Camila", "camila@correo.com", '5546057991', "roma");


-- Categorias
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "limpieza", "limpiar interiores del hogar");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "electronica", "equipos de computo, accesorios y tecnologia");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "alimentos y bebidas", "comida, frutas, verduras y bebidas");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "ropa", "Vestimentas para usar");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "electrodomesticos", "aparatos para el hogar");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "bolsas", "accesorios faciles de transportar y utiles para almacenar cosas");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "accesorios", "objetos variados para el uso diario");
INSERT INTO categorias(id, nombre, descripcion) VALUES(0, "higiene", "utiles para matener una buena limpieza corporal");


-- Productos 30
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "suavitel", "jabon para lavar la ropa", 60, 25, 1);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "mochila Nike", "mochila para llevar utiles escolares", 2300, 43, 6);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "mouse", "periferico para controlar facilmente la computadora", 350, 12, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "teclado", "periferico para escribir en computadora", 800, 10, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "pantalla Samsung", "pantalla para visualizar contenido", 8200, 67, 2);

INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "iPhone 13", "dispositivo celular de Apple", 9600, 3, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "escoba", "especial para barrer en interiores", 120, 65, 1);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "playera", "ropa para parte superior del cuerpo", 300, 94, 4);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "pantalon", "ropa para parte inferior del cuerpo", 750, 19, 4);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "refrigerador", "usado para mantener alimentos en temperaturas bajas", 5000, 98, 5);

INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "estufa", "electrodomestico para calentar alimentos y cocinar en casa", 3500, 32, 5);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "termo", "mantiene las bebidas con su temperatura", 230, 14, 7);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "xbox one", "consola de videojuegos", 4700, 61, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "audifonos", "accesorio para escuchar musica", 3200, 45, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "apple watch", "reloj inteligente para vincular a dispositivo celular", 2800, 81, 2);

INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "laptop", "equipo de computo portatil especial para viajes", 7400, 90, 2);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "manzana", "fruta de temporada de excelente calidad", 37, 28, 3);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "zanahoria", "verdura en perfecto estado", 28, 19, 3);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "calcetines", "ropa interior comoda de algodon", 80, 83, 4);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "cable hdmi", "cable conector para pantallas y dispositivos electronicos", 110, 65, 2);

INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "gorra", "accesorio para la cabeza", 560, 60, 7);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "cafetera", "electrodomestico para preparar cafe", 2300, 34, 5);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "plancha", "util para mejorar la vista que tendra tu ropa", 450, 49, 5);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "pinol", "especial para dejar todo impecable", 50, 98, 1);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "jabon de manos", "usado para la higiene de tus manos en 100%", 35, 72, 1);

INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "sabritas", "comida preferida, no comes solo una", 27, 51, 3);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "cepillo dental", "util para tener una limpieza dental total", 34, 73, 8);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "desodorante", "lo mejor evitar la sudoración", 46, 36, 8);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "perfume", "fragancia para mantener un buen olor", 78, 60, 8);
INSERT INTO productos(id, nombre, descripcion, precio, stock, id_categoria) VALUES(0, "coca-cola", "bebida de cola con cafeina y azucar", 32, 24, 3);


-- Fecha de pedidos
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-06-14");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-07-20");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-05-03");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-03-17");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-01-28");

INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-04-06");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-02-12");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-07-21");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-06-09");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-05-11");

INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-03-23");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-01-01");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-04-15");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-02-26");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-07-07");

INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-06-19");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-05-22");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-04-02");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-03-18");
INSERT INTO fecha_pedidos(id, fecha_pedido) VALUES(0, "2025-01-24");

-- Pedidos 20
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 2, 'pendiente', 2);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 1, 'pendiente', 4);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 4, 'enviado', 8);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 3, 'pendiente', 1);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 5, 'pendiente', 9);

INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 6, 'enviado', 11);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 7, 'pendiente', 10);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 10, 'pendiente', 3);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 8, 'enviado', 5);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 9, 'pendiente', 6);

INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 11, 'enviado', 15);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 15, 'pendiente', 12);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 14, 'pendiente', 14);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 13, 'pendiente', 13);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 12, 'enviado', 2);

INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 18, 'pendiente', 6);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 16, 'pendiente', 9);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 19, 'pendiente', 6);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 20, 'pendiente', 1);
INSERT INTO pedidos(id, id_fecha_pedido, estado, id_cliente) VALUES(0, 17, 'enviado', 6);


-- Detalles de pedidos 25
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 3, 800, 2, 4);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 70, 34, 18, 27);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 5, 230, 5, 12);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 7, 300, 11, 8);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 10, 560, 9, 21);

INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 15, 37, 19, 17);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 22, 8200, 1, 5);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 4, 50, 12, 24);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 9, 3200, 4, 14);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 1, 60, 17, 1);

INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 6, 78, 7, 29);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 31, 4700, 13, 13);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 8, 2300, 3, 2);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 2, 27, 16, 26);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 5, 80, 6, 19);

INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 19, 120, 14, 7);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 13, 2300, 10, 22);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 9, 28, 15, 18);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 7, 750, 8, 9);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 2, 450, 20, 23);

INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 11, 9600, 1, 6);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 30, 35, 13, 25);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 17, 2800, 7, 15);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 6, 350, 18, 3);
INSERT INTO detalles_pedidos(id, cantidad, precio_unitario, id_pedido, id_producto) VALUES(0, 16, 46, 4, 28);


-- Fecha de resenias
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-14');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-2');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-29');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-17');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-5');

INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-26');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-12');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-8');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-21');
INSERT INTO fecha_resenias(id, fecha) VALUES(0, '2025-06-13');

-- Resenias 10
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 8.5, 'Muy buen producto, llegó a tiempo.', 3, 12, 5);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 7.0, 'Cumple con lo básico.', 7, 20, 11);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 9.0, 'Excelente, superó mis expectativas.', 1, 3, 2);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 5.5, 'No era lo que esperaba.', 6, 20, 9);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 3.0, 'Producto defectuoso.', 2, 25, 13);

INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 8.0, 'Buena relación calidad-precio.', 9, 15, 7);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 5.5, 'Regular, tiene puntos a mejorar.', 5, 12, 1);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 9.8, 'Me encantó, lo volvería a comprar.', 8, 18, 10);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 6.0, 'Envio muy lento.', 10, 25, 4);
INSERT INTO resenias(id, calificacion, comentario, id_fecha, id_producto, id_cliente) VALUES(0, 4.8, 'Decente por el precio.', 4, 30, 14);

~~~

## Consultas y Procedimientos

### Consultas

1. Listar productos disponibles por categoría, ordenados por precio.

~~~sql

SELECT p.nombre AS producto, c.nombre AS categoria, p.precio AS precio -- Nombre de columnas
FROM productos p -- Tabla principal
INNER JOIN categorias c ON p.id_categoria = c.id -- Unicamente las categorias que se encuentren enlazadas con los productos actuales
ORDER BY categoria ASC, precio ASC; -- Ordenar por orden alfabetico para las categorias y el precio de forma ascendente (de menor a mayor precio)

~~~

2. Mostrar clientes con pedidos pendientes y total de compras.

~~~sql

SELECT cl.nombre AS cliente, -- Nombre de columna
COUNT(DISTINCT CASE WHEN p.estado = 'pendiente' THEN p.id END) AS pendientes, -- Cuenta unicamente los pedidos con estado pendiente
SUM(d.cantidad * d.precio_unitario) AS total_compras -- Suma las compras de cada cliente, multiplicando la cantidad por el precio unitario de cada pedido hecho por el cliente
FROM clientes cl -- Tabla principal
INNER JOIN pedidos p ON cl.id = p.id_cliente -- Unicamente los pedidos que tengan un cliente enlazado
LEFT JOIN detalles_pedidos d ON p.id = d.id_pedido -- Unicamente los pedidos que tengan productos disponibles
GROUP BY cl.nombre -- Agrupa por nombre de clientes ya que se usan funciones COUNT y SUM y es necesario
HAVING pendientes > 0; -- Se muestran solo los pedidos con más de 0 pedidos pendientes

~~~

3. Reporte de los 5 productos con mejor calificación promedio en reseñas.

~~~sql

SELECT p.nombre AS producto, AVG(r.calificacion) AS prom_calif -- Nombre de columnas
FROM productos p -- Tabla principal
INNER JOIN resenias r ON p.id = r.id_producto -- Solo las reseñas con productos enlazados
GROUP BY producto -- Agrupa por producto ya que se usa funcion AVG para el promedio de las calificaciones
ORDER BY prom_calif DESC -- Se ordena por el promedio de calificaciones de forma descendente
LIMIT 5; -- Solo aparecen los primeros 5 productos

~~~

### Procedimientos (Store Procedures)

1. Registrar un nuevo pedido, verificando el límite de 5 pedidos pendientes y stock suficiente.

~~~sql

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

~~~

2. Registrar una reseña, verificando que el cliente haya comprado el producto

~~~sql

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

~~~

3. Actualizar el stock de un producto después de un pedido.

~~~sql

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

~~~

4. Cambiar el estado de un pedido

~~~sql

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

~~~

5. Eliminar reseñas de un producto específico, actualizando el promedio de calificaciones.

~~~sql

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

~~~

6. Agregar un nuevo producto, verificando que no exista un duplicado

~~~sql
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
~~~

7. Actualizar la información de un cliente

~~~sql
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
~~~

8. Generar un reporte de productos con stock bajo

~~~sql
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
~~~
