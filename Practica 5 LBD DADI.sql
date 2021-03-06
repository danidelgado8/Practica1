USE [ConsultorioMedico]
GO
/****** Object:  Index [NumPacExp]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Paciente_Expediente]') AND name = N'NumPacExp')
DROP INDEX [NumPacExp] ON [dbo].[Paciente_Expediente]
GO
/****** Object:  Index [NumPaciente]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND name = N'NumPaciente')
DROP INDEX [NumPaciente] ON [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Receta]') AND type in (N'U'))
DROP TABLE [dbo].[Receta]
GO
/****** Object:  Table [dbo].[Paciente_Expediente]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente_Expediente]') AND type in (N'U'))
DROP TABLE [dbo].[Paciente_Expediente]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[NumeroReceta]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NumeroReceta]') AND type in (N'U'))
DROP TABLE [dbo].[NumeroReceta]
GO
/****** Object:  Table [dbo].[NombrePaciente]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NombrePaciente]') AND type in (N'U'))
DROP TABLE [dbo].[NombrePaciente]
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expediente]') AND type in (N'U'))
DROP TABLE [dbo].[Expediente]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Consulta]') AND type in (N'U'))
DROP TABLE [dbo].[Consulta]
GO
USE [master]
GO
/****** Object:  Database [ConsultorioMedico]    Script Date: 06/10/2018 8:13:52 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ConsultorioMedico')
DROP DATABASE [ConsultorioMedico]
GO
/****** Object:  Database [ConsultorioMedico]    Script Date: 06/10/2018 8:13:52 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ConsultorioMedico')
BEGIN
CREATE DATABASE [ConsultorioMedico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConsultorioMedico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ConsultorioMedico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ConsultorioMedico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ConsultorioMedico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConsultorioMedico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorioMedico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConsultorioMedico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConsultorioMedico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET RECOVERY FULL 
GO
ALTER DATABASE [ConsultorioMedico] SET  MULTI_USER 
GO
ALTER DATABASE [ConsultorioMedico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConsultorioMedico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConsultorioMedico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ConsultorioMedico', N'ON'
GO
USE [ConsultorioMedico]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Consulta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Consulta](
	[Id_Consulta] [int] NULL,
	[Fecha_Cita] [datetime] NULL,
	[Id_Paciente] [int] NULL,
	[Id_Doctor] [int] NULL,
	[Id_Receta] [int] NULL,
	[Id_Consultorio] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expediente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expediente](
	[Id_Expediente] [int] NULL,
	[Id_Paciente] [int] NULL,
	[Altura] [float] NOT NULL,
	[Peso] [float] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NombrePaciente]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NombrePaciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NombrePaciente](
	[Nombre] [varchar](20) NULL,
	[Apellidos] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NumeroReceta]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NumeroReceta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NumeroReceta](
	[Id_Receta] [int] NULL,
	[Id_Paciente] [int] NULL,
	[Medicinas] [text] NULL,
	[Fecha] [datetime] NULL,
	[Id_Doctor] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paciente](
	[Id_Paciente] [int] NULL,
	[Nombre] [varchar](20) NULL,
	[Apellidos] [varchar](20) NULL,
	[Edad] [int] NULL,
	[Domicilio] [text] NULL,
	[Id_PacienteExpediente] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente_Expediente]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente_Expediente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paciente_Expediente](
	[Id_Paciente] [int] NULL,
	[Id_Expediente] [int] NULL,
	[Id_PacienteExpediente] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 06/10/2018 8:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Receta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Receta](
	[Id_Receta] [int] NULL,
	[Id_Paciente] [int] NULL,
	[Medicinas] [text] NULL,
	[Fecha] [datetime] NULL,
	[Id_Doctor] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (1, CAST(0x0000A96A000E1607 AS DateTime), 1, 1, 1, 1)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (2, CAST(0x0000A96A000E1607 AS DateTime), 2, 2, 2, 2)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (3, CAST(0x0000A96A000E160D AS DateTime), 3, 3, 3, 3)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (4, CAST(0x0000A96A000E160D AS DateTime), 4, 4, 4, 4)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (5, CAST(0x0000A96A000E160D AS DateTime), 5, 5, 5, 5)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (6, CAST(0x0000A96A000E160D AS DateTime), 6, 6, 6, 6)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (7, CAST(0x0000A96A000E160D AS DateTime), 7, 7, 7, 7)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (8, CAST(0x0000A96A000E160D AS DateTime), 8, 8, 8, 8)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (8, CAST(0x0000A96A000E160D AS DateTime), 9, 9, 9, 9)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (10, CAST(0x0000A96A000E160D AS DateTime), 10, 10, 10, 10)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (11, CAST(0x0000A96A00AE1005 AS DateTime), 11, 11, 11, 15)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (12, CAST(0x0000A96A000E1610 AS DateTime), 12, 12, 12, 12)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (13, CAST(0x0000A96A000E1610 AS DateTime), 13, 13, 13, 13)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (14, CAST(0x0000A96A000E1610 AS DateTime), 14, 14, 14, 14)
INSERT [dbo].[Consulta] ([Id_Consulta], [Fecha_Cita], [Id_Paciente], [Id_Doctor], [Id_Receta], [Id_Consultorio]) VALUES (15, CAST(0x0000A96A00AE1533 AS DateTime), 15, 15, 15, 15)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (1, 1, 1.55, 48.5)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (2, 2, 1.7, 52)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (3, 3, 1.5, 40.35)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (4, 4, 1.63, 64.2)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (5, 5, 1.73, 84.398)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (6, 6, 1.87, 72.5)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (7, 7, 1.65, 56.24)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (8, 8, 1.68, 65.9)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (8, 9, 1.68, 64.7)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (10, 10, 1.67, 68)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (11, 11, 1.59, 45.67)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (12, 12, 1.64, 68.379)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (13, 13, 1.56, 76.577)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (14, 14, 1.57, 46.657)
INSERT [dbo].[Expediente] ([Id_Expediente], [Id_Paciente], [Altura], [Peso]) VALUES (15, 15, 1.67, 69.948)
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Daniela Ivon', N'Delgado Avalos')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Evelyn', N'Delgado Avalos')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Fernando', N'Delgado Avalos')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Veronica', N'Avalos Medellin')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Julio Cesar', N'Diaz')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Angel', N'Vergara Gatica')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Diana', N'Perez Huerta')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Andrea', N'Flores Garza')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Andrea', N'Flores Garza')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Sabrina', N'Facundo')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Melanie Aidee', N'Martinez')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Luis Carlos', N'Quintana')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Daniel', N'Muñoz Guerrero')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Astrid Adonai', N'Ortiz')
INSERT [dbo].[NombrePaciente] ([Nombre], [Apellidos]) VALUES (N'Brenda', N'Avalos Medellin')
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (1, 1, N'Simvastatina', CAST(0x0000A96A000CA63B AS DateTime), 1)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (2, 2, N'Aspirina', CAST(0x0000A96A000CDC18 AS DateTime), 2)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (3, 3, N'Omeprazol', CAST(0x0000A96A000CDC18 AS DateTime), 3)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (4, 4, N'Ramipril', CAST(0x0000A96A000CDC18 AS DateTime), 4)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (5, 5, N'Amlodipina', CAST(0x0000A96A000CDC18 AS DateTime), 5)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (6, 6, N'Paracetamol', CAST(0x0000A96A000CDC18 AS DateTime), 6)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (7, 7, N'Lansoprazol', CAST(0x0000A96A000CDC18 AS DateTime), 7)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (8, 8, N'Hidrocloruro', CAST(0x0000A96A000CDC27 AS DateTime), 8)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (8, 9, N'Genoprazol', CAST(0x0000A96A000CDC27 AS DateTime), 9)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (10, 5, N'Furosemida', CAST(0x0000A96A000CDC27 AS DateTime), 10)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (11, 11, N'Ibuprofeno', CAST(0x0000A96A000CDC2A AS DateTime), 11)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (12, 12, N'Diclofenaco', CAST(0x0000A96A000CDC2A AS DateTime), 12)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (13, 13, N'Dipirona', CAST(0x0000A96A000CDC2C AS DateTime), 13)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (14, 14, N'Amoxicilina', CAST(0x0000A96A000CDC2C AS DateTime), 14)
INSERT [dbo].[NumeroReceta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (15, 15, N'Nimesulida', CAST(0x0000A96A000CDC2C AS DateTime), 15)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (1, N'Daniela Ivon', N'Delgado Avalos', 18, N'Fortaleza #747 Monterrey', 1)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (2, N'Evelyn', N'Delgado Avalos', 15, N'Fortaleza #646 Monterrey', 2)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (3, N'Fernando', N'Delgado Avalos', 10, N'Fortaleza #747 Monterrey', 3)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (4, N'Veronica', N'Avalos Medellin', 45, N'Fortaleza #646 Monterrey', 4)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (5, N'Julio Cesar', N'Diaz', 45, N'Fortaleza #747 Monterrey', 5)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (6, N'Angel', N'Vergara Gatica', 21, N'Acapulco #6800 Guerrero', 6)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (7, N'Diana', N'Perez Huerta', 18, N'Italia #119 Cumbres San Agustin', 7)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (8, N'Andrea', N'Flores Garza', 19, N'Italia #118 Cumbres San Agustin', 9)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (8, N'Andrea', N'Flores Garza', 19, N'Italia #118 Cumbres San Agustin', 8)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (10, N'Sabrina', N'Facundo', 18, N'Fortaleza #878 Barrio Chapultepec', 10)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (11, N'Melanie Aidee', N'Martinez', 19, N'Saturno #114 Barrio Estrella', 11)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (12, N'Luis Carlos', N'Quintana', 20, N'Imposta #354 Mitras Centro', 12)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (13, N'Daniel', N'Muñoz Guerrero', 19, N'Jaramillo #2213 Colonia Mirasol', 13)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (14, N'Astrid Adonai', N'Ortiz', 27, N'Mar de filipinas #8558 Cedros', 14)
INSERT [dbo].[Paciente] ([Id_Paciente], [Nombre], [Apellidos], [Edad], [Domicilio], [Id_PacienteExpediente]) VALUES (15, N'Brenda', N'Avalos Medellin', 39, N'Ixtapa #777 Saltillo Coahuila', 15)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (1, 1, 1)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (2, 2, 2)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (3, 3, 3)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (4, 4, 4)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (5, 5, 5)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (6, 6, 6)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (7, 7, 7)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (8, 8, 8)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (8, 9, 9)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (10, 10, 10)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (11, 11, 7)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (12, 12, 12)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (13, 13, 13)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (14, 14, 14)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (15, 15, 15)
INSERT [dbo].[Paciente_Expediente] ([Id_Paciente], [Id_Expediente], [Id_PacienteExpediente]) VALUES (1, 1, 1)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (1, 1, N'Simvastatina', CAST(0x0000A96A000CA63B AS DateTime), 1)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (2, 2, N'Aspirina', CAST(0x0000A96A000CDC18 AS DateTime), 2)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (3, 3, N'Omeprazol', CAST(0x0000A96A000CDC18 AS DateTime), 3)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (4, 4, N'Ramipril', CAST(0x0000A96A000CDC18 AS DateTime), 4)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (5, 5, N'Amlodipina', CAST(0x0000A96A000CDC18 AS DateTime), 5)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (6, 6, N'Paracetamol', CAST(0x0000A96A000CDC18 AS DateTime), 6)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (7, 7, N'Lansoprazol', CAST(0x0000A96A000CDC18 AS DateTime), 7)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (8, 8, N'Hidrocloruro', CAST(0x0000A96A000CDC27 AS DateTime), 8)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (8, 9, N'Genoprazol', CAST(0x0000A96A000CDC27 AS DateTime), 9)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (10, 5, N'Furosemida', CAST(0x0000A96A000CDC27 AS DateTime), 10)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (11, 11, N'Ibuprofeno', CAST(0x0000A96A000CDC2A AS DateTime), 11)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (12, 12, N'Diclofenaco', CAST(0x0000A96A000CDC2A AS DateTime), 12)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (13, 13, N'Dipirona', CAST(0x0000A96A000CDC2C AS DateTime), 13)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (14, 14, N'Amoxicilina', CAST(0x0000A96A000CDC2C AS DateTime), 14)
INSERT [dbo].[Receta] ([Id_Receta], [Id_Paciente], [Medicinas], [Fecha], [Id_Doctor]) VALUES (15, 15, N'Nimesulida', CAST(0x0000A96A000CDC2C AS DateTime), 15)
/****** Object:  Index [NumPaciente]    Script Date: 06/10/2018 8:13:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND name = N'NumPaciente')
CREATE NONCLUSTERED INDEX [NumPaciente] ON [dbo].[Paciente]
(
	[Id_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NumPacExp]    Script Date: 06/10/2018 8:13:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Paciente_Expediente]') AND name = N'NumPacExp')
CREATE NONCLUSTERED INDEX [NumPacExp] ON [dbo].[Paciente_Expediente]
(
	[Id_PacienteExpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ConsultorioMedico] SET  READ_WRITE 
GO
