USE [CONSULTORIO RANGEL]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Doctor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] DROP CONSTRAINT [FK_Doctor_Doctor]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefonos]') AND type in (N'U'))
DROP TABLE [dbo].[Telefonos]
GO
/****** Object:  Table [dbo].[Nombre]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nombre]') AND type in (N'U'))
DROP TABLE [dbo].[Nombre]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Fecha_ingreso]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fecha_ingreso]') AND type in (N'U'))
DROP TABLE [dbo].[Fecha_ingreso]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
DROP TABLE [dbo].[Email]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domicilio]') AND type in (N'U'))
DROP TABLE [dbo].[Domicilio]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
DROP TABLE [dbo].[Doctor]
GO
/****** Object:  Table [dbo].[Codigo_Postal]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Codigo_Postal]') AND type in (N'U'))
DROP TABLE [dbo].[Codigo_Postal]
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calle]') AND type in (N'U'))
DROP TABLE [dbo].[Calle]
GO
/****** Object:  Table [dbo].[Apellido_Paterno]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apellido_Paterno]') AND type in (N'U'))
DROP TABLE [dbo].[Apellido_Paterno]
GO
/****** Object:  Table [dbo].[Apellido_Materno]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apellido_Materno]') AND type in (N'U'))
DROP TABLE [dbo].[Apellido_Materno]
GO
USE [master]
GO
/****** Object:  Database [CONSULTORIO RANGEL]    Script Date: 24/09/2018 20:55:14 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'CONSULTORIO RANGEL')
DROP DATABASE [CONSULTORIO RANGEL]
GO
/****** Object:  Database [CONSULTORIO RANGEL]    Script Date: 24/09/2018 20:55:14 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'CONSULTORIO RANGEL')
BEGIN
CREATE DATABASE [CONSULTORIO RANGEL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CONSULTORIO RANGEL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CONSULTORIO RANGEL.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CONSULTORIO RANGEL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CONSULTORIO RANGEL_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CONSULTORIO RANGEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET  MULTI_USER 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CONSULTORIO RANGEL', N'ON'
GO
USE [CONSULTORIO RANGEL]
GO
/****** Object:  Table [dbo].[Apellido_Materno]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apellido_Materno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Apellido_Materno](
	[ID_Apellido_Materno] [int] NOT NULL,
	[Apellido_Materno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Apellido_Materno] PRIMARY KEY CLUSTERED 
(
	[ID_Apellido_Materno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Apellido_Paterno]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apellido_Paterno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Apellido_Paterno](
	[ID_Apellido_Paterno] [int] NOT NULL,
	[Apellido_Paterno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Apellido_Paterno] PRIMARY KEY CLUSTERED 
(
	[ID_Apellido_Paterno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Calle](
	[ID_Calle] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Calle] PRIMARY KEY CLUSTERED 
(
	[ID_Calle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Codigo_Postal]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Codigo_Postal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Codigo_Postal](
	[ID_Codigo_Postal] [int] NOT NULL,
	[Codigo_Postal] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ID_Codigo_Postal] PRIMARY KEY CLUSTERED 
(
	[ID_Codigo_Postal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctor](
	[ID_Doctor] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[ID_Cedula] [int] NOT NULL,
	[ID_Especialidad] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID_Doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domicilio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domicilio](
	[ID_Domicilio] [int] NOT NULL,
	[ID_Calle] [int] NOT NULL,
	[ID_Municipio] [int] NOT NULL,
	[ID_Codigo_Postal] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Domicilio] PRIMARY KEY CLUSTERED 
(
	[ID_Domicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Email]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Email](
	[ID_Email] [int] NOT NULL,
	[Email] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[ID_Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [int] NOT NULL,
	[ID_Puesto] [tinyint] NOT NULL,
	[ID_Nombre] [int] NOT NULL,
	[ID_Apellido_Paterno] [int] NOT NULL,
	[ID_Apellido_Materno] [int] NOT NULL,
	[ID_Domicilio] [int] NOT NULL,
	[ID_Fecha_ingreso] [int] NOT NULL,
	[ID_Email] [int] NULL,
	[ID_Telefono] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Fecha_ingreso]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fecha_ingreso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fecha_ingreso](
	[ID_Fecha_ingreso] [int] NOT NULL,
	[Fecha_ingreso] [date] NOT NULL,
 CONSTRAINT [PK_Fecha_ingreso] PRIMARY KEY CLUSTERED 
(
	[ID_Fecha_ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Municipio](
	[ID_Municipio] [int] NOT NULL,
	[Municipio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ID_Municipio] PRIMARY KEY CLUSTERED 
(
	[ID_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nombre]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nombre]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nombre](
	[ID_Nombre] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ID_Nombre] PRIMARY KEY CLUSTERED 
(
	[ID_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 24/09/2018 20:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefonos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefonos](
	[ID_Telefono] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
 CONSTRAINT [PK_Telefonos] PRIMARY KEY CLUSTERED 
(
	[ID_Telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Doctor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Doctor] FOREIGN KEY([ID_Doctor])
REFERENCES [dbo].[Doctor] ([ID_Doctor])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Doctor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Doctor]
GO
USE [master]
GO
ALTER DATABASE [CONSULTORIO RANGEL] SET  READ_WRITE 
GO
