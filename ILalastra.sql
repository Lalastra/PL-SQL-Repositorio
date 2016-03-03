CREATE OR REPLACE PROCEDURE ver_trabajador_loop IS
CURSOR cur_trabajador IS
    SELECT apellido1, fechanac
    FROM trabajadores
    ORDER BY apellido1;
  reg_trabajador cur_trabajador%ROWTYPE;
BEGIN 
  OPEN cur_trabajador;
    LOOP 
      FETCH cur_trabajador INTO reg_trabajador;
      DBMS_OUTPUT.PUT_LINE('Apellido del trabajador '||reg_trabajador.apellido1);
      DBMS_OUTPUT.PUT_LINE('Fecha de nacimiento del trabajador '||to_char(reg_trabajador.fechanac));
    EXIT WHEN cur_trabajador%NOTFOUND;
    END LOOP;
  CLOSE cur_trabajador;
END;
    