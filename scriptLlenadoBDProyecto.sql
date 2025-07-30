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


