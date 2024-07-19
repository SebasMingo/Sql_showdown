SELECT TOP 10 Title, Score -- Selecciona las 10 publicaciones con mayor puntuación, incluyendo los campos Title y Score
FROM Posts -- De la tabla Posts
ORDER BY Score DESC; -- Ordena los resultados por puntuacion en orden descendente
