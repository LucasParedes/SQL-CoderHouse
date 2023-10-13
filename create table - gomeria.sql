use gomeria;

-- Tabla CLIENTES
CREATE TABLE CLIENTES (
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    TipoDocumento INT NOT NULL,
    NumeroDocumento VARCHAR(20) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Direccion VARCHAR(50),
    CP VARCHAR(15),
    Email VARCHAR(100)
);

-- Tabla VEHICULOS
CREATE TABLE VEHICULOS (
    id_vehiculos INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_id INT NOT NULL,
		FOREIGN KEY (Cliente_id) REFERENCES clientes(id_clientes),
    Marca VARCHAR(50),
    Modelo VARCHAR(50) NOT NULL,
    Anio INT,
    Placa VARCHAR(20) NOT NULL,
    Kilometraje INT
);

-- Tabla SERVICIOS
CREATE TABLE SERVICIOS (
    id_servicios INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(50) NOT NULL,
    Precio DECIMAL NOT NULL
);

-- Tabla EMPLEADOS
CREATE TABLE EMPLEADOS (
    id_empleados INT AUTO_INCREMENT PRIMARY KEY,
    Contacto_id INT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50) NOT NULL
);


-- Tabla HistorialServicios
CREATE TABLE HistorialServicios (
    id_historialServicios INT AUTO_INCREMENT PRIMARY KEY,
    Vehiculos_id INT NOT NULL,
		FOREIGN KEY (Vehiculos_id) REFERENCES vehiculos(id_vehiculos),
    Servicios_id INT NOT NULL,
		FOREIGN KEY (Servicios_id) REFERENCES servicios(id_servicios),
    Empleados_id INT,
		FOREIGN KEY (Empleados_id) REFERENCES empleados(id_empleados),
    Fecha DATE NOT NULL,
    Observaciones TEXT
);

-- Tabla CONTACTO
CREATE TABLE CONTACTO (
    id_contacto INT AUTO_INCREMENT PRIMARY KEY,
    Telefono VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

-- Tabla CITAS
CREATE TABLE CITAS (
    id_citas INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_id INT NOT NULL,
		FOREIGN KEY (Cliente_id) REFERENCES clientes(id_clientes),
    Vehiculos_id INT NOT NULL,
		FOREIGN KEY (Vehiculos_id) REFERENCES vehiculos(id_vehiculos),
    Fecha DATE,
    Descripcion VARCHAR(100)
);

-- Tabla INVENTARIO
CREATE TABLE INVENTARIO (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    CantidadDisponible INT,
    PrecioUnitario DECIMAL NOT NULL
);

-- Tabla VENTAS
CREATE TABLE VENTAS (
    id_ventas INT AUTO_INCREMENT PRIMARY KEY,
    Clientes_id INT NOT NULL,
		FOREIGN KEY (Clientes_id) REFERENCES clientes(id_clientes),
    Empleados_id INT,
		FOREIGN KEY (Empleados_id) REFERENCES empleados(id_empleados),
    Inventario_id INT NOT NULL,
		FOREIGN KEY (Inventario_id) REFERENCES inventario(id_inventario),
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL,
    Total DECIMAL NOT NULL
);

-- Tabla PROVEEDORES
CREATE TABLE PROVEEDORES (
    id_proveedores INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(50),
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabla COMPRAS
CREATE TABLE COMPRAS (
    id_compras INT AUTO_INCREMENT PRIMARY KEY,
    Proveedores_id INT NOT NULL,
    Empleados_id INT NOT NULL,
		FOREIGN KEY (Empleados_id) REFERENCES empleados(id_empleados),
    Inventario_id INT NOT NULL,
		FOREIGN KEY (Inventario_id) REFERENCES inventario(id_inventario),
    Fecha DATE,
    Cantidad INT,
    Precio DECIMAL
);
