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