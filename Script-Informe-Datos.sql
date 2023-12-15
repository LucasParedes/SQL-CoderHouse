-- Informe de Clientes
SELECT
    C.Nombre,
    SUM(S.Precio) AS 'Total Gastado'
FROM
    CLIENTES C
LEFT JOIN
    VEHICULOS V ON C.id_clientes = V.Cliente_id
LEFT JOIN
    HISTORIALSERVICIOS HS ON V.id_vehiculos = HS.Vehiculos_id
LEFT JOIN
    SERVICIOS S ON HS.Servicios_id = S.id_servicios
GROUP BY
    C.Nombre
ORDER BY
    SUM(S.Precio) DESC
LIMIT
    5;


-- Informe de Vehículos
SELECT
    'Vehículo con Mayor Kilometraje' AS 'Estado del Kilometraje de los Vehículos',
    Marca,
    Modelo,
    CONCAT(Kilometraje, ' km') AS Kilometraje
FROM
    VEHICULOS
WHERE Kilometraje IS NOT NULL
ORDER BY
    COALESCE(Kilometraje, 999999999999) DESC
LIMIT
    3;


SELECT
    'Vehículo con Menor Kilometraje' AS 'Estado del Kilometraje de los Vehículos',
    Marca,
    Modelo,
    CONCAT(IFNULL(Kilometraje, '[No disponible]'), ' km') AS Kilometraje
FROM
    VEHICULOS
WHERE Kilometraje IS NOT NULL
ORDER BY
    COALESCE(Kilometraje, 99) ASC
LIMIT
    3;

-- Informe de Servicios
SELECT
    'Total de Servicios Ofrecidos' AS 'Estadísticas de Servicios',
    COUNT(*) AS 'Total de Servicios'
FROM
    SERVICIOS;


SELECT
    'Servicio Más Solicitado' AS 'Estadísticas de Servicios',
    Descripcion AS 'Descripción',
    COUNT(*) AS 'Total de Solicitudes'
FROM
    SERVICIOS S
JOIN
    HISTORIALSERVICIOS HS ON S.id_servicios = HS.Servicios_id
GROUP BY
    Descripcion
ORDER BY
    COUNT(*) DESC
LIMIT
    1;

-- Informe de Empleados

SELECT
    'Empleado del Mes' AS 'Rendimiento de Empleados',
    Nombre AS 'Nombre',
    'Número Total de Actividades' AS 'Número Total de Actividades',
    COUNT(*) AS 'Número Total de Actividades'
FROM
    EMPLEADOS E
LEFT JOIN
    HISTORIALSERVICIOS HS ON E.id_empleados = HS.Empleados_id
LEFT JOIN
    VENTAS V ON E.id_empleados = V.Empleados_id
GROUP BY
    Nombre
ORDER BY
    COUNT(*) DESC
LIMIT
    1;

-- Informe de Inventarios y Compras
-- Inventarios Disponibles
SELECT
    'Productos con Mayor Cantidad en Inventario' AS 'Inventarios Disponibles',
    Nombre AS 'Producto',
    SUM(CantidadDisponible) AS 'Cantidad Total'
FROM
    INVENTARIO
GROUP BY
    Nombre
ORDER BY
    SUM(CantidadDisponible) DESC
LIMIT
    3;


SELECT
    'Producto con Menor Cantidad en Inventario' AS 'Inventarios Disponibles',
    Nombre AS 'Producto',
    SUM(CantidadDisponible) AS 'Cantidad Total'
FROM
    INVENTARIO
GROUP BY
    Nombre
ORDER BY
    SUM(CantidadDisponible) ASC
LIMIT
    3;

-- Análisis de Compras Recientes
SELECT
    'Compra más Reciente' AS 'Análisis de Compras Recientes',
    C.Fecha AS 'Fecha',
    P.Nombre AS 'Proveedor',
    C.Precio AS 'PrecioTotal'
FROM
    COMPRAS C
INNER JOIN Proveedores P ON P.id_proveedores = C.Proveedores_id
ORDER BY
    C.Fecha DESC
LIMIT 1;

