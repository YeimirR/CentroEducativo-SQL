-- Crear la base de datos
CREATE DATABASE CentroEducativo;
GO

-- Usar la base de datos
USE CentroEducativo;
GO

-- Tabla Estudiantes
CREATE TABLE Estudiantes(
    IdEstudiante INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Tabla Profesores
CREATE TABLE Profesores(
    IdProfesor INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Especialidad VARCHAR(60) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Tabla Cursos
CREATE TABLE Cursos(
    IdCurso INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    IdProfesor INT NOT NULL,
    Contacto VARCHAR(10) NOT NULL,
    FOREIGN KEY (IdProfesor) REFERENCES Profesores(IdProfesor)
);

-- Tabla Inscripciones
CREATE TABLE Inscripciones(
    IdInscripcion INT PRIMARY KEY,
    IdEstudiante INT NOT NULL,
    IdCurso INT NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (IdEstudiante) REFERENCES Estudiantes(IdEstudiante),
    FOREIGN KEY (IdCurso) REFERENCES Cursos(IdCurso)
);

-- Tabla Biblioteca
CREATE TABLE Biblioteca(
    IdLibro INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Autor VARCHAR(50) NOT NULL,
    Fecha_Publicacion DATE NOT NULL,
    Stock INT NOT NULL
);

-- Tabla Cafeteria
CREATE TABLE Cafeteria(
    IdProducto INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);


--INSERT ESTUDIATES
INSERT INTO Estudiantes (IdEstudiante,Nombre,Apellido,Edad,Email) VALUES (
1, 'Carlos', 'Gómez', 20, 'carlosg@gmail.com'),
(2, 'Laura', 'Martínez', 22, 'lauram@gmail.com'),
(3, 'Pedro', 'Ramírez', 19, 'pedror@gmail.com'),
(4, 'Ana', 'López', 21, 'anal@gmail.com'),
(5, 'Luis', 'Fernández', 23, 'luisf@gmail.com'),
(6, 'Jeyferson', 'Ramirez', 21, 'Jeyfersonramirez@gmail.com');

--INSERT PROFESORES
INSERT INTO Profesores (IdProfesor,Nombre,Apellido,Especialidad,Email) VALUES (
1, 'María', 'Pérez', 'Matemáticas', 'mariap@gmail.com'),
(2, 'José', 'Santos', 'Lengua Española', 'joses@gmail.com'),
(3, 'Marta', 'Castillo', 'Informática', 'martac@gmail.com'),
(4, 'Daniela', 'Peralta', 'Biología', 'danielap@gmail.com'),
(5, 'Ricardo', 'González', 'Historia', 'ricardog@gmail.com'),
(6, 'Julia', 'Fernández', 'Programación', 'juliaf@gmail.com'),
(7, 'Carlos', 'Mora', 'Física', 'carlosm@gmail.com');

--INSERT CURSOS
INSERT INTO Cursos (IdCurso,Nombre,IdProfesor, Contacto) VALUES (
1, 'Álgebra', 1, '8091234567'),
(2, 'Ortografía', 2, '8092233445'),
(3, 'Bases de Datos', 3, '8093344556'),
(4, 'Estadística', 1, '8091122334'),
(5, 'Fundamentos de Redes', 3, '8095566778'),
(6, 'Programación en Python', 6, '8099988776');

--INSERT INSCRIPCIONES
INSERT INTO Inscripciones VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 1, '2025-06-02'),
(3, 3, 2, '2025-06-03'),
(4, 4, 3, '2025-06-04'),
(5, 1, 3, '2025-06-05'),
(6, 5, 4, '2025-06-06'),
(7, 2, 2, '2025-06-07'),
(8, 2, 5, '2025-06-10'),
(9, 4, 5, '2025-06-11'),
(10, 3, 6, '2025-06-12'),
(11, 5, 6, '2025-06-13');


--INSERT BIBLIOTECA
INSERT INTO Biblioteca (IdLibro,Nombre,Autor,Fecha_Publicacion,Stock) VALUES (
1, 'Cien Años de Soledad', 'Gabriel García Márquez', '1967-06-05', 10),
(2, 'Don Quijote de la Mancha', 'Miguel de Cervantes', '1605-01-16', 7),
(3, 'Introducción a la Programación', 'Carlos Ruiz', '2015-03-21', 5),
(4, 'El Principito', 'Antoine de Saint-Exupéry', '1943-04-06', 12),
(5, 'La Odisea', 'Homero', '0800-01-01', 6),
(6, 'Fundamentos de Redes', 'Andrew Tanenbaum', '2011-05-15', 8),
(7, 'Programación en Python', 'Mark Lutz', '2013-11-10', 5),
(8, 'Física Universitaria', 'Sears y Zemansky', '2008-02-01', 4),
(9, 'Química General', 'Raymond Chang', '2010-07-10', 6),
(10, 'Lengua Española Moderna', 'Ana María García', '2012-09-20', 7);

--INSERT CAFETERIA
INSERT INTO Cafeteria (IdProducto, Nombre, Precio,Stock) VALUES (
1, 'Empanada', 50.00, 30),
(2, 'Jugo Natural', 40.00, 25),
(3, 'Sandwich', 80.00, 15),
(4, 'Agua', 25.00, 40),
(5, 'Pizza Personal', 120.00, 10),
(6, 'Café', 35.00, 20),
(7, 'Galletas', 25.00, 50),
(8, 'Batida de Frutas', 60.00, 15),
(9, 'Hamburguesa', 130.00, 12),
(10, 'Yogurt', 45.00, 18),
(11, 'Pan con Queso', 55.00, 22);


USE CentroEducativo;

GO

SELECT * FROM Inscripciones WHERE IdEstudiante = 6;
SELECT * FROM Profesores;


--CREACION DE UPDATE

UPDATE Estudiantes
SET Nombre = 'Rosa' WHERE IdEstudiante = 2;

UPDATE Profesores
SET Apellido = 'Ramirez' WHERE IdProfesor = 6;

UPDATE Cursos
SET Contacto = '80095578856' WHERE IdCurso = 6;

UPDATE Biblioteca 
SET STOCK = 20 WHERE IdLibro = 4;

UPDATE Cafeteria
SET Precio = 55 WHERE IdProducto = 1;

UPDATE Inscripciones
SET IdCurso = 4 WHERE IdEstudiante = 5;

--CREACION DE INNER JOIN 
--Realizar una consulta con inner join que me busque el nombre, apellido y
--nombre del curso en el cual un estudiante este inscritos.

SELECT
E.Nombre, 
E.Apellido, 
C.Nombre 
FROM Estudiantes E INNER JOIN Inscripciones I 
ON E.IdEstudiante = I.IdEstudiante 
JOIN Cursos C ON C.IdCurso = I.IdCurso;

--Realizar una consulta con inner join que me busque el nombre del profesor
--que está en cada curso.

SELECT C.Nombre AS Curso,
P.Nombre as Profesor
 FROM Cursos C INNER JOIN Profesores p 
ON C.IdProfesor = P.IdProfesor;

--Creación de Left Join 
--Realizar una consulta con left join que busque todos los estudiantes sin
--importar si están inscritos en algún curso o no.

SELECT * FROM Estudiantes E LEFT JOIN Inscripciones I 
ON E.IdEstudiante = I.IdEstudiante;

-- Creación de funciones
--Crear una función que pueda obtener el total de inscripciones 

CREATE FUNCTION TotalInscripciones()
RETURNS INT
AS
BEGIN

DECLARE @Total INT;

SELECT @Total = COUNT(*) FROM Inscripciones;

RETURN @Total;

END;

SELECT dbo.TotalInscripciones() AS TotalDeInscripciones;

--Creación de Stored Procedures
--• Crear un procedure el cual pueda insertar un profesor.

CREATE PROCEDURE InsertarProfesor 

@IdProfesor INT,
@Nombre VARCHAR(50),
@Apellido VARCHAR(50),
@Especialidad VARCHAR(50),
@Email VARCHAR(50) 

AS
BEGIN
INSERT INTO Profesores (IdProfesor,Nombre,Apellido,Especialidad,Email)
VALUES (@IdProfesor,@Nombre,@Apellido,@Especialidad,@Email);

END;

EXEC InsertarProfesor
    @IdProfesor = 8,
    @Nombre = 'Juan',
    @Apellido = 'Perez',
    @Especialidad = 'Tecnologia',
    @Email = 'juan.perez@ejemplo.com';

--• Crear un procedure el cual pueda insertar un estudiante a un curso.

CREATE PROCEDURE InsertarPEstudiante
@idEstudiante INT,
@Nombre VARCHAR(50),
@Apellido VARCHAR(50),
@Edad INT,
@Email VARCHAR(50)

AS
BEGIN
INSERT INTO Estudiantes (IdEstudiante, Nombre,Apellido,Edad,Email)
VALUES (@idEstudiante,@Nombre,@Apellido,@Edad,@Email );

END;

EXEC InsertarPEstudiante
	@idEstudiante =7 ,
	@Nombre = 'Yeimi',
	@Apellido = 'Florentino',
	@Edad = 19,
	@Email = 'yeimiflorentino@gmail.com';


--• Crear un procedure el cual pueda insertar un libro a la biblioteca.

CREATE PROCEDURE InsertarLibro

@idLibro INT,
@Nombre VARCHAR(100),
@Autor VARCHAR(100),
@Fecha_Publicacion DATE,
@Stock INT

AS
BEGIN
INSERT INTO Biblioteca (IdLibro,Nombre,Autor,Fecha_Publicacion,Stock)
VALUES (@idLibro,@Nombre,@Autor,@Fecha_Publicacion,@Stock);

END;

EXEC InsertarLibro 
    @idLibro = 11,
    @Nombre = '1984',
    @Autor = 'George Orwell',
    @Fecha_Publicacion = '1949-06-08',
    @Stock = 5;

	--10.Creación de consultas con where
--• Buscar estudiantes que tenga apellido = Ramirez.
SELECT * FROM Estudiantes WHERE Apellido = 'Ramirez';

--• Buscar profesores de una INFORMATICA.
SELECT * FROM Profesores WHERE Especialidad = 'INFORMATICA';

--• Buscar cursos que contengan el nombre de programación.

SELECT * FROM Cursos WHERE Nombre = 'Programacion';




