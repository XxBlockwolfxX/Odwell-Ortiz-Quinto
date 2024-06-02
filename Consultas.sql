--Mostrar todas las tablas
SHOW TABLES;

--listar todas los nombres de columnas
show COLUMNS
from
    alumno
    --Fragmentacion Vertical
SELECT
    alumno_1.codigo as "Codigo de Alumno 1",
    alumno_1.*,
    alumno_2.codigo as "Codigo de Alumno_2",
    alumno_2.*
FROM
    `alumno_1`
    INNER JOIN alumno_2 on alumno_1.codigo = alumno_2.codigo;

    --Fragmentacion Horizontal
SELECT * FROM alumno_parte1
    UNION ALL
SELECT * FROM alumno_parte2;
