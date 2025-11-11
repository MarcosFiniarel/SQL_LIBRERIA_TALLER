CREATE TABLE COMUNA(
    id_comuna       NUMBER(3) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_comuna   VARCHAR2(30) NOT NULL
);

CREATE TABLE ESTADO_CIVIL(
    id_estcivil     NUMBER(1) PRIMARY KEY,
    desc_Estcivil   VARCHAR2(25) NOT NULL
);

CREATE TABLE TIPO_PROPIEDAD(
    id_tipo_propiedad   VARCHAR2(1) PRIMARY KEY,
    desc_tipo_propiedad VARCHAR2(30) NOT NULL
);

CREATE TABLE EMPLEADO(
    numrut_emp          NUMBER(10) PRIMARY KEY,
    dvrut_emp           VARCHAR2(1) NOT NULL,
    appaterno_emp       VARCHAR2(15) NOT NULL,
    apmaterno_emp       VARCHAR2(15) NOT NULL,
    nombre_emp          VARCHAR2(25) NOT NULL,
    direccion_emp       VARCHAR2(60) NOT NULL,
    id_estcivil         NUMBER(1) NOT NULL,
    fonofijo_emp        VARCHAR2(15) NOT NULL,
    celular_emp         VARCHAR2(15),
    fecnac_emp          DATE,
    fecing_emp          DATE NOT NULL,
    sueldo_emp          NUMBER(7) NOT NULL,
    id_comuna           NUMBER(3),
    id_categoria_emp    NUMBER(1),
    CONSTRAINT fk_empleado_comuna FOREIGN KEY (id_comuna) REFERENCES COMUNA(id_comuna),
    CONSTRAINT fk_empleado_estado_civil FOREIGN KEY (id_estcivil) REFERENCES ESTADO_CIVIL(id_estcivil)
);

CREATE TABLE PROPIETARIO(
    numrut_prop         NUMBER(10) PRIMARY KEY,
    dvrut_prop          VARCHAR2(1) NOT NULL,
    appaterno_prop      VARCHAR2(15) NOT NULL,
    apmaterno_prop      VARCHAR2(15) NOT NULL,
    nombre_prop         VARCHAR2(25) NOT NULL,
    direccion_prop      VARCHAR2(60) NOT NULL,
    id_estcivil         NUMBER(1) NOT NULL,
    fonofijo_prop       VARCHAR2(15) NOT NULL,
    celular_prop        VARCHAR2(15),
    id_comuna           NUMBER(3),
    CONSTRAINT fk_propietario_comuna FOREIGN KEY (id_comuna) REFERENCES COMUNA(id_comuna),
    CONSTRAINT fk_propietario_estado_civil FOREIGN KEY (id_estcivil) REFERENCES ESTADO_CIVIL(id_estcivil)
);

CREATE TABLE CLIENTE(
    numrut_cli         NUMBER(10) PRIMARY KEY,
    dvrut_cli          VARCHAR2(1) NOT NULL,
    appaterno_cli      VARCHAR2(15) NOT NULL,
    apmaterno_cli      VARCHAR2(15) NOT NULL,
    nombre_cli         VARCHAR2(25) NOT NULL,
    direccion_cli      VARCHAR2(60) NOT NULL,
    id_estcivil        NUMBER(1) NOT NULL,
    fonofijo_cli       VARCHAR2(15) NOT NULL,
    celular_cli        VARCHAR2(15),
    renta_cli          NUMBER(7) NOT NULL,
    CONSTRAINT fk_cliente_estado_civil FOREIGN KEY (id_estcivil) REFERENCES ESTADO_CIVIL(id_estcivil)
);

CREATE TABLE PROPIEDAD(
    nro_propiedad       NUMBER(6) PRIMARY KEY,
    direccion_propiedad VARCHAR2(60) NOT NULL,
    superficie          NUMBER(8,2) NOT NULL,
    nro_dormitorios     NUMBER(1),
    nro_banos           NUMBER(1),
    valor_arriendo      NUMBER(7) NOT NULL,
    valor_gasto_comun   NUMBER(6),
    id_tipo_propiedad   VARCHAR(1) NOT NULL,
    id_comuna           NUMBER(3) NOT NULL,
    numrut_prop         NUMBER(10) NOT NULL,
    numrut_emp          NUMBER(10),
    CONSTRAINT fk_propiedad_tipo_propiedad FOREIGN KEY (id_tipo_propiedad) REFERENCES TIPO_PROPIEDAD(id_tipo_propiedad),
    CONSTRAINT fk_propiedad_comuna FOREIGN KEY (id_comuna) REFERENCES COMUNA(id_comuna),
    CONSTRAINT fk_propiedad_propietario FOREIGN KEY (numrut_prop) REFERENCES PROPIETARIO(numrut_prop),
    CONSTRAINT fk_propiedad_empleado FOREIGN KEY (numrut_emp) REFERENCES EMPLEADO(numrut_emp)
);

CREATE TABLE PROPIEDAD_ARRENDADA(
    nro_propiedad   NUMBER(6),
    fecini_arriendo DATE,
    fecter_arriendo DATE,
    numrut_cli      NUMBER(10) NOT NULL,
    CONSTRAINT fk_propiedad_arrendada_cliente FOREIGN KEY (numrut_cli) REFERENCES CLIENTE(numrut_cli),
    CONSTRAINT fk_propiedad_arrendada_prop FOREIGN KEY (nro_propiedad) REFERENCES PROPIEDAD(nro_propiedad),
    CONSTRAINT pk_propiedad_arrendada PRIMARY KEY (nro_propiedad,fecini_arriendo)
);