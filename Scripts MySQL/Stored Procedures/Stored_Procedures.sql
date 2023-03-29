USE HUMON;
DROP PROCEDURE SP_Usuario;

DELIMITER /
CREATE PROCEDURE SP_Usuario(
	IN opc INT,
    IN P_Id_User INT,
	IN P_Rol INT,
    IN P_Username VARCHAR(35),
	IN P_Nombre VARCHAR(40),
	IN P_ApPat VARCHAR(50),
	IN P_ApMat VARCHAR(50),
	IN P_Sexo CHAR(3),
	IN P_Fecha_Nac DATE,
	IN P_Foto BLOB,
	IN P_Email VARCHAR(70),
	IN P_Pass VARCHAR(30),
	IN P_Fecha_Modif DATE,
    IN P_Estatus BIT
)
BEGIN

IF opc = 1 THEN #Registro de usuario
	INSERT Usuario (Rol, Nombre, ApPat, ApMat, Sexo, Fecha_Nac, Foto, Email, Pass)
	VALUES (P_Rol, P_Nombre, P_ApPat, P_ApMat, P_Sexo, P_Fecha_Nac, P_Foto, P_Email, P_Pass);
END IF;

IF opc = 2 THEN #Editar datos de usuario
	UPDATE Usuario
    SET
    Nombre = P_Nombre, 
    ApPat = P_ApPat, 
    ApMat = P_ApMat, 
    Sexo = P_Sexo, 
    Fecha_Nac = P_Fecha_Nac, 
    Foto = P_Foto, 
    Email = P_Email, 
    Pass = P_Pass
    WHERE Id_User = P_Id_User;
END IF;

IF opc = 3 THEN #Eliminar registro de usuario
	DELETE FROM Usuario
    WHERE Id_User = P_Id_User;
END IF;

IF opc = 4 THEN #Baja lógica de usuario
	UPDATE Usuario
    SET
    Estatus = false
    WHERE Id_User = P_Id_User;
END IF;

IF opc = 5 THEN #Buscar usuario por ID de usuario
	SELECT (Rol, Nombre, ApPat, ApMat, Sexo, FechaNac, Foto, Email)
    WHERE Id_User = P_Id_User;
END IF;

IF opc = 6 THEN #Buscar usuario por nombre de persona
	SELECT (Rol, Nombre, ApPat, ApMat, Sexo, FechaNac, Foto, Email)
    WHERE Nombre = P_Nombre;
END IF;

IF opc = 7 THEN #Buscar usuario por nombre de usuario
	SELECT (Rol, Nombre, ApPat, ApMat, Sexo, FechaNac, Foto, Email)
    WHERE Nombre = P_Nombre;
END IF;

IF opc = 8 THEN #Inicio de sesión
	SELECT (Id_User, Pass)
    WHERE Username = P_Username AND Pass = P_Pass;
END IF;

END /

CALL SP_Usuario();