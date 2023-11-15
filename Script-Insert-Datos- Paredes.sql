
-- Seleccionamos el esquema Gomeria

USE Gomeria;

-- Insertamos los datos a las tablas

insert into clientes  
values 
(null, 'Palmer', 'Rosengart', 'Dni', 45789501, 1123131314, 'Suite 22', null, 'prosengart0@nhs.uk'),
(null, 'Wadsworth', 'Nanetti', 'Pasaporte', 25687001, 2142568709, 'Suite 34', '624082', 'wnanetti1@telegraph.co.uk'),
(null, 'Cairistiona', 'Holyland', 'Pasaporte', 3450478554, 413578, 'Room 176', null, 'cholyland2@sohu.com'),
(null, 'Gerri', 'Jarrad', 'Dni', 33254105, 4874513045, 'Suite 32', null, 'gjarrad3@free.fr'),
(null, 'Maximilien', 'Cauthra', 'Pasaporte', 24578941, 5748154230, 'Suite 4', '39104 CEDEX', 'mcauthra4@wikipedia.org'),
(null, 'Kassey', 'Lucius', 'Dni', 7154540, 6874513097, 'Apt 1095', '4560-221', 'klucius5@livejournal.com'),
(null, 'Nada', 'Impett', 'Pasaporte', 11457910, 7742013587, '20th Floor', '2733', 'nimpett6@hud.gov'),
(null, 'Merrile', 'Semorad', 'Dni', 46810780, 8871606987, 'Apt 816', '626020', 'msemorad7@slideshare.net'),
(null, 'Royall', 'Nicklinson', 'Dni', 40125478, 571369874, 'PO Box 47770', null, 'rnicklinson8@bravesites.com'),
(null, 'Deborah', 'Knaggs', 'Dni', 23654781, 1057410358, '13th Floor', '4745-380', 'dknaggs9@pen.io'),
(null, 'Eward', 'Keppe', 'Dni', 6115450, 1147814039, 'Apt 1066', null, 'ekeppea@biblegateway.com'),
(null, 'Sig', 'Larby', 'Pasaporte', 41110248, 4441059, '19th Floor', '39860-000', 'slarbyb@hhs.gov');


insert into VEHICULOS 
values 
(null, 11, 'Chrysler', 'Pacifica', 2008, 'NTF133', 33900),
(null, 1, 'Chevrolet', 'S10', 2001, 'UCC690', 143175),
(null, 11, 'Audi', 'TT', null, 'ZDT529', null),
(null, 10, 'Maserati', 'Quattroporte', null, 'LBD455', null),
(null, 1, 'Mitsubishi', 'Sigma', null, 'KBQ424', 146759),
(null, 7, 'Pontiac', 'Bonneville', 1997, 'KCH146', 54621),
(null, 8, 'Toyota', 'Prius', 2007, 'FTO664', 80752),
(null, 4, 'Mitsubishi', 'Galant', 2000, 'QYT866', 53706),
(null, 3, 'Mercedes-Benz', 'SLK-Class', 2009, 'CCN401', 148420),
(null, 7, 'Nissan', 'Sentra', 1998, 'QIV347', 14407),
(null, 6, 'Audi', 'Coupe GT', 1985, 'XDJ593', null),
(null, 8, 'Toyota', 'MR2', 2002, 'BSA923', 99589);

insert into SERVICIOS
 values 
(null, 'Reparación de sistema de dirección', 171905),
(null, 'Reparación de llantas', 40679),
(null, 'Cambio de neumáticos', 60407),
(null, 'Reparación de frenos', 135309),
(null, 'Reparación de frenos', 54672),
(null, 'Reparación de frenos', 69555),
(null, 'Cambio de aceite', 138547),
(null, 'Cambio de batería', 171619),
(null, 'Alineación y balanceo', 3601),
(null, 'Reparación de sistema de escape', 782),
(null, 'Alineación y balanceo', 106210),
(null, 'Alineación y balanceo', 115432);

insert into EMPLEADOS 
values
(null, 3, 'Stacia', 'Ivery', 'Auxiliar'),
(null, 4, 'Babs', 'Di Giorgio', 'Mecánico'),
(null, 12, 'Atlante', 'Sherborne', 'Auxiliar'),
(null, 8, 'Alicia', 'Wynrahame', 'Mecánico'),
(null, 7, 'Kirk', 'O''Fogarty', 'Auxiliar'),
(null, 9, 'Ruthanne', 'Laffranconi', 'Vendedor'),
(null, 1, 'Ludvig', 'Cherrington', 'Mecánico'),
(null, 10, 'Birch', 'Dinwoodie', 'Mecánico'),
(null, 3, 'Sterling', 'Mellonby', 'Vendedor'),
(null, 3, 'Melodie', 'Bruinsma', 'Auxiliar'),
(null, 8, 'Rabi', 'Hissie', 'Gerente'),
(null, 6, 'Henka', 'Headingham', 'Gerente');

insert into HISTORIALSERVICIOS 
values
(null, 3, 3, 6, '2022-04-21', 'Parche de neumáticos'),
(null, 4, 8, 6, '2021-05-30', 'Reemplazo de neumáticos'),
(null, 5, 11, 8, '2021-08-30', 'Alineación de ruedas'),
(null, 9, 12, 9, '2019-04-19', 'Balanceo de neumáticos'),
(null, 6, 8, 7, '2020-11-14', 'Reparación de pinchazos'),
(null, 12, 2, 4, '2021-01-07', 'Reparación de válvulas'),
(null, 5, 11, 6, '2022-03-13', 'Balanceo de neumáticos'),
(null, 12, 11, 10, '2023-05-14', 'Reparación de pinchazos'),
(null, 4, 10, 12, '2021-04-30', 'Alineación de ruedas'),
(null, 3, 8, 2, '2021-11-02', 'Reparación de pinchazos'),
(null, 12, 7, 2, '2018-12-09', 'Reparación de válvulas'),
(null, 10, 3, 8, '2019-07-11', 'Cambio de válvulas');


insert into CONTACTO 
values 
(null, '7156715583', 'charwood0@mysql.com'),
(null, '7888943022', 'flangrish1@desdev.cn'),
(null, '2958657364', 'ssenton2@simplemachines.org'),
(null, '4264741312', 'obeaves3@1und1.de'),
(null, '1945160811', 'rlattimore4@japanpost.jp'),
(null, '4681889046', 'wsparrowhawk5@prnewswire.com'),
(null, '6613379223', 'cstout6@deviantart.com'),
(null, '5163282206', 'jwolver7@disqus.com'),
(null, '2875386473', 'imonument8@eepurl.com'),
(null, '2388917975', 'kgreenland9@hubpages.com'),
(null, '4663352473', 'adufraya@nih.gov'),
(null, '5481806416', 'vgilhoolieb@google.es');

insert into CITAS 
values 
(null, 2, 1, '2024-06-23', 'Es necesario balancear las llantas del vehículo'),
(null, 10, 6, '2024-03-29', 'Es necesario balancear las llantas del vehículo'),
(null, 2, 11, '2024-03-20', 'El cliente necesita revisar la presión de sus neumáticos'),
(null, 3, 1, '2024-01-11', 'Se recomienda al cliente alinear las ruedas'),
(null, 12, 12, '2024-06-07', 'El cliente necesita revisar la presión de sus neumáticos'),
(null, 4, 12, '2024-05-23', 'Es necesario balancear las llantas del vehículo'),
(null, 7, 12, '2024-07-27', 'Se recomienda al cliente alinear las ruedas'),
(null, 12, 6, '2024-07-18', 'Se recomienda al cliente alinear las ruedas'),
(null, 10, 10, '2023-12-01', 'Se recomienda al cliente alinear las ruedas'),
(null, 5, 1, '2023-11-03', 'El cliente necesita revisar la presión de sus neumáticos'),
(null, 9, 12, '2024-02-16', 'El cliente necesita revisar la presión de sus neumáticos'),
(null, 4, 4, '2024-02-22', 'Se debe cambiar la válvula del neumático');


insert into INVENTARIO 
values 
(null, 'balanceadoras', 28, 17730.06),
(null, 'tapas de válvulas', 72, 47459.59),
(null, 'tuercas', 25, 197072.34),
(null, 'tapas de válvulas', 17, 123653.34),
(null, 'balanceadoras', 42, 220490.49),
(null, 'tapas de válvulas', 6, 214535.05),
(null, 'llantas', 4, 185713.74),
(null, 'tuercas', 26, 179716.74),
(null, 'tornillos', 13, 200898.68),
(null, 'tornillos', 14, 164322.08),
(null, 'alineadoras', 45, 88361.49),
(null, 'compresores', 35, 284246.55);

insert into VENTAS 
values 
(null, 3, 7, 11, '2023-10-05', 25, 241948.83),
(null, 1, 10, 7, '2018-10-31', 40, 58279.88),
(null, 4, 5, 9, '2021-10-22', 15, 254371.69),
(null, 11, 9, 12, '2019-08-18', 32, 149319.3),
(null, 8, 5, 8, '2020-06-04', 6, 119300.04),
(null, 3, 12, 2, '2021-09-12', 47, 95243.99),
(null, 6, 8, 6, '2023-01-12', 4, 95664.34),
(null, 7, 10, 6, '2021-07-28', 50, 115823.65),
(null, 1, 2, 7, '2023-06-28', 16, 176215.02),
(null, 10, 6, 1, '2018-11-24', 26, 110105.29),
(null, 5, 11, 7, '2023-06-11', 37, 179906.36),
(null, 4, 11, 7, '2022-12-26', 19, 61083.21);


insert into PROVEEDORES 
values 
(null, 'Gomería La Ruedita', '01 Kenwood Way', '765-955-8320', 'paxworthy0@chronoengine.com'),
(null, 'Gomería El Globo', '8 Sutherland Drive', '689-802-5764', 'tkhomich1@army.mil'),
(null, 'Gomería El Progreso', '74 Calypso Junction', '942-566-4673', 'tbeeckx2@uol.com.br'),
(null, 'ServiGomas', '57904 Charing Cross Parkway', '971-552-3895', 'rdureden3@japanpost.jp'),
(null, 'Gomería El Faro', '86812 Nova Place', '373-633-1964', 'cmatyashev4@github.com'),
(null, 'Neumáticos Rueda Feliz', '185 Moulton Hill', '430-305-5421', 'ahardington5@webeden.co.uk'),
(null, 'Neumáticos del Sur', '48 David Avenue', '442-627-8587', 'lwelford6@narod.ru'),
(null, 'Gomería El Globo', '3473 Schurz Circle', '994-998-6488', 'psilber7@mapquest.com'),
(null, 'Gomería El Progreso', '7 Homewood Terrace', '151-279-3157', 'bpiatkowski8@scribd.com'),
(null, 'Neumáticos del Sur', '079 North Park', '660-582-5155', 'cbreache9@vk.com'),
(null, 'Gomería La Ruedita', '78 Westport Terrace', '122-205-0982', 'pstodea@wikimedia.org'),
(null, 'Neumáticos Rueda Feliz', '3228 Lighthouse Bay Point', '698-485-8678', 'arawlingsb@cbslocal.com');

insert into COMPRAS 
values
(null, 1, 1, 1, '2019-12-21', 100, 219304.68),
(null, 7, 5, 8, '2020-08-10', 93, 67545.92),
(null, 5, 5, 7, '2022-03-26', 56, 80891.03),
(null, 8, 2, 6, '2021-05-05', 41, 3783.64),
(null, 7, 2, 8, '2020-10-29', 64, 169494.1),
(null, 2, 9, 8, '2022-07-14', 1, 62623.83),
(null, 5, 7, 11, '2019-11-14', 93, 205284.39),
(null, 5, 10, 4, '2022-09-01', 75, 169803.58),
(null, 1, 11, 8, '2021-11-19', 60, 132886.05),
(null, 11, 12, 1, '2023-08-25', 17, 210056.69),
(null, 5, 1, 11, '2019-10-11', 22, 15437.83),
(null, 2, 6, 3, '2019-11-09', 16, 92001.36);
