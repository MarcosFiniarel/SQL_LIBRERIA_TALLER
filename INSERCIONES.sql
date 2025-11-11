-- VENDEDORES

INSERT INTO VENDEDOR (numrut, dvrut, pnombre, snombre, appaterno, apmaterno, fecha_contrato, sueldo_base)
VALUES (17894562, 'K', 'Carlos', 'Andrés', 'Pérez', 'Muñoz', DATE '2021-03-10', 550000);

INSERT INTO VENDEDOR (numrut, dvrut, pnombre, snombre, appaterno, apmaterno, fecha_contrato, sueldo_base)
VALUES (19985471, '2', 'María', 'Isabel', 'González', 'Lagos', DATE '2022-01-15', 620000);

INSERT INTO VENDEDOR (numrut, dvrut, pnombre, snombre, appaterno, apmaterno, fecha_contrato, sueldo_base)
VALUES (20365749, '8', 'Felipe', NULL, 'Rojas', 'Contreras', DATE '2020-07-22', 700000);

INSERT INTO VENDEDOR (numrut, dvrut, pnombre, snombre, appaterno, apmaterno, fecha_contrato, sueldo_base)
VALUES (18947325, '9', 'Camila', 'Alejandra', 'Soto', 'Fuentes', DATE '2023-05-09', 480000);

INSERT INTO VENDEDOR (numrut, dvrut, pnombre, snombre, appaterno, apmaterno, fecha_contrato, sueldo_base)
VALUES (21003457, '1', 'Javier', 'Ignacio', 'Torres', 'Paredes', DATE '2024-02-27', 510000);

-- BOLETAS

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (1, DATE '2024-10-01', 150000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (2, DATE '2024-10-02', 220000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (3, DATE '2024-10-03', 180000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (4, DATE '2024-10-04', 200000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (5, DATE '2024-10-05', 300000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (1, DATE '2024-10-06', 250000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (2, DATE '2024-10-07', 120000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (3, DATE '2024-10-08', 310000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (4, DATE '2024-10-09', 170000);

INSERT INTO BOLETA (id_empleado, fecha_boleta, monto_total)
VALUES (5, DATE '2024-10-10', 400000);

-- COMISIONES

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (1, 1, 15000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (2, 2, 22000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (3, 3, 18000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (4, 4, 20000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (5, 5, 30000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (6, 1, 25000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (7, 2, 0);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (8, 3, 31000);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (9, 4, 0);

INSERT INTO COMISION_BOLETA (nro_boleta, id_empleado, monto_comision)
VALUES (10, 5, 40000);