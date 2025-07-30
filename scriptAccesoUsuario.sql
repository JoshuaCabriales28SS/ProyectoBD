CREATE USER 'admin_tienda_BD'@'localhost' IDENTIFIED BY 'proyectobd123'; -- Usuario local

GRANT ALL PRIVILEGES ON tienda_online_proyecto.* TO 'admin_tienda_BD'@'localhost'; -- OTORGA LOS PERMISOS

FLUSH PRIVILEGES; -- Aplica los cambios sin reiniciar