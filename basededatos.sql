--base de datos

-- Crear la base de datos
CREATE DATABASE BibliotecaDB;
GO

-- Usar la base de datos
USE BibliotecaDB;
GO

-- Crear tabla Usuario
CREATE TABLE Usuario (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Direccion NVARCHAR(200),
    Telefono NVARCHAR(20),
    Estado BIT
);

-- Crear tabla Libro
CREATE TABLE Libro (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Titulo NVARCHAR(200),
    Autor NVARCHAR(100),
    Disponible BIT
);

-- Crear tabla Prestamo
CREATE TABLE Prestamo (
    Id INT PRIMARY KEY IDENTITY(1,1),
    LibroId INT FOREIGN KEY REFERENCES Libro(Id),
    UsuarioId INT FOREIGN KEY REFERENCES Usuario(Id),
    FechaPrestamo DATETIME,
    FechaDevolucion DATETIME NULL
);

--los libros que agrege 

USE BibliotecaDB;

INSERT INTO Libro (Titulo, Autor, Disponible)
VALUES 
('Cien años de soledad', 'Gabriel García Márquez', 1),
('1984', 'George Orwell', 1),
('El Principito', 'Antoine de Saint-Exupéry', 1),
('IT', 'Stephen King', 0); -- Este es el único que aparecerá en la tabla de prestados

