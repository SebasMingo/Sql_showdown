SELECT TOP 200 -- Selecciona las primeras 200 filas
    Users.DisplayName, AVG(p.Score) AS AvgScore  -- Selecciona la columna DisplayName de la tabla Users y obtiene el promedio de Score de la tabla Posts
FROM posts p -- De la tabla Posts con alias 'p'
INNER JOIN Users ON p.OwnerUserId = Users.Id -- Une la tabla Posts con la tabla Users donde OwnerUserId coincide con Id
GROUP BY Users.DisplayName; -- Agrupa por la columna DisplayName de la tabla Users