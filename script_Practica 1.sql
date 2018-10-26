USE [Consultorio_Medico]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 07/09/2018 11:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
DROP TABLE [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[PrecioMedicinas]    Script Date: 07/09/2018 11:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrecioMedicinas]') AND type in (N'U'))
DROP TABLE [dbo].[PrecioMedicinas]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 07/09/2018 11:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Medicinas]    Script Date: 07/09/2018 11:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Medicinas]') AND type in (N'U'))
DROP TABLE [dbo].[Medicinas]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 07/09/2018 11:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Especialidades]') AND type in (N'U'))
DROP TABLE [dbo].[Especialidades]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 07/09/2018 11:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Especialidades]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Especialidades](
	[vNombreEspecialidad] [varchar](50) NULL,
	[iLogo] [image] NULL,
	[dtHorarioEspecialidad] [datetime] NULL,
	[iNumConsultorio] [int] NULL,
	[vNombrePersonal] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicinas]    Script Date: 07/09/2018 11:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Medicinas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Medicinas](
	[vNombreMedicinas] [varchar](50) NOT NULL,
	[mCosto] [money] NOT NULL,
	[bCaducidad] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 07/09/2018 11:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paciente](
	[iIdPaciente] [int] NOT NULL,
	[vNombre] [varchar](50) NULL,
	[iEdad] [int] NULL,
	[tAntecendentes] [text] NULL,
	[cStatus] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrecioMedicinas]    Script Date: 07/09/2018 11:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrecioMedicinas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PrecioMedicinas](
	[iIdPrecioMedicina] [int] NULL,
	[fPrecioMedicina] [float] NULL,
	[iCantidadMedicina] [int] NULL,
	[TotalPrecio]  AS ([fPrecioMedicina]*[iCantidadMedicina])
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 07/09/2018 11:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Servicios](
	[vNombreServicio] [varchar](50) NULL,
	[dtHorarioServicio] [datetime] NULL,
	[vClasificacion] [varchar](50) NULL,
	[mCostoServicio] [money] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
