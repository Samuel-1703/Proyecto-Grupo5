/*1era Query*/
CREATE VIEW "Query_1" AS
SELECT Cod_Divisiones, Nombre_Div, count (Cod_Division) AS Cantidad_Partidos, Pais FROM Divisiones
		JOIN Partidos ON Cod_Divisiones=Cod_Division
			GROUP BY Cod_Division
			ORDER BY Cantidad_Partidos DESC 
			LIMIT 5;

/*2da Query*/

/*3era Query*/

/*4ta Query*/

/*5ta Query*/