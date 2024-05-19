/*Estableciendo conexión entre tablas*/
SELECT * FROM Divisiones 
	JOIN Partidos on Cod_Divisiones=Cod_Division;

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


/*Creando vista de los partidos de 2017 y 2018 de la liga (1er objetivo en R)*/
CREATE VIEW laliga_2017_2018 AS
SELECT Cod_Division, Team_Local, Goles_Local, Team_Visitante, Goles_Visitante, Ganador, Temporada 
	FROM Partidos 
	WHERE Cod_Division='SP1' AND Temporada IN ('2017-18', '2018-19');
