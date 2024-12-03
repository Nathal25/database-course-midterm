-- Insertar en Talentohumano con generación dinámica de codUnico
INSERT INTO Talentohumano (codUnico, nombre, apellido, licencia, experiencia, Id) VALUES 
('1007628637CaHe','Carlos','Hernández','ABC123',5,1007628637),
('1021728741AnLo','Ana','López','DEF456',3,1021728741),
('1030000789LuMa','Luis','Martínez','GHI789',7,1030000789),
('1023781672CaRa','Carolina','Ramirez','HUI777',2,1023781672),
('1008267543RaCu','Raul','Cuellar','JAJ123',5,1008267543),
('1001383322CaMa','Camilo','Martinez','OLA123',3,1001383322);

-- Insertar datos en la tabla Conductor
INSERT INTO Conductor (codUnico) VALUES 
('1007628637CaHe'),
('1021728741AnLo'),
('1030000789LuMa');

-- Insertar datos en la tabla Operario
INSERT INTO Operario (codUnico) VALUES 
('1023781672CaRa'),
('1008267543RaCu'),
('1001383322CaMa');

-- Insertar 5 buses en la tabla Auto
INSERT INTO Auto (idAuto, tipo, modelo, fechaCompra, cantPasajeros, estado, idConductor) VALUES 
('B001', 'Bus', 'Volvo 9700', '2020-03-15', 50, TRUE, '1007628637CaHe'),
('B002', 'Bus', 'Mercedes Benz', '2019-07-20', 48, TRUE, '1021728741AnLo'),
('B003', 'Bus', 'Scania Irizar', '2021-05-10', 55, TRUE, '1030000789LuMa'),
('B004', 'Bus', 'Man Lion Coach', '2018-08-30', 45, FALSE, '1007628637CaHe'),
('B005', 'Bus', 'Volvo 7700', '2022-01-25', 40, TRUE, '1021728741AnLo'); 


