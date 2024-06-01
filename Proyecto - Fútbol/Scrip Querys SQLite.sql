/*1era Query*/
CREATE VIEW "Query_1" AS
SELECT Cod_Divisiones, Nombre_Div, count (Cod_Division) AS Cantidad_Partidos, Pais FROM Divisiones
		JOIN Partidos ON Cod_Divisiones=Cod_Division
			GROUP BY Cod_Division
			ORDER BY Cantidad_Partidos DESC 
			LIMIT 5;

/*2da Query*/

	
/*3era Query*/
CREATE VIEW "q3" AS
SELECT Cod_Division, Team_Local As Equipo, sum(Goles_Local) AS Total_Goles, Temporada FROM Partidos 
	WHERE Cod_Division='T1'
		GROUP BY Team_Local, Temporada
UNION 
SELECT Cod_Division, Team_Visitante, sum(Goles_Visitante), Temporada FROM Partidos 
	WHERE Cod_Division='T1'
		GROUP BY Team_Local, Temporada;
		
SELECT Cod_Division, Equipo, Max(Total_Goles) AS Maximos_Goleadores, (Temporada) FROM 
(SELECT Cod_Division, Equipo, sum(Total_Goles) AS Total_Goles, Temporada FROM q3
	GROUP BY Equipo, Temporada
	ORDER BY Temporada
)
	GROUP BY Temporada;

/*4ta Query*/

/*5ta Query*/
