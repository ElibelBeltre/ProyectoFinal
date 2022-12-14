USE [master]
GO
/****** Object:  Database [ProyectoFinal]    Script Date: 14/08/2022 11:12:35 a.m. ******/
CREATE DATABASE [ProyectoFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoFinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoFinal] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoFinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoFinal] SET QUERY_STORE = OFF
GO
USE [ProyectoFinal]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[CategoriaId] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[NombreEmpresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[NumTelefono] [varchar](14) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles de Pedidos]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles de Pedidos](
	[PedidoId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [varchar](50) NULL,
	[PrecioUnitario] [float] NULL,
 CONSTRAINT [PK_Detalles de Pedidos] PRIMARY KEY CLUSTERED 
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] NOT NULL,
	[NombreEmpleado] [varchar](50) NOT NULL,
	[Cargo] [varchar](20) NOT NULL,
	[NumeroTelf] [varchar](14) NULL,
	[Correo] [varchar](30) NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sueldo] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[PedidosId] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[CodigoOrden] [int] NOT NULL,
	[FechaEntrega] [date] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[PedidosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [int] NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[CodigoProducto] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[Cantidad] [varchar](20) NULL,
	[CategoriaId] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 14/08/2022 11:12:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[TransporteId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[PedidoId] [int] NOT NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[TransporteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([CategoriaId], [Nombre]) VALUES (1, N'Material Natural')
INSERT [dbo].[Categoria] ([CategoriaId], [Nombre]) VALUES (2, N'Material Sintetico')
GO
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (1, N'Maicon Lowenski', N'Facol S.A', N'Av 27 feb ', N'8095213480')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (2, N'Luis Garza', N'Protela S.A', N'Av Independencia', N'8095213496')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (3, N'Anthony Dalmasi', N'Creditex', N'Av Juan P. Duarte', N'8095213345')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (4, N'Solanyi Castro', N'Topy Top', N'Av Mexico', N'8095218767')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (5, N'Omar Vidal', N'Inca Tops', N'Av Venezuela', N'8095213458')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (6, N'Anabel Martinez', N'Teximax', N'Av Maximo Gomez', N'8095216493')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (7, N'Joan Jimenez', N'Hilaturas', N'Av Italia', N'8095213480')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (8, N'Norberto Gallardo', N'Encanto Text', N'Av Nuñez de Caceres', N'8095212136')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (9, N'Jobeth Diaz', N'Sauleda S.A', N'Av Anacaona', N'8095217841')
INSERT [dbo].[Clientes] ([ClienteId], [NombreCliente], [NombreEmpresa], [Direccion], [NumTelefono]) VALUES (10, N'Joe Maria', N'Borgers S.A', N'Av Abraham Lincoln', N'8295210932')
GO
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (1, 4, N'5Kg', 200.56)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (2, 5, N'10Kg', 300)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (3, 7, N'25Kg', 59.8)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (4, 1, N'12Kg', 99.84)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (5, 10, N'30Kg', 45.89)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (6, 2, N'23Kg', 150.89)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (7, 3, N'45Kg', 80.99)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (8, 6, N'8Kg', 69.99)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (9, 8, N'14Kg', 63.98)
INSERT [dbo].[Detalles de Pedidos] ([PedidoId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (10, 9, N'50Kg', 45.89)
GO
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (1, N'Juansito Guzman', N'Chofer', N'8297894538', N'juansito09@gmail.com', N'c/74 Los Mamelles', 40, 15000)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (2, N'Feliciano Patricio', N'Chofer', N'8498764504', N'patricio@gamil.com', N'c/1era Los Padros', 38, 15000)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (3, N'Alicia Perez', N'Jefa Almacen', N'8091234501', N'aliperez44@gmail.com', N'apart 8 las caobas ', 35, 65784)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (4, N'Jeison Rodriguez', N'Despachador', N'8298764590', N'rodriguez02@gmail.com', N'apart 1 las caobas', 39, 63670)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (5, N'Carlos Luna', N'Estibador', N'8297653412', N'luna24@gmail.com', N'c/2 av 27 febrero', 40, 58900)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (6, N'Sofia Vargas', N'Contador Recepcion', N'8390654784', N'vargas22@gmail.com', N'aprt 1 Enrriquillo', 40, 45500)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (7, N'Elianna Sanchez', N'Carretillero', N'8298764500', N'sanchez@gmail.com', N'apar 24 av independencia', 39, 60501)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (8, N'Angel Beltre', N'Operario de pedidos', N'8298763309', N'beltre24@gamil.com', N'c/9 Sabana Perdida', 45, 58351)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (9, N'Wagner Abreu', N'Pers. Vigilacia', N'8297843984', NULL, N'c/15 Los Mina ', 50, 13500)
INSERT [dbo].[Empleados] ([EmpleadoId], [NombreEmpleado], [Cargo], [NumeroTelf], [Correo], [Direccion], [Edad], [Sueldo]) VALUES (10, N'Wilder Carvajal', N'Pers. Mantenimiento', N'8296134567', NULL, N'c/23 Los Alcarrizos', 48, 35000)
GO
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (1, 1, 8, 110, CAST(N'2022-10-15' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (2, 2, 8, 111, CAST(N'2022-09-25' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (3, 3, 4, 112, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (4, 1, 8, 113, CAST(N'2022-08-22' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (5, 8, 8, 114, CAST(N'2022-04-07' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (6, 10, 4, 115, CAST(N'2022-07-05' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (7, 5, 7, 116, CAST(N'2022-10-04' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (8, 4, 7, 117, CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (9, 6, 8, 118, CAST(N'2022-05-23' AS Date))
INSERT [dbo].[Pedidos] ([PedidosId], [ClienteId], [EmpleadoId], [CodigoOrden], [FechaEntrega]) VALUES (10, 9, 4, 119, CAST(N'2022-08-07' AS Date))
GO
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (1, N'Algodon', 101, 99.84, N'1Kg', 1)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (2, N'Seda', 102, 150.89, N'1Kg', 1)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (3, N'Lino ', 103, 80.99, N'1Kg', 1)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (4, N'Lana', 104, 200.56, N'1Kg', 1)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (5, N'Cuero', 105, 300, N'1Kg', 1)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (6, N'Poliester', 106, 69.99, N'1Kg', 2)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (7, N'Lycra', 107, 59.8, N'1Kg', 2)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (8, N'Nylon', 108, 63.98, N'1Kg', 2)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (9, N'Viscosa', 109, 25.9, N'1Kg', 2)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [CodigoProducto], [Precio], [Cantidad], [CategoriaId]) VALUES (10, N'Elastano', 110, 45.89, N'1Kg', 2)
GO
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (210, 1, 1, 1)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (211, 1, 2, 2)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (212, 1, 3, 3)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (213, 1, 4, 4)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (214, 1, 5, 5)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (215, 2, 6, 6)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (216, 2, 7, 7)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (217, 2, 8, 8)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (218, 2, 9, 9)
INSERT [dbo].[Transporte] ([TransporteId], [EmpleadoId], [ClienteId], [PedidoId]) VALUES (219, 2, 10, 10)
GO
ALTER TABLE [dbo].[Detalles de Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Detalles de Pedidos_Pedidos] FOREIGN KEY([PedidoId])
REFERENCES [dbo].[Pedidos] ([PedidosId])
GO
ALTER TABLE [dbo].[Detalles de Pedidos] CHECK CONSTRAINT [FK_Detalles de Pedidos_Pedidos]
GO
ALTER TABLE [dbo].[Detalles de Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Detalles de Pedidos_Productos] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoId])
GO
ALTER TABLE [dbo].[Detalles de Pedidos] CHECK CONSTRAINT [FK_Detalles de Pedidos_Productos]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes1] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([ClienteId])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes1]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Empleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Empleados]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categoria] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categoria] ([CategoriaId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categoria]
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Clientes] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([ClienteId])
GO
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Clientes]
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Empleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Empleados]
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinal] SET  READ_WRITE 
GO
