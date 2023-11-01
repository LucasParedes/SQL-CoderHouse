-- Función para calcular el total gastado por un cliente en servicios:
DELIMITER //
CREATE FUNCTION CalcularTotalGastadoCliente(id_clientes INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE totalGastado DECIMAL(10, 2);
    SELECT SUM(s.Precio)
    INTO totalGastado
    FROM HistorialServicios hs
    JOIN VEHICULOS v ON hs.Vehiculos_id = v.id_vehiculos
    JOIN Servicios s ON hs.Servicios_id = s.id_servicios
    WHERE v.Cliente_id = id_clientes;
    RETURN totalGastado;
END //
DELIMITER ;
SELECT CalcularTotalGastadoCliente(7);


-- Función para Encontrar el Servicio Más Caro:
DELIMITER $$
CREATE FUNCTION EncontrarServicioMasCaro() RETURNS VARCHAR(50)
BEGIN
    DECLARE servicio_mas_caro VARCHAR(50);
    SELECT Descripcion INTO servicio_mas_caro FROM SERVICIOS 
    ORDER BY Precio DESC LIMIT 1;
    RETURN servicio_mas_caro;
END;
$$
DELIMITER 
SELECT EncontrarServicioMasCaro();


-- Calcular el Total de Gastos de un Empleado en compras:
DELIMITER $$
CREATE FUNCTION CalcularTotalGastosEmpleado(id_empleados INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(Precio) INTO total FROM COMPRAS WHERE Empleados_id = id_empleados;
    RETURN total;
END;
$$
DELIMITER ;
SELECT CalcularTotalGastosEmpleado(7);


-- Función para obtener cantidad total disponible del producto por nombre:
DELIMITER //
CREATE FUNCTION ObtenerInventarioPorNombre(productoNombre VARCHAR(50))
RETURNS INT
BEGIN
    DECLARE cantidad INT;
    SELECT SUM(CantidadDisponible)
    INTO cantidad
    FROM INVENTARIO
    WHERE Nombre = productoNombre;
    RETURN cantidad;
END //
DELIMITER ;
SELECT ObtenerInventarioPorNombre("compresores");






