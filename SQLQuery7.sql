SELECT TOP 200
    Users.DisplayName,  -- Seleccionamos el nombre de usuario para mostrar en los resultados
    (SELECT COUNT(*) FROM Posts WHERE OwnerUserId = Users.Id) AS TotalPosts,  -- Contamos los posts que pertenecen al usuario actual
    (SELECT COUNT(*) FROM Comments WHERE UserId = Users.Id) AS TotalComments,  -- Contamos los comentarios que ha hecho el usuario actual
    (SELECT COUNT(*) FROM Badges WHERE UserId = Users.Id) AS TotalBadges  -- Contamos los badges que ha recibido el usuario actual
FROM
    Users  -- Seleccionamos desde la tabla de usuarios
ORDER BY
    TotalPosts DESC, Users.DisplayName;  -- Ordenamos primero por el número total de posts en orden descendente, y luego por el nombre de usuario alfabéticamente
