CREATE OR REPLACE PROCEDURE SP_HOSPITAL_LISTAR
IS
    CURSOR c_hospitales IS
        SELECT h.idHospital, h.Nombre, h.Antiguedad, h.Area, s.descSede, g.descGerente, c.descCondicion, d.descDistrito, h.fechaRegistro
        FROM Hospital h
        INNER JOIN Sede s ON h.idSede = s.idSede
        INNER JOIN Gerente g ON h.idGerente = g.idGerente
        INNER JOIN Condicion c ON h.idCondicion = c.idCondicion
        INNER JOIN Distrito d ON h.idDistrito = d.idDistrito;
BEGIN
    FOR hospital IN c_hospitales LOOP
        DBMS_OUTPUT.PUT_LINE('ID Hospital: ' || hospital.idHospital || ', Nombre: ' || hospital.Nombre || ', Antigüedad: ' || hospital.Antiguedad ||
                             ', Área: ' || hospital.Area || ', Sede: ' || hospital.descSede || ', Gerente: ' || hospital.descGerente ||
                             ', Condición: ' || hospital.descCondicion || ', Distrito: ' || hospital.descDistrito || ', Fecha de Registro: ' || hospital.fechaRegistro);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al listar hospitales: ' || SQLERRM);
END SP_HOSPITAL_LISTAR;

SET SERVEROUTPUT ON;
EXEC SP_HOSPITAL_LISTAR;

