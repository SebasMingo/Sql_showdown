UPDATE Users -- Actualiza la tabla Users
SET Location = 'Desconocido' -- Establece la columna Location a 'Desconocido'
WHERE Location IS NULL OR Location = ''; -- Donde la columna Location es NULL o está vacía