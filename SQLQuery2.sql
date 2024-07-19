SELECT TOP 200 -- Selecciona las primeras 200 filas
    p.Title, u.DisplayName -- de la columna Title de la tabla Posts y la columna DisplayName de la tabla Users
FROM Posts p -- De la tabla Posts con alias 'p'
INNER JOIN Users u ON p.OwnerUserId = u.Id -- Une con la tabla Users utilizando la columna OwnerUserId de Posts y la columna Id de Users
WHERE p.OwnerUserId IS NOT NULL; -- Donde la columna OwnerUserId no es NULL