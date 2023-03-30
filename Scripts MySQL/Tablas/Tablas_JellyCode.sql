CREATE DATABASE IF NOT EXISTS JellyCode;
USE JellyCode;

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario(
Id_User INT AUTO_INCREMENT, #(PK) #Solo si es llave primaria puede ser autoincremental
Rol INT NOT NULL COMMENT 'Campo en el que se guardan los tipos de usuario',
Username VARCHAR(35) NOT NULL UNIQUE COMMENT 'Nombre de usuario del alumno, instructor o administrador',
Nombre VARCHAR(40) NOT NULL COMMENT 'Nombre de persona del usuario',
ApPat VARCHAR(50) NOT NULL COMMENT 'Apellido paterno del usuario',
ApMat VARCHAR(50) NOT NULL COMMENT 'Apellido materno del usuario',
Sexo CHAR(3) NOT NULL COMMENT 'Género del usuario',
Fecha_Nac DATE NOT NULL COMMENT 'Fecha de nacimiento del usuario',
Foto BLOB COMMENT 'Fotografía de perfil de usuario',
Email VARCHAR(70) UNIQUE NOT NULL COMMENT 'Correo electrónico al que se registra el usuario',
Pass VARCHAR(30) NOT NULL COMMENT 'Contraseña del usuario',
Fecha_Modif DATE COMMENT 'Fecha en el que se modifica el perfil del usuario',
Estatus BIT COMMENT 'Estatus con el que podemos saber si un perfil de usuario se encuentra activo, siendo "True" activo y "False" inactivo',

	PRIMARY KEY (Id_User)
);

DROP TABLE IF EXISTS FormaPago;
CREATE TABLE FormaPago(
Id_FP INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla FormaPago', #(PK)
Nombre VARCHAR(35) NOT NULL COMMENT 'Nombre de la forma de pago',

	PRIMARY KEY(Id_FP)
);

DROP TABLE IF EXISTS Curso;
CREATE TABLE Curso(
Id_Curso INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla Curso', #(PK)
Nombre VARCHAR(40) NOT NULL COMMENT 'Nombre del curso',
C_Niveles INT NOT NULL COMMENT 'Cantidad de niveles que contiene el curso',
Costo FLOAT NOT NULL COMMENT 'Costo del curso',
Descripcion VARCHAR(300) NOT NULL COMMENT 'Descripción del curso',
Imagen BLOB NOT NULL COMMENT 'Imagen representativa o de portada del curso',
Video BLOB NOT NULL COMMENT 'Video de presentación del curso',
Estatus BIT COMMENT 'Estatus que indica si el curso se encuentra disponible o no disponible',
Completado BIT COMMENT 'Este campo hace referencia a si se completó o no el curso',
Veces_Comprado INT COMMENT 'Cantidad de veces que el curso ha sido comprado',
Id_FormaPago INT COMMENT 'Forma de pago con la que se realizó la transacción del curso', #(FK)

	PRIMARY KEY (Id_Curso),
    CONSTRAINT FK_FormaPago FOREIGN KEY (Id_FormaPago)  REFERENCES  FormaPago (Id_FP)
);

DROP TABLE IF EXISTS Nivel;
CREATE TABLE Nivel(
Id_Nivel INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla Nivel',
Id_Curso INT COMMENT 'Identificador de la tabla curso a la que pertenece el nivel', #(FK)
Costo_Nivel FLOAT COMMENT 'Costo individual del nivel del curso',
FormaPago INT COMMENT 'Forma de pago con la que se realizó la compra de un nivel dentro de un curso',
Video BLOB COMMENT 'Video que contiene cada nivel',
FechaUltimoIngreso DATETIME COMMENT 'Fecha en la que el usuario entró por última vez al curso',
TipoArchivo BLOB COMMENT 'Tipo de archivo que se cargará al curso (PDF, imagen, etc)',
Progreso INT COMMENT 'Progreso actual que se tiene del nivel por usuario y curso',

	PRIMARY KEY (Id_Nivel),
    CONSTRAINT FK_Id_Curso_N FOREIGN KEY (Id_Curso) REFERENCES Curso (Id_Curso),
    CONSTRAINT FK_FormaPago_N FOREIGN KEY (FormaPago) REFERENCES FormaPago (Id_FP)
);

DROP TABLE IF EXISTS Categoria;
CREATE TABLE Categoria(
Id_Cat INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla Categoría', #(PK)
Nombre VARCHAR(50) UNIQUE NOT NULL COMMENT 'Nombre de la categoría',
Descripcion VARCHAR(200) NOT NULL COMMENT 'Descripción de la categoría',
Fecha_Creacion DATE NOT NULL COMMENT 'Fecha de creación de la categoría',
Id_User INT COMMENT 'Identificador del usuario que creó la categoría', #(FK)

	PRIMARY KEY (Id_Cat),
    CONSTRAINT FK_Id_User_Cat FOREIGN KEY (Id_User) REFERENCES Usuario (Id_User)
);

DROP TABLE IF EXISTS TipoMensaje;
CREATE TABLE TipoMensaje(
Id_TipoM INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla TipoMensaje', #(PK)
Nombre VARCHAR(40) UNIQUE NOT NULL COMMENT 'Nombre del tipo de mensaje (Texto o multimedia)',

	PRIMARY KEY(Id_TipoM)
);

DROP TABLE IF EXISTS Sala;
CREATE TABLE Sala(
Id_Sala INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla Sala', #(PK)
Fecha_Creacion DATETIME COMMENT 'Fecha de creación de la sala',

	PRIMARY KEY (Id_Sala)
);

DROP TABLE IF EXISTS Mensaje;
CREATE TABLE Mensaje(
Id_Mensaje INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla Mensaje', #(PK)
Id_Sala INT COMMENT 'Identificador de la sala en el que se encuentran los mensajes, es decir, cual chat corresponde la conversación', #(FK)
Mensaje VARCHAR(500) NOT NULL COMMENT 'Contenido del mensaje',
Fecha DATETIME COMMENT 'Fecha y hora en la que se envió el mensaje',
Id_TipoM INT COMMENT 'Tipo de mensaje (texto o multimedia)', #(FK)
Id_User_Receptor INT COMMENT 'Campo del usuario que recibe un mensaje', #(FK)
Id_User_Remitente INT COMMENT 'Campo del usuario que envía un mensaje', #(FK)

	PRIMARY KEY(Id_Mensaje),
    CONSTRAINT FK_Id_Sala_M FOREIGN KEY (Id_Sala) REFERENCES Sala (Id_Sala),
    CONSTRAINT FK_Id_TipoM_M FOREIGN KEY (Id_TipoM) REFERENCES TipoMensaje (Id_TipoM),
    CONSTRAINT FK_Id_User_Receptor FOREIGN KEY (Id_User_Receptor) REFERENCES Usuario (Id_User),
    CONSTRAINT FK_Id_User_Remitente FOREIGN KEY (Id_User_Remitente) REFERENCES Usuario (Id_User)
);

DROP TABLE IF EXISTS Comentario;
CREATE TABLE Comentario(
Id_Comentario INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla comentario', #(PK)
Id_User INT COMMENT 'Identificador del usuario que realiza un comentario', #(FK)
Fecha DATETIME COMMENT 'Fecha y hora de la realización del comentario',
Contenido VARCHAR(180) NOT NULL COMMENT 'Mensaje que contiene el comentario', 
Id_Curso INT COMMENT 'Identificador del curso en donde se escribió el comentario', #(FK)

	PRIMARY KEY(Id_Comentario),
    CONSTRAINT FK_Id_User_Com FOREIGN KEY (Id_User) REFERENCES Usuario (Id_User),
    CONSTRAINT FK_Id_Curso_Com FOREIGN KEY (Id_Curso) REFERENCES Curso (Id_Curso)
);

DROP TABLE IF EXISTS Venta;
CREATE TABLE Venta(
No_Venta INT AUTO_INCREMENT COMMENT 'Número de venta de un curso (la venta es la inscripción al mismo)', #(PK)
Id_Curso INT COMMENT 'Identificador del curso al que se inscribe el usuario', #(FK)
Id_User INT COMMENT 'Identificador del usuario que se inscribe a un curso' , #(FK)
Id_FP INT COMMENT 'Forma de pago con la que se realiza la venta del curso', #(FK)
Total FLOAT COMMENT 'Total de la venta del curso',

	PRIMARY KEY(No_Venta),
    CONSTRAINT FK_Id_Curso_V FOREIGN KEY (Id_Curso) REFERENCES Curso (Id_Curso),
    CONSTRAINT FK_Id_User_V FOREIGN KEY (Id_User) REFERENCES Usuario (Id_User),
    CONSTRAINT FK_Id_FP_V FOREIGN KEY (Id_FP) REFERENCES FormaPago (Id_FP)
);

DROP TABLE IF EXISTS Venta;
CREATE TABLE CursoCategoria(
Id_CC INT AUTO_INCREMENT COMMENT 'Identificador autoincremental de la tabla CursoCategoría', #(PK)
Id_Curso INT COMMENT 'Identificador del curso', #(FK)
Id_Cat INT COMMENT 'Identificador de la categoría', #(FK)

	PRIMARY KEY(Id_CC),
    CONSTRAINT FK_Id_Curso_CC FOREIGN KEY (Id_Curso) REFERENCES Curso (Id_Curso),
    CONSTRAINT FK_Id_Categoria_CC FOREIGN KEY (Id_Cat) REFERENCES Categoria (Id_Cat)
);