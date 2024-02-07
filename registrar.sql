CREATE OR REPLACE PROCEDURE SP_HOSPITAL_REGISTRAR (
    p_idHospital IN INT,
    p_Nombre IN VARCHAR2,
    p_Antiguedad IN INT,
    p_Area IN NUMBER,
    p_idSede IN INT,
    p_idGerente IN INT,
    p_idCondicion IN INT,
    p_idDistrito IN INT
) AS
    v_gerente_desc VARCHAR2(255);
    v_condicion_desc VARCHAR2(255);
    v_sede_desc VARCHAR2(255);
    v_distrito_desc VARCHAR2(255);
BEGIN
    -- Obtener descripciones
    SELECT descGerente INTO v_gerente_desc FROM Gerente WHERE idGerente = p_idGerente;
    SELECT descCondicion INTO v_condicion_desc FROM Condicion WHERE idCondicion = p_idCondicion;
    SELECT descSede INTO v_sede_desc FROM Sede WHERE idSede = p_idSede;
    SELECT descDistrito INTO v_distrito_desc FROM Distrito WHERE idDistrito = p_idDistrito;

    -- Insertar registro en la tabla Hospital
    INSERT INTO Hospital (idHospital, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, idDistrito, fechaRegistro)
    VALUES (p_idHospital, p_Nombre, p_Antiguedad, p_Area, p_idSede, p_idGerente, p_idCondicion, p_idDistrito, SYSDATE);

    -- Mostrar mensaje de éxito
    DBMS_OUTPUT.PUT_LINE('Hospital registrado exitosamente:');
    DBMS_OUTPUT.PUT_LINE('ID: ' || p_idHospital);
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || p_Nombre);
    DBMS_OUTPUT.PUT_LINE('Antigüedad: ' || p_Antiguedad);
    DBMS_OUTPUT.PUT_LINE('Área: ' || p_Area);
    DBMS_OUTPUT.PUT_LINE('Gerente: ' || v_gerente_desc);
    DBMS_OUTPUT.PUT_LINE('Condición: ' || v_condicion_desc);
    DBMS_OUTPUT.PUT_LINE('Sede: ' || v_sede_desc);
    DBMS_OUTPUT.PUT_LINE('Distrito: ' || v_distrito_desc);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró información para uno o más parámetros.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END SP_HOSPITAL_REGISTRAR;

