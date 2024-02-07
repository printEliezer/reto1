CREATE OR REPLACE PROCEDURE SP_HOSPITAL_ELIMINAR (
    p_idHospital IN INT
)
IS
BEGIN
    DELETE FROM Hospital
    WHERE idHospital = p_idHospital;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Hospital eliminado correctamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar el hospital: ' || SQLERRM);
END SP_HOSPITAL_ELIMINAR;
