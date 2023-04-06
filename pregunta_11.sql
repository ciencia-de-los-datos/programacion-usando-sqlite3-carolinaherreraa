-- 
--  Sea el siguiente conjunto de tablas en una base de datos:
-- 
--    tbl0
--    ------------------------
--    K0  CHAR(1)
--    c01 INT
--    c02 INT
--    c03 CHAR(4)
--    c04 FLOAT
--        
--    tbl1
--    ------------------------
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--    tbl2
--    ------------------------
--    K1  INT,
--    c21 FLOAT,
--    c22 INT,
--    c23 DATE,
--    c24 FLOAT,
--    c25 CHAR(5)
--
--  Escriba una consulta que retorne el total 
--  de registros de la tabla tbl1 para el ano
--  2018
--
--  Rta/
--     YEAR  CANT
--  0  2018     6
--
--  >>> Escriba su codigo a partir de este punto <<<
-- 


with year_2018 as (
select 
    strftime('%Y', c14) as  "YEAR"
from tbl1
WHERE "YEAR" = '2018'
)
select 
    count(*) as "COUNT(*)"
from year_2018;

