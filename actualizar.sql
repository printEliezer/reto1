CREATE OR REPLACE PROCEDURE SP_HOSPITAL_ACTUALIZAR (
    p_idHospital IN INT,
    p_nombre IN VARCHAR2,
    p_antiguedad IN INT,
    p_area IN DECIMAL,
    p_idSede IN INT,
    p_idGerente IN INT,
    p_idCondicion IN INT,
    p_idDistrito IN INT
)
IS
BEGIN
    UPDATE Hospital
    SET Nombre = p_nombre,
        Antiguedad = p_antiguedad,
        Area = p_area,
        idSede = p_idSede,
        idGerente = p_idGerente,
        idCondicion = p_idCondicion,
        idDistrito = p_idDistrito
    WHERE idHospital = p_idHospital;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Registro de hospital actualizado correctamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al actualizar el registro de hospital: ' || SQLERRM);
END SP_HOSPITAL_ACTUALIZAR;

