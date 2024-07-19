BEGIN TRANSACTION; --Inicia una transaccion

DELETE FROM Comments --elimina los comentarios de la tabla Comments
WHERE UserId IN (SELECT Id FROM Users WHERE Reputation < 100); --Donde la tabla UserId se encuentran los resultados de la subconsulta(Selecciona el Id de la tabla Users donde la reputacion es menor 100)