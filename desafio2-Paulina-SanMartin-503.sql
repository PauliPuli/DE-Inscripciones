-- Tabla con registros
CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente VARCHAR);
--Datos
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 44, '01/01/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 56, '01/01/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 39, '01/02/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 81, '01/02/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/03/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 91, '01/03/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 48, '01/04/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 45, '01/04/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 55, '01/05/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 33, '01/05/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 18, '01/06/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/06/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 34, '01/07/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 24, '01/07/2021', 'Página' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 83, '01/08/2021', 'Blog' ); 
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 99, '01/08/2021', 'Página' );

select * from inscritos;

--1.¿Cuántos registros hay?
select COUNT(*) from inscritos;
--R: Hay 16 registros, los cuales podemos visualizar con el comando COUNT.

--2.¿Cuántos inscritos hay en total?
select SUM(cantidad) from inscritos;
--R: Hay 774inscritos

--3.¿Cuál o cuáles son los registros de mayor antigüedad?
select * from inscritos where fecha =(select MIN(fecha) from inscritos);
--R: Los del día 01-01-2021

--4. ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
select fecha, SUM(cantidad) from inscritos group by fecha order by fecha desc;
--R: Hay 100 inscritos el 1° de Enero, 120 el 1° de Febrero, 103 el °1 de Marzo, 93 el 1° de Abril, 
--88 el 1° de Mayo, 30 el 1° de Junio, 58 el 1° de Julio y 182 el 1° de Marzo.


--5.¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
--R: El 1° de Agosto del 2021 fue el día en que más se inscribieron personas con un total de 182 personas.
select fecha, SUM(cantidad) from inscritos group by fecha order by SUM(cantidad)desc limit 1;
