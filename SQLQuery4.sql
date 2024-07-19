SELECT TOP 200 -- Selecciona las primeras 200 filas 
    u.DisplayName -- de la columna DisplayName de la tabla Users
FROM Users u -- De la tabla Users con alias 'u'
WHERE u.Id IN ( -- Donde la columna Id de la tabla Users se encuentra en los resultados de la subconsulta
    SELECT Comments.UserId -- Selecciona la columna UserId de la tabla Comments
    FROM Comments -- De la tabla Comments
    GROUP BY Comments.UserId -- Agrupa por la columna UserId de la tabla Comments
    HAVING COUNT(Comments.ID) > 100 -- Filtra los grupos de UserId donde el número de comentarios es mayor a 100
);
