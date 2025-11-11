CREATE TABLE VENDEDOR(
    id_empleado     NUMBER(5) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numrut          NUMBER(10) NOT NULL,
    dvrut           VARCHAR2(1) NOT NULL,
    pnombre         VARCHAR2(20) NOT NULL,
    snombre         VARCHAR2(20),
    appaterno       VARCHAR2(20) NOT NULL,
    apmaterno       VARCHAR2(20) NOT NULL,
    fecha_contrato  DATE NOT NULL,
    sueldo_base     NUMBER(7) NOT NULL
);

CREATE TABLE BOLETA(
    nro_boleta      NUMBER(8) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_empleado     NUMBER(5) NOT NULL,
    fecha_boleta    DATE NOT NULL,
    monto_total     NUMBER(8) NOT NULL,
    CONSTRAINT BOLETA_VENDEDOR_FK FOREIGN KEY (id_empleado) REFERENCES VENDEDOR(id_empleado)
);

CREATE TABLE COMISION_BOLETA(
    nro_boleta  NUMBER(5) NOT NULL,
    id_empleado NUMBER(5) NOT NULL,
    monto_comision  NUMBER(8) NOT NULL,
    CONSTRAINT COMISION_BOLETA_VENDEDOR_FK FOREIGN KEY (id_empleado) REFERENCES VENDEDOR(id_empleado),
    CONSTRAINT COMISION_BOLETA_BOLETA_FK FOREIGN KEY (nro_boleta) REFERENCES BOLETA(nro_boleta),
    CONSTRAINT COMISION_BOLETA_PK PRIMARY KEY (nro_boleta,id_empleado)
);

ALTER TABLE BOLETA ADD CONSTRAINT monto_boleta_mayor_cero CHECK (monto_total > 0);

ALTER TABLE VENDEDOR ADD CONSTRAINT sueldo_base_mayor CHECK (sueldo_base > 440000);

ALTER TABLE COMISION_BOLETA MODIFY monto_comision DEFAULT 0;

ALTER TABLE COMISION_BOLETA ADD CONSTRAINT chk_monto_no_negativo CHECK (monto_comision >= 0);