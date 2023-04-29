Create database WainoSolutions;

create table Software
(

Nombre_software varchar(200) primary key,
Descripcion varchar(max) not null,
Precio int

);

create table Clientes
(
Nombre varchar(100) primary key,
Apellido varchar(100) not null,
Celular varchar(12)not null


);

create table Pedidos
(
Nombre_Cliente varchar(100) primary key,
Software varchar(200) not null,
Fecha_compra varchar(12) not null

);

create table Suplidores
(
Nombre varchar(100) primary key,
Software varchar(200) not null,
Fecha_entrega varchar(12) not null
);

create table Empleados
(
Id int primary key,
Nombre_Empleados varchar(200) not null,
Apellido_Empleados varchar(200) not null,
celular_Empleados varchar(10)
);


ALTER TABLE Pedidos
ADD CONSTRAINT fk_pedidos_clientes
FOREIGN KEY (Nombre_Cliente)
REFERENCES Clientes(Nombre)


INSERT INTO Software( Nombre_software,Descripcion, Precio)
VALUES 
('Windows', 'Sistema operativo para cualquier tarea', 1000),
('Linux', 'Sistema operativo Open Source para cualquier necesidad',2000 ),
('Microsoft 365', 'Sotfware perfecto para oficinas y estudiantes', 4000),
('Sql server ', 'Software para gestionar base de datos de forma local y en la nube',8000 ),
('Android', 'Software para moviles basados en linux', 3000),
('Google Drive', 'Espacio en nube',9000),
('Microsoft visual studio code', 'Ide para programadores',12000 ),
('Microsoft Visual studio', 'Ide para programadores con tareas mas pesadas',10000 ),
('Any desk ', 'Software de conexion remota ', 20000)


INSERT INTO Clientes(Nombre,Apellido,Celular)
VALUES 
('Jose', 'Paredes', '809-543-1234'),
('Lindo', 'Martínez', '809-455-5678'),
('Magalis', 'Sánchez', '809-675-9012'),
('Ricardo', 'Espinal', '809-235-3456'),
('Juan', 'Guzamn', '809-555-7390'),
('María', 'Palmar', '809-555-4545'),
('Franklin', 'Rodriguez', '809-235-6789'),
('Josefina', 'Gutierrez', '809-567-0123'),
('Esperanza', 'Gonzales', '809-890-4567'),
('Ervin', 'perez', '809-995-8901')

INSERT INTO Pedidos(Nombre_cliente,Software,Fecha_compra)
VALUES
('Jose', 'Sql server','12-11-13'),
('Lindo', 'Windows 11','1-2-15'),
('Magalis', 'Office 365','1-3-17'),
('Ricardo', 'Linux','5-5-18'),
('Juan','Andorid','5-5-15' ),
('María', 'IOS','4-6-15'),
('Franklin','Any desk','1-2-14'),
('Josefina', 'Sql server','2-3-19'),
('Esperanza','Microsoft Visual Studio','3-6-10' ),
('Ervin', 'IOS','12-6-15')


INSERT INTO Empleados(Id,Nombre_Empleados,Apellido_Empleados,celular_Empleados)
VALUES

('1','Ana', 'González', '8092345678'),
('2','Juan', 'Santos', '8093456789'),
('3','María', 'Pérez', '8094567890'),
('4','Carlos', 'García', '8095678901'),
('5','Laura', 'Hernández', '8096789012'),
('6','Pedro', 'Martínez', '8097890123'),
('7','Mónica', 'López', '8098901234'),
('8','Jorge', 'Fernández', '8099012345'),
('9','Carolina', 'Romero', '8090123456'),
('10','Diego', 'Ruiz', '8091234567')


INSERT INTO Suplidores(Nombre,Software,Fecha_entrega)
VALUES
 ('Microsoft','Sql server', '5-6-2020'),
 ('Apple','IOS', '4-1-2021'),
 ('Linux','Kali linux', '03-01-2022'),
 ('Google','Android', '04-01-2022'),
 ('Any','Any desk', '6-6-2023'),
('Razer','Razer Deathheader', '6-2-2024'),
 ('Acer','Oficce 365', '8-2-2024'),
 ('Argoon','Visual studio', '7-4-2024'),
 ('SF','Azure', '9-1-2024'),
('IBM','Omeprazol', '10-01-2024')


Select * from Empleados
Select * from Clientes
Select * from Pedidos
Select * from Software
Select * from Suplidores
