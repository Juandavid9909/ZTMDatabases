# Bases SQL

## Imperativo vs Declarativo

La programación imperativa (por ejemplo Java) es aquella donde línea por línea le indicamos a la computadora qué hacer, le indicamos las instrucciones, y la programación declarativa (por ejemplo SQL) simplemente ejecutamos ciertas instrucciones y obtenemos un resultado sin saber en realidad cómo funciona el programa internamente.

## Nombres propios

Como se sabe, las bases de datos están compuestas de tablas, cada tabla contiene n cantidad de columnas a las que se les denomina `degree` de la tabla, cada columna es un atributo de nuestra tabla y estas van a tener n filas/tuplas, la cantidad total de estas filas/tuplas son llamadas cardinalidad.

## OLTP vs OLAP

OLTP (OnLine Transaction Processing) son las bases de datos que están día a día manejando transacciones, tienen usuarios, las órdenes, las compras, todo el día guardan y categorizan esta data relacionada.

OLAP (OnLine Analytical Processing) es cuando tienes toda la información de las bases de datos, los guardas en un WareHouse y empiezas a hacer todos los procesos analíticos para esa información, para obtener información valiosa para decisiones futuras.

## Comandos

### DDL
- CREATE
- ALTER
- DROP
- RENAME
- TRUNCATE
- COMMENT

### DQL
- SELECT

### DML
- INSERT
- UPDATE
- DELETE
- MERGE
- CALL
- EXPLAIN PLAN
- LOCK TABLE

### DCL
- GRANT
- REVOKE


# Queries básicos

## SELECT

Nos sirve para traer datos de una tabla, la sintaxis es `SELECT * FROM tabla` si queremos traer todos los campos, o `SELECT campo1, campo2 FROM "Schema"."tabla"` para indicar qué datos queremos traer.

## Renombrar columnas

Podemos nombrar las columnas como queramos, la sintaxis para lograrlo es `SELECT campo1 AS "nombrequequeremos1", campo2 AS "nombrequequeremos2" FROM "Schema"."tabla"`.

## Concatenar columnas

Es posible concatenar columnas y textos escribiendo consultas de la sintaxis `SELECT CONCAT(campo1, ' is a ', campo2) AS "Renombre" FROM "Schema"."tabla";`.

## Aggregate functions

### AVG
Calcula el promedio de un conjunto de valores, por ejemplo `SELECT AVG(campo1) FROM "Schema"."table";`.

### COUNT
Cuenta las filas en una tabla en específico, por ejemplo `SELECT COUNT(campo1) FROM "Schema"."table";`.

### MIN
Retorna el valor mínimo de un conjunto de valores, por ejemplo `SELECT MIN(campo1) FROM "Schema"."table";`.

### MAX
Retorna el valor máximo de un conjunto de valores, por ejemplo `SELECT MAX(campo1) FROM "Schema"."table";`.

### SUM
Calcula la suma de los valores, por ejemplo `SELECT SUM(campo1) FROM "Schema"."table";`.

## Filtrar datos

Para filtrar los datos podemos hacer uso de la palabra reservada `WHERE`, y construir un query como el siguiente: `SELECT campo1 FROM "Schema"."table" WHERE campofiltro = 'valor'`.