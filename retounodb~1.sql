-- Insertar registros en la tabla Gerente
INSERT INTO Gerente (idGerente, descGerente, fechaRegistro) VALUES (1, 'Gerente 1', TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO Gerente (idGerente, descGerente, fechaRegistro) VALUES (2, 'Gerente 2', TO_DATE('2022-09-30', 'YYYY-MM-DD'));
INSERT INTO Gerente (idGerente, descGerente, fechaRegistro) VALUES (3, 'Gerente 3', TO_DATE('2023-03-20', 'YYYY-MM-DD'));

-- Insertar registros en la tabla Condicion
INSERT INTO Condicion (idCondicion, descCondicion, fechaRegistro) VALUES (1, 'Condicion 1', TO_DATE('2022-12-10', 'YYYY-MM-DD'));
INSERT INTO Condicion (idCondicion, descCondicion, fechaRegistro) VALUES (2, 'Condicion 2', TO_DATE('2023-01-25', 'YYYY-MM-DD'));
INSERT INTO Condicion (idCondicion, descCondicion, fechaRegistro) VALUES (3, 'Condicion 3', TO_DATE('2022-11-05', 'YYYY-MM-DD'));

-- Insertar registros en la tabla Sede
INSERT INTO Sede (idSede, descSede, fechaRegistro) VALUES (1, 'Sede 1', TO_DATE('2023-03-10', 'YYYY-MM-DD'));
INSERT INTO Sede (idSede, descSede, fechaRegistro) VALUES (2, 'Sede 2', TO_DATE('2022-11-20', 'YYYY-MM-DD'));
INSERT INTO Sede (idSede, descSede, fechaRegistro) VALUES (3, 'Sede 3', TO_DATE('2023-01-05', 'YYYY-MM-DD'));

-- Insertar registros en la tabla Provincia
INSERT INTO Provincia (idProvincia, descProvincia, fechaRegistro) VALUES (1, 'Provincia 1', TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO Provincia (idProvincia, descProvincia, fechaRegistro) VALUES (2, 'Provincia 2', TO_DATE('2022-10-25', 'YYYY-MM-DD'));
INSERT INTO Provincia (idProvincia, descProvincia, fechaRegistro) VALUES (3, 'Provincia 3', TO_DATE('2023-02-15', 'YYYY-MM-DD'));

-- Insertar registros en la tabla Distrito
INSERT INTO Distrito (idDistrito, descDistrito, fechaRegistro, idProvincia) VALUES (1, 'Distrito 1', TO_DATE('2023-02-28', 'YYYY-MM-DD'), 1);
INSERT INTO Distrito (idDistrito, descDistrito, fechaRegistro, idProvincia) VALUES (2, 'Distrito 2', TO_DATE('2022-08-15', 'YYYY-MM-DD'), 1);
INSERT INTO Distrito (idDistrito, descDistrito, fechaRegistro, idProvincia) VALUES (3, 'Distrito 3', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 2);
