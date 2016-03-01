-- Generado por Blanca
--   en:        2016-02-27 19:54:16 CET
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c



DROP TABLE trabajadores CASCADE CONSTRAINTS ;

DROP TABLE centros CASCADE CONSTRAINTS ;

CREATE TABLE centros
  (
    id        NUMBER (2)
      GENERATED ALWAYS AS IDENTITY
                        MINVALUE 1 
                        MAXVALUE 99
                        INCREMENT BY 1 
                        START WITH 1  
                        NOORDER  
                        NOCYCLE  NOT NULL ENABLE
      CONSTRAINT centros_id_pk PRIMARY KEY ,
    nombre    VARCHAR2 (30) NOT NULL ,
    calle     VARCHAR2 (30) ,
    numero    NUMBER (2) ,
    cp        VARCHAR2 (5) ,
    ciudad    VARCHAR2 (15) ,
    provincia VARCHAR2 (40) ,
    telefono  VARCHAR2 (9)
  ) ;

CREATE TABLE trabajadores
  (
    dni         VARCHAR2 (9) CONSTRAINT trab_dni_pk PRIMARY KEY ,
    nombre      VARCHAR2 (20) CONSTRAINT NNC_trab_nombre NOT NULL ,
    apellido1   VARCHAR2 (30) CONSTRAINT NNC_trab_apellido1 NOT NULL,
    apellido2   VARCHAR2 (30) CONSTRAINT NNC_trab_apellido2 NOT NULL,
    calle       VARCHAR2 (20) ,
    portal      NUMBER (2) ,
    piso        NUMBER (2) ,
    mano        VARCHAR2 (4) ,
    telMovil    VARCHAR2 (9) ,
    telPersonal VARCHAR2 (9) ,
    fechaNac    DATE ,
    salario     NUMBER (5) ,
    idCentro       NUMBER (2) CONSTRAINT NNC_trab_centro_id NOT NULL ,
    tipoTrabajador VARCHAR2 (1),
    CONSTRAINT trab_centro_fk FOREIGN KEY ( idCentro ) REFERENCES centros ( id ),
  ) ;



