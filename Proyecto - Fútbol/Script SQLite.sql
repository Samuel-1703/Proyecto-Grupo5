/*Comandos para cambiar los valores*/

UPDATE Partidos SET Ganador='V' WHERE Ganador='A';
UPDATE Partidos SET Ganador='L' WHERE Ganador='H';
UPDATE Partidos SET Ganador='E' WHERE Ganador='D';

UPDATE Partidos SET Temporada='2020-21' WHERE Temporada='2021';
UPDATE Partidos SET Temporada='2019-20' WHERE Temporada='2020';
UPDATE Partidos SET Temporada='2018-19' WHERE Temporada='2019';
UPDATE Partidos SET Temporada='2017-18' WHERE Temporada='2018';
UPDATE Partidos SET Temporada='2016-17' WHERE Temporada='2017';
UPDATE Partidos SET Temporada='2015-16' WHERE Temporada='2016';
UPDATE Partidos SET Temporada='2014-15' WHERE Temporada='2015';
UPDATE Partidos SET Temporada='2013-14' WHERE Temporada='2014';
UPDATE Partidos SET Temporada='2012-13' WHERE Temporada='2013';
UPDATE Partidos SET Temporada='2011-12' WHERE Temporada='2012';
UPDATE Partidos SET Temporada='2010-11' WHERE Temporada='2011';
UPDATE Partidos SET Temporada='2009-10' WHERE Temporada='2010';
UPDATE Partidos SET Temporada='2008-09' WHERE Temporada='2009';
UPDATE Partidos SET Temporada='2007-08' WHERE Temporada='2008';
UPDATE Partidos SET Temporada='2006-07' WHERE Temporada='2007';
UPDATE Partidos SET Temporada='2005-06' WHERE Temporada='2006';

UPDATE Divisiones SET Pais='Bélgica' WHERE Pais='Belgium';
UPDATE Divisiones SET Pais='Alemania' WHERE Pais='Deutschland';
UPDATE Divisiones SET Pais='Inglaterra' WHERE Pais='England';
UPDATE Divisiones SET Pais='Francia' WHERE Pais='France';
UPDATE Divisiones SET Pais='Grecia' WHERE Pais='Greece';
UPDATE Divisiones SET Pais='Italia' WHERE Pais='Italy';
UPDATE Divisiones SET Pais='Países Bajos' WHERE Pais='Netherlands';
UPDATE Divisiones SET Pais='Escocia' WHERE Pais='Scotland';
UPDATE Divisiones SET Pais='España' WHERE Pais='Spain';
UPDATE Divisiones SET Pais='Turquía' WHERE Pais='Turkey';

-------------------------------------------------------------------------------------------------------------------------------------------------
--

--//Datos de los descendidos en la 2014-15
CREATE VIEW Descendidos_1era AS

SELECT
CASE
        WHEN Team_Local IN ('Burnley','QPR', 'Hull') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Burnley', 'QPR', 'Hull') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Burnley', ' QPR ', 'Hull') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Burnley', 'QPR', 'Hull') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Burnley', 'QPR', 'Hull') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2014-15'
    AND (Team_Local IN ('Burnley',  'QPR', 'Hull')
        OR Team_Visitante IN ('Burnley',  'QPR', 'Hull'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--//Datos de la segunda division para la 2015-16
CREATE VIEW  Descendidos_2da AS

SELECT
CASE
        WHEN Team_Local IN ('Burnley','QPR', 'Hull') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Burnley', 'QPR', 'Hull') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Burnley', ' QPR ', 'Hull') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Burnley', 'QPR', 'Hull') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Burnley', 'QPR', 'Hull') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2015-16'
    AND (Team_Local IN ('Burnley',  'QPR', 'Hull')
        OR Team_Visitante IN ('Burnley',  'QPR', 'Hull'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--// Datos de la segunda division para la 2014-15
CREATE VIEW Ascendidos_2da AS

SELECT
CASE
        WHEN Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2014-15'
    AND (Team_Local IN ('Bournemouth', 'Norwich', 'Watford')
        OR Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--// Datos de los ascendidos para la 2015-16
CREATE VIEW Ascendidos_1era AS

SELECT
CASE
        WHEN Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Bournemouth', 'Norwich', 'Watford') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2015-16'
    AND (Team_Local IN ('Bournemouth', 'Norwich', 'Watford')
        OR Team_Visitante IN ('Bournemouth', 'Norwich', 'Watford'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--// Datos de rivales en la segunda division para la 2015-16
CREATE VIEW Rivales_2da AS
SELECT
CASE
        WHEN Team_Local IN ('Brighton', 'Derby', 'Cardiff') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Brighton', 'Derby', 'Cardiff') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Brighton', 'Derby', 'Cardiff') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Brighton', 'Derby', 'Cardiff') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Brighton', 'Derby', 'Cardiff') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2015-16'
    AND (Team_Local IN ('Brighton', 'Derby', 'Cardiff')
        OR Team_Visitante IN ('Brighton', 'Derby', 'Cardiff'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--// Datos de rivales en la primera division para la 2015-16
CREATE VIEW Rivales_1era AS


SELECT
CASE
        WHEN Team_Local IN ('Everton', 'Crystal Palace','Newcastle') THEN Team_Local
        ELSE Team_Visitante
	    END AS Equipo,
    SUM(CASE
        WHEN Ganador = 'L' AND Team_Local IN ('Everton', 'Crystal Palace','Newcastle') THEN 3
		WHEN Ganador = 'E' AND Team_Local IN ('Everton', 'Crystal Palace','Newcastle') THEN 1
        ELSE 0 
    END) AS Puntos_local,
    
    SUM(CASE
        WHEN Ganador = 'V' AND Team_Visitante IN ('Everton', 'Crystal Palace','Newcastle') THEN 3
        WHEN Ganador = 'E' AND Team_Visitante IN ('Everton', 'Crystal Palace','Newcastle') THEN 1
		ELSE 0
    END) AS Puntos_visitante,
	
	 Temporada
FROM Partidos
WHERE Temporada = '2015-16'
    AND (Team_Local IN ('Everton', 'Crystal Palace','Newcastle')
        OR Team_Visitante IN ('Everton', 'Crystal Palace','Newcastle'))
GROUP BY Equipo, Temporada
ORDER BY Equipo;


--// Concatenar vistas
CREATE VIEW Primera_Segunda AS

SELECT * FROM Descendidos_1era
UNION ALL
SELECT * FROM  Descendidos_2da
UNION ALL
SELECT * FROM  Ascendidos_2da
UNION ALL
SELECT * FROM Ascendidos_1era
UNION ALL
SELECT * FROM Rivales_2da
UNION ALL
SELECT * FROM Rivales_1era;

-------------------------------------------------------------------------------------------------------------------------------------------------
--

/*Creando vista de los partidos del Athelics de Bilbao (2do objetivo en R)*/
CREATE VIEW "Obj_21" AS
SELECT Id_Partidos, Team_Visitante||'.' AS Team_Visitante, Ganador FROM Partidos 
	WHERE Cod_Division='SP1' AND Team_Visitante='Ath Bilbao';

/*Creando vista de los partidos del Manchester City (2do objetivo en R)*/
CREATE VIEW "Obj_22" AS
SELECT Id_Partidos, Team_Visitante||'.' AS Team_Visitante, Ganador FROM Partidos 
	WHERE Cod_Division='E0' AND Team_Visitante='Man City';

-------------------------------------------------------------------------------------------------------------------------------------------------
--

/*Creando vista de los partidos de los equipos ramdons de la Bundesliga (3do objetivo en R)*/
CREATE VIEW "Obj_31" AS
SELECT Cod_Division, Team_Local AS Equipo, Goles_Local AS Goles_Pro, Team_Visitante AS Rival, Temporada
FROM (SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18') 
			AND Team_Local = 'Leverkusen'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18')
			AND Team_Visitante = 'Leverkusen'

UNION

	SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18') 
			AND Team_Local = 'Ein Frankfurt'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18')
			AND Team_Visitante = 'Ein Frankfurt'

UNION

	SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18') 
			AND Team_Local = 'Freiburg'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'D1' 
			AND Temporada IN ('2016-17', '2017-18')
			AND Team_Visitante = 'Freiburg'
);

/*Creando vista de los partidos de los equipos ramdons de Laliga (2do objetivo en R)*/
CREATE VIEW "Obj_32" AS
SELECT Cod_Division, Team_Local AS Equipo, Goles_Local AS Goles_Pro, Team_Visitante AS Rival, Temporada
FROM (SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19')
			AND Team_Local = 'Barcelona'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19')
			AND Team_Visitante = 'Barcelona'

UNION

	SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19') 
			AND Team_Local = 'Sevilla'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19')
			AND Team_Visitante = 'Sevilla'

UNION

	SELECT Id_Partidos, Cod_Division, Team_Local, Goles_Local, Team_Visitante, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19') 
			AND Team_Local = 'Ath Bilbao'
	UNION		
	SELECT Id_Partidos, Cod_Division, Team_Visitante, Goles_Visitante, Team_Local, Temporada FROM Partidos
		WHERE Cod_Division = 'SP1' 
			AND Temporada IN ('2017-18', '2018-19')
			AND Team_Visitante = 'Ath Bilbao'
);

-------------------------------------------------------------------------------------------------------------------------------------------------
--

/* 1era Query: Indicar los nombres y países de las 5 divisiones que tienen más
partidos disputados en la base de datos */
CREATE VIEW "Query_1" AS
SELECT Cod_Divisiones, Nombre_Div, count (Cod_Division) AS Cantidad_Partidos, Pais FROM Divisiones
		JOIN Partidos ON Cod_Divisiones=Cod_Division
			GROUP BY Cod_Division
			ORDER BY Cantidad_Partidos DESC 
			LIMIT 5;

/* 2da Query: Indicar por temporada las estadísticas descriptivas de los goles
anotados de local y de visitante por país */
CREATE VIEW "Query_2" AS 
SELECT
    Pais AS Pais,
    Temporada AS Temporada,
    round (AVG(Goles_Local),2) AS Promedio_local,
    round (AVG(Goles_Visitante),2) AS Promedio_visitante,
    MIN(Goles_Local) AS Min_local,
    MAX(Goles_Local) AS Max_local,
    MIN(Goles_Visitante) AS Min_visitante,
    MAX(Goles_Visitante) AS Max_visitante
FROM Partidos 
JOIN Divisiones on Cod_Division = Cod_Divisiones
GROUP BY pais, temporada;

/* 3era Query: Se desea saber temporada a temporada cuál fue el equipo de la
liga Turca que más goles totales anotó */
CREATE VIEW "q3" AS
SELECT Cod_Division, Team_Local As Equipo, sum(Goles_Local) AS Total_Goles, Temporada FROM Partidos 
	WHERE Cod_Division='T1'
		GROUP BY Team_Local, Temporada
UNION 
SELECT Cod_Division, Team_Visitante, sum(Goles_Visitante), Temporada FROM Partidos 
	WHERE Cod_Division='T1'
		GROUP BY Team_Local, Temporada;

CREATE VIEW "Query_3" AS	
SELECT Cod_Division, Equipo, Max(Total_Goles) AS Maximos_Goleadores, (Temporada) FROM 
(SELECT Cod_Division, Equipo, sum(Total_Goles) AS Total_Goles, Temporada FROM q3
	GROUP BY Equipo, Temporada
	ORDER BY Temporada
)
	GROUP BY Temporada;

/* 4ta Query: Se quiere saber cuáles fueron los 10 equipos con más goles
anotados como local indistintamente de la liga y la temporada */

CREATE VIEW "Query_4" AS
SELECT Team_Local AS Equipos, sum(Goles_Local) AS Goles_Total_Local From Partidos
	GROUP BY Team_Local
	ORDER BY Goles_Total_Local DESC
	LIMIT 10;

/* 5ta Query: Se requiere observar todos los partidos con sus marcadores en el
cual se enfrentaron el Real Madrid contra el Barcelona Futbol Club */

CREATE VIEW "Query_5" AS
SELECT Fecha, Team_Local AS Equipo_Local, Team_Visitante AS Equipo_Visitante, Goles_Local, Goles_Visitante, Ganador, Temporada
	FROM Partidos
		WHERE (Team_Local LIKE '%Real Madrid%' AND Team_Visitante LIKE '%Barcelona%') 
			OR (Team_Local LIKE '%Barcelona%'AND Team_Visitante LIKE '%Real Madrid%')
		ORDER BY Fecha, Temporada;