# CentroEducativo-SQL
Proyecto de base de datos para un sistema de gestión educativa. Incluye tablas, relaciones, consultas SQL, funciones y procedimientos almacenados.
# 📚 Centro Educativo - Gestión de Base de Datos

Este proyecto representa la creación y gestión de una base de datos educativa llamada **CentroEducativo**, diseñada para manejar información de estudiantes, profesores, cursos, inscripciones, biblioteca y cafetería. Incluye funcionalidades de inserción de datos, consultas, funciones, procedimientos almacenados y uso de `JOIN`.

---

## 📌 Objetivo del Proyecto

El objetivo de este proyecto es construir una base de datos educativa funcional que permita:

- Registrar estudiantes, profesores y cursos.
- Controlar inscripciones de estudiantes a cursos.
- Administrar una biblioteca y productos de cafetería.
- Ejecutar operaciones avanzadas como `JOIN`, `UPDATE`, `FUNCIONES`, y `PROCEDIMIENTOS`.

---

## 🛠️ Tecnologías Usadas

- **SQL Server**: Motor de base de datos.
- **T-SQL**: Para la creación de estructuras, consultas y procedimientos.
- **SSMS (SQL Server Management Studio)** *(opcional)*: Para gestión visual.

---

## 📦 Contenido del Script

El script incluye:

- Creación de 6 tablas principales:
  - `Estudiantes`, `Profesores`, `Cursos`, `Inscripciones`, `Biblioteca`, `Cafeteria`
- Inserción de datos de ejemplo en cada tabla.
- Consultas con `INNER JOIN` y `LEFT JOIN`.
- Función para contar total de inscripciones.
- Procedimientos almacenados para insertar profesores, estudiantes y libros.
- Consultas de búsqueda con `WHERE`.

---

## ▶️ Instrucciones de Uso

1. Abre SQL Server Management Studio (SSMS) o tu herramienta favorita.
2. Copia y pega el contenido del script en una nueva consulta.
3. Ejecuta el script por secciones o completo (asegúrate de usar `GO` donde se indica).
4. Puedes ejecutar las consultas al final para verificar resultados:
   - `SELECT * FROM Estudiantes;`
   - `SELECT dbo.TotalInscripciones();`
   - `EXEC InsertarProfesor ...`

---

## 🔎 Ejemplos de Consultas Incluidas

```sql
-- Obtener nombre, apellido y curso de los estudiantes inscritos
SELECT E.Nombre, E.Apellido, C.Nombre 
FROM Estudiantes E
INNER JOIN Inscripciones I ON E.IdEstudiante = I.IdEstudiante
JOIN Cursos C ON C.IdCurso = I.IdCurso;

-- Buscar profesores con especialidad en Informática
SELECT * FROM Profesores WHERE Especialidad = 'INFORMATICA';
