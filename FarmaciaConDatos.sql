USE [master]
GO
/****** Object:  Database [Farmacia]    Script Date: 07/05/2019 12:55:05 ******/
CREATE DATABASE [Farmacia1]
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Farmacia1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Farmacia1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Farmacia1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Farmacia1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Farmacia1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Farmacia1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Farmacia1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Farmacia1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Farmacia1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Farmacia1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Farmacia1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Farmacia1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Farmacia1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Farmacia1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Farmacia1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Farmacia1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Farmacia1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Farmacia1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Farmacia1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Farmacia1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Farmacia1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Farmacia1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Farmacia1] SET  MULTI_USER 
GO
ALTER DATABASE [Farmacia1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Farmacia1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Farmacia1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Farmacia1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Farmacia1]
GO
/****** Object:  Schema [farmacia]    Script Date: 07/05/2019 12:55:05 ******/
CREATE SCHEMA [farmacia]
GO
/****** Object:  Table [farmacia].[Categoria]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Categoria](
	[categoriaId] [int] NOT NULL,
	[categoriaNombre] [varchar](255) NULL,
 CONSTRAINT [PK__Categori__6378C0C08E1734BE] PRIMARY KEY CLUSTERED 
(
	[categoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[Departamento]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Departamento](
	[depId] [int] NOT NULL,
	[depNombre] [varchar](255) NULL,
 CONSTRAINT [PK__Departam__00D7A2B3BAAA276B] PRIMARY KEY CLUSTERED 
(
	[depId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[DepartamentoInsumo]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[DepartamentoInsumo](
	[depInsumoId] [int] NOT NULL,
	[medDetId] [int] NULL,
	[depId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[Expediente]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[Expediente](
	[expId] [int] NOT NULL,
	[expNum] [int] NULL,
	[expFecha] [datetime] NULL,
	[pteId] [int] NULL,
	[expEstado] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[Ingreso]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[Ingreso](
	[ingId] [int] NOT NULL,
	[ingFecha] [datetime] NULL,
	[proveedorId] [int] NULL,
 CONSTRAINT [PK__Ingreso__127437E579981B0A] PRIMARY KEY CLUSTERED 
(
	[ingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[IngresoDetalle]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[IngresoDetalle](
	[ingDetId] [int] NOT NULL,
	[ingId] [int] NULL,
	[medDetId] [int] NULL,
	[ingDetCantidad] [int] NULL,
 CONSTRAINT [PK__IngresoD__906D8BDE1448FFD1] PRIMARY KEY CLUSTERED 
(
	[ingDetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[Laboratorio]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Laboratorio](
	[labId] [int] NULL,
	[labNombre] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[Medicamento]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Medicamento](
	[medId] [int] NOT NULL,
	[menNombre] [varchar](45) NULL,
 CONSTRAINT [PK__Medicame__2D4FA93CB72ECF09] PRIMARY KEY CLUSTERED 
(
	[medId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[MedicamentoDetalle]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[MedicamentoDetalle](
	[medDetId] [int] NOT NULL,
	[medId] [int] NULL,
	[medDetPresentacion] [varchar](255) NULL,
	[tipoId] [int] NULL,
	[medDetPosologia] [varchar](255) NULL,
	[medDetCantidad] [int] NULL,
	[medDetCatEmbarazo] [nchar](1) NULL,
	[Presentacion] [nchar](80) NULL,
 CONSTRAINT [PK__Medicame__666204F011408532] PRIMARY KEY CLUSTERED 
(
	[medDetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[Proeveedor]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Proeveedor](
	[proveedorId] [int] NOT NULL,
	[proveedorNombre] [varchar](255) NULL,
 CONSTRAINT [PK__Proeveed__8253255DC3593249] PRIMARY KEY CLUSTERED 
(
	[proveedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [farmacia].[Receta]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[Receta](
	[recId] [int] NOT NULL,
	[recFechaEntrega] [datetime] NULL,
	[recEstado] [int] NULL,
	[expId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[RecetaMedicamento]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [farmacia].[RecetaMedicamento](
	[recMedId] [int] NOT NULL,
	[recId] [int] NULL,
	[medDetId] [int] NULL,
	[recMedFecha] [datetime] NULL,
	[recMedEstado] [int] NULL,
	[recMedCantidad] [int] NULL,
 CONSTRAINT [PK__RecetaMe__EA40C6D03FA43813] PRIMARY KEY CLUSTERED 
(
	[recMedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [farmacia].[Tipo]    Script Date: 07/05/2019 12:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [farmacia].[Tipo](
	[tipoId] [int] NOT NULL,
	[tipoNombre] [varchar](255) NULL,
 CONSTRAINT [PK__Tipo__2AF602633988D8F6] PRIMARY KEY CLUSTERED 
(
	[tipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (1, N'Odontologia')
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (2, N'Emergencia')
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (3, N'Curacion')
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (4, N'Consulta Externa')
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (5, N'Pediatria')
INSERT [farmacia].[Departamento] ([depId], [depNombre]) VALUES (6, N'Cirugia')
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (1, 1, 1)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (2, 2, 1)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (3, 3, 4)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (4, 1, 2)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (5, 1, 1)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (6, 5, 4)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (7, 6, 2)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (8, 4, 5)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (9, 7, 7)
INSERT [farmacia].[DepartamentoInsumo] ([depInsumoId], [medDetId], [depId]) VALUES (10, 4, 8)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (1, CAST(0x0000AA4000000000 AS DateTime), 1)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (2, CAST(0x0000AA4000000000 AS DateTime), 2)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (3, CAST(0x0000AA4000000000 AS DateTime), 3)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (4, CAST(0x0000AA4100000000 AS DateTime), 4)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (5, CAST(0x0000AA4100000000 AS DateTime), 5)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (6, CAST(0x0000AA4100000000 AS DateTime), 6)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (7, CAST(0x0000AA4100000000 AS DateTime), 1)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (8, CAST(0x0000AA4200000000 AS DateTime), 1)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (9, CAST(0x0000AA4200000000 AS DateTime), 2)
INSERT [farmacia].[Ingreso] ([ingId], [ingFecha], [proveedorId]) VALUES (10, CAST(0x0000AA4200000000 AS DateTime), 8)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (1, 1, 1, 100)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (2, 2, 2, 10)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (3, 3, 3, 50)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (4, 4, 1, 40)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (5, 5, 2, 90)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (6, 6, 4, 1000)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (7, 7, 1, 450)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (8, 8, 7, 220)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (9, 9, 10, 100)
INSERT [farmacia].[IngresoDetalle] ([ingDetId], [ingId], [medDetId], [ingDetCantidad]) VALUES (10, 10, 5, 350)
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (1, N'Acetaminofen')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (2, N'Keterolaco')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (3, N'Solucion Salina')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (4, N'Ibuprofeno')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (5, N'Paracetamol')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (6, N'Acido Acetil Salicilico')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (7, N'Riboflabina')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (8, N'Amoxicilina')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (9, N'Penicilina')
INSERT [farmacia].[Medicamento] ([medId], [menNombre]) VALUES (10, N'Ampicilina')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (1, 1, N'pastillas', 1, N'1 cada 6 horas', 1000, N'A', N'50 mg                                                                           ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (2, 1, N'Inyeccion', 1, N'Dosis Unica', 100, N'A', N'5 cc                                                                            ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (3, 2, N'Pastillas', 1, N'1 cada 8 Horas', 1000, N'B', N'200 mg                                                                          ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (4, 3, N'Inyeccion', 1, N'1 al dìa por una semana', 50, N'C', N'3 cc                                                                            ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (5, 4, N'Pastillas', 1, N'1 cada 8 horas', 10000, N'A', N'500 mg                                                                          ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (6, 5, N'Inyeccion', 1, N'1 al dia por una semana', 101, N'A', N'5 cc                                                                            ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (7, 5, N'Pastillas', 4, N'1 cada 4 horas', 920, N'B', N'100 mg                                                                          ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (8, 6, N'pastilla', 1, N'1 cada 6 horas', 3200, N'C', N'100 mg                                                                          ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (9, 7, N'Inyeccion', 8, N'1 al dia maximo', 210, N'C', N'5 cc                                                                            ')
INSERT [farmacia].[MedicamentoDetalle] ([medDetId], [medId], [medDetPresentacion], [tipoId], [medDetPosologia], [medDetCantidad], [medDetCatEmbarazo], [Presentacion]) VALUES (10, 10, N'Inyeccion', 8, N'1 al dia durante 5 dias', 320, N'D', N'2 cc                                                                            ')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (1, N'Lab Lopes')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (2, N'Lab Paill')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (3, N'Lab RA')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (4, N'Medident ')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (5, N'La Roca')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (6, N'Laboratorios Suizos')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (7, N'FarmaTic')
INSERT [farmacia].[Proeveedor] ([proveedorId], [proveedorNombre]) VALUES (8, N'Vijosa')
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (1, CAST(0x0000AA4000000000 AS DateTime), 1, 1)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (2, CAST(0x0000AA4000000000 AS DateTime), 1, 2)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (3, CAST(0x0000AA4100000000 AS DateTime), 1, 3)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (4, CAST(0x0000AA4100000000 AS DateTime), 1, 1)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (5, CAST(0x0000AA4000000000 AS DateTime), 1, 1)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (6, CAST(0x0000AA4500000000 AS DateTime), 1, 4)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (7, CAST(0x0000AA6400000000 AS DateTime), 0, 1)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (8, CAST(0x0000AA6700000000 AS DateTime), 0, 5)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (9, CAST(0x0000AA6800000000 AS DateTime), 0, 7)
INSERT [farmacia].[Receta] ([recId], [recFechaEntrega], [recEstado], [expId]) VALUES (10, CAST(0x0000AA6D00000000 AS DateTime), 0, 5)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (1, 1, 4, CAST(0x0000AA4000000000 AS DateTime), 1, 10)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (2, 1, 1, CAST(0x0000AA4000000000 AS DateTime), 1, 25)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (3, 2, 1, CAST(0x0000AA4000000000 AS DateTime), 1, 12)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (4, 3, 4, CAST(0x0000AA4100000000 AS DateTime), 1, 10)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (5, 3, 8, CAST(0x0000AA4100000000 AS DateTime), 1, 12)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (6, 4, 2, CAST(0x0000AA4100000000 AS DateTime), 1, 10)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (7, 4, 1, CAST(0x0000AA4100000000 AS DateTime), 1, 5)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (8, 4, 9, CAST(0x0000AA4100000000 AS DateTime), 1, 30)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (9, 5, 2, CAST(0x0000AA4000000000 AS DateTime), 1, 20)
INSERT [farmacia].[RecetaMedicamento] ([recMedId], [recId], [medDetId], [recMedFecha], [recMedEstado], [recMedCantidad]) VALUES (10, 6, 5, CAST(0x0000AA4500000000 AS DateTime), 0, 32)
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (1, N'Analgesico')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (2, N'Antiacido')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (3, N'Anti Alergico')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (4, N'Antipiretico')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (5, N'Anti inflamatorio')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (6, N'Antiviral')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (7, N'Antiinfeccioso')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (8, N'Antibiotico')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (9, N'Antifungico')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (10, N'Antiparasitario')
INSERT [farmacia].[Tipo] ([tipoId], [tipoNombre]) VALUES (11, N'Mucolitico')
USE [master]
GO
ALTER DATABASE [Farmacia] SET  READ_WRITE 
GO
