SYSDBA
masterkey

 Base de datos: `prueba`



CREATE TABLE clientes (
Codigo varchar(10)  NOT NULL PRIMARY KEY,
Nombre_Cliente varchar(50) ,
Direccion varchar(40) ) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE productos(
Producto INTEGER NOT NULL PRIMARY KEY,
Nombre_Producto varchar(50) ,
Valor INTEGER ) 

CREATE TABLE factura(Numero INTEGER NOT NULL PRIMARY KEY,
fecha DATE NOT NULL , cliente varchar(10)  ,Valor INTEGER,
FOREIGN KEY (cliente) REFERENCES clientes(Codigo)
ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE detalle_factura(Numero INTEGER NOT NULL PRIMARY KEY,
Factura INTEGER , Producto INTEGER  ,Cantidad INTEGER ,Valor INTEGER,
FOREIGN KEY (Producto) REFERENCES productos(Producto)
ON DELETE SET NULL ON UPDATE CASCADE
);

