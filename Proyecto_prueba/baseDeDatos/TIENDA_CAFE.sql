-- CREATE DATABASE puntoDeVentaCafe;

CREATE TABLE tblProducto(
	idProducto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(15),
    descripcion VARCHAR(100),
    precio INT,
    existencias INT,
    tipo ENUM('Grano', 'Molido')
    );
-----------------------------------------
CREATE TABLE tblVentas(
	idVenta VARCHAR(10) PRIMARY KEY,
	fecha DATE,
	hora TIME,
    cantidad INT,
	total INT,
    idProducto VARCHAR(10),
	FOREIGN KEY(idProducto) REFERENCES tblProducto(idProducto)
    ); 
    
/*CREATE TABLE Moliendas (
    idMolienda VARCHAR(10) PRIMARY KEY,
    molienda VARCHAR(10)
);
CREATE TABLE CafeMolido (
    idCafeMolido INT PRIMARY KEY,
    idProducto VARCHAR(10),
    idMolienda VARCHAR(10),
    FOREIGN KEY (idProducto) REFERENCES tblProducto(idProducto),
    FOREIGN KEY (idMolienda) REFERENCES Moliendas(idMolienda)
);*/
    
    INSERT INTO tblPRoducto(idProducto,nombre,descripcion,precio,existencias,tipoMolienda) VALUES ("0123","ORIGINAL BLEND","SABOR TERROSO AHUMADO",40,80,"Grano");
	INSERT INTO tblPRoducto(idProducto,nombre,descripcion,precio,existencias,tipoMolienda) VALUES ("4567","CLASICO","NOTAS DE BAYAS SILVESTRES",56,50,"Grano");
	INSERT INTO tblPRoducto(idProducto,nombre,descripcion,precio,existencias,tipoMolienda) VALUES ("8910","CLASSIC ROAST","SABOR SUAVE Y EQUILIBRADO",60,30,"FINO");

	INSERT INTO tblVentas(idVenta,fecha,hora,cantidad,total,idProducto) VALUES ("AB01","2024-03-18","03:02:16",2,80,"0123");
	INSERT INTO tblVentas(idVenta,fecha,hora,cantidad,total,idProducto) VALUES ("CD23","2024-03-18","04:24:31",1,56,"4567");
	INSERT INTO tblVentas(idVenta,fecha,hora,cantidad,total,idProducto) VALUES ("EF45","2024-03-18","05:36:02",4,240,"8910");
	
    
    
    
	
    
    