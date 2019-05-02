Create DATABASE Farmacia
use Farmacia
Create Schema farmacia
-- Comienxo literal A
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Medicamento]') AND type IN ('U'))
	DROP TABLE [farmacia].[Medicamento]
GO

CREATE TABLE [farmacia].[Medicamento] (
  [medId] int  NOT NULL,
  [menNombre] varchar(45) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Medicamento] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Medicamento
-- ----------------------------
ALTER TABLE [farmacia].[Medicamento] ADD CONSTRAINT [PK__Medicame__2D4FA93CB72ECF09] PRIMARY KEY CLUSTERED ([medId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[MedicamentoDetalle]') AND type IN ('U'))
	DROP TABLE [farmacia].[MedicamentoDetalle]
GO

CREATE TABLE [farmacia].[MedicamentoDetalle] (
  [medDetId] int  NOT NULL,
  [medId] int  NULL,
  [medDetPresentacion] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipoId] int  NULL,
  [labId] int  NULL,
  [categoriaId] int  NULL,
  [medDetPosologia] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [medDetCantidad] int  NULL
)
GO

ALTER TABLE [farmacia].[MedicamentoDetalle] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table MedicamentoDetalle
-- ----------------------------
ALTER TABLE [farmacia].[MedicamentoDetalle] ADD CONSTRAINT [PK__Medicame__666204F011408532] PRIMARY KEY CLUSTERED ([medDetId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for MedDetCat
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[MedDetCat]') AND type IN ('U'))
	DROP TABLE [farmacia].[MedDetCat]
GO

CREATE TABLE [farmacia].[MedDetCat] (
  [detCatId] int  NOT NULL,
  [categoriaId] int  NULL,
  [medDetId] int  NULL
)
GO

ALTER TABLE [farmacia].[MedDetCat] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table MedDetCat
-- ----------------------------
ALTER TABLE [farmacia].[MedDetCat] ADD CONSTRAINT [PK__MedDetCa__1507E8EE9BD3E295] PRIMARY KEY CLUSTERED ([detCatId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for MedDetTipo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[MedDetTipo]') AND type IN ('U'))
	DROP TABLE [farmacia].[MedDetTipo]
GO

CREATE TABLE [farmacia].[MedDetTipo] (
  [medTipoId] int  NOT NULL,
  [medDetId] int  NULL,
  [tipoId] int  NULL
)
GO

ALTER TABLE [farmacia].[MedDetTipo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table MedDetTipo
-- ----------------------------
ALTER TABLE [farmacia].[MedDetTipo] ADD CONSTRAINT [PK__MedDetTi__8743804C8AB36E04] PRIMARY KEY CLUSTERED ([medTipoId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for Laboratorio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Laboratorio]') AND type IN ('U'))
	DROP TABLE [farmacia].[Laboratorio]
GO

CREATE TABLE [farmacia].[Laboratorio] (
  [labId] int  NULL,
  [labNombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Laboratorio] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for Tipo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Tipo]') AND type IN ('U'))
	DROP TABLE [farmacia].[Tipo]
GO

CREATE TABLE [farmacia].[Tipo] (
  [tipoId] int  NOT NULL,
  [tipoNombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Tipo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Tipo
-- ----------------------------
ALTER TABLE [farmacia].[Tipo] ADD CONSTRAINT [PK__Tipo__2AF602633988D8F6] PRIMARY KEY CLUSTERED ([tipoId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for Categoria
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Categoria]') AND type IN ('U'))
	DROP TABLE [farmacia].[Categoria]
GO

CREATE TABLE [farmacia].[Categoria] (
  [categoriaId] int  NOT NULL,
  [categoriaNombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Categoria] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Categoria
-- ----------------------------
ALTER TABLE [farmacia].[Categoria] ADD CONSTRAINT [PK__Categori__6378C0C08E1734BE] PRIMARY KEY CLUSTERED ([categoriaId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for Proeveedor
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Proeveedor]') AND type IN ('U'))
	DROP TABLE [farmacia].[Proeveedor]
GO

CREATE TABLE [farmacia].[Proeveedor] (
  [proveedorId] int  NOT NULL,
  [proveedorNombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Proeveedor] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Proeveedor
-- ----------------------------
ALTER TABLE [farmacia].[Proeveedor] ADD CONSTRAINT [PK__Proeveed__8253255DC3593249] PRIMARY KEY CLUSTERED ([proveedorId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for Ingreso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Ingreso]') AND type IN ('U'))
	DROP TABLE [farmacia].[Ingreso]
GO

CREATE TABLE [farmacia].[Ingreso] (
  [ingId] int  NOT NULL,
  [ingFecha] datetime  NULL,
  [proveedorId] int  NULL
)
GO

ALTER TABLE [farmacia].[Ingreso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Ingreso
-- ----------------------------
ALTER TABLE [farmacia].[Ingreso] ADD CONSTRAINT [PK__Ingreso__127437E579981B0A] PRIMARY KEY CLUSTERED ([ingId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for IngresoDetalle
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[IngresoDetalle]') AND type IN ('U'))
	DROP TABLE [farmacia].[IngresoDetalle]
GO

CREATE TABLE [farmacia].[IngresoDetalle] (
  [ingDetId] int  NOT NULL,
  [ingId] int  NULL,
  [medDetId] int  NULL,
  [ingDetCantidad] int  NULL
)
GO

ALTER TABLE [farmacia].[IngresoDetalle] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table IngresoDetalle
-- ----------------------------
ALTER TABLE [farmacia].[IngresoDetalle] ADD CONSTRAINT [PK__IngresoD__906D8BDE1448FFD1] PRIMARY KEY CLUSTERED ([ingDetId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for Departamento
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Departamento]') AND type IN ('U'))
	DROP TABLE [farmacia].[Departamento]
GO

CREATE TABLE [farmacia].[Departamento] (
  [depId] int  NOT NULL,
  [depNombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [farmacia].[Departamento] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Departamento
-- ----------------------------
ALTER TABLE [farmacia].[Departamento] ADD CONSTRAINT [PK__Departam__00D7A2B3BAAA276B] PRIMARY KEY CLUSTERED ([depId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for DepartamentoInsumo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[DepartamentoInsumo]') AND type IN ('U'))
	DROP TABLE [farmacia].[DepartamentoInsumo]
GO

CREATE TABLE [farmacia].[DepartamentoInsumo] (
  [depInsumoId] int  NOT NULL,
  [medDetId] int  NULL,
  [depId] int  NULL
)
GO

ALTER TABLE [farmacia].[DepartamentoInsumo] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for Expediente
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Expediente]') AND type IN ('U'))
	DROP TABLE [farmacia].[Expediente]
GO

CREATE TABLE [farmacia].[Expediente] (
  [expId] int  NOT NULL,
  [expNum] int  NULL,
  [expFecha] datetime  NULL,
  [pteId] int  NULL,
  [expEstado] int  NULL
)
GO

ALTER TABLE [farmacia].[Expediente] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for Receta
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Receta]') AND type IN ('U'))
	DROP TABLE [farmacia].[Receta]
GO

CREATE TABLE [farmacia].[Receta] (
  [recId] int  NOT NULL,
  [recFechaEntrega] datetime  NULL,
  [recEstado] int  NULL,
  [expId] int  NULL
)
GO

ALTER TABLE [farmacia].[Receta] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for RecetaMedicamento
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[RecetaMedicamento]') AND type IN ('U'))
	DROP TABLE [farmacia].[RecetaMedicamento]
GO

CREATE TABLE [farmacia].[RecetaMedicamento] (
  [recMedId] int  NOT NULL,
  [recId] int  NULL,
  [medDetId] int  NULL,
  [recMedFecha] datetime  NULL,
  [recMedEstado] int  NULL,
  [recMedCantidad] int  NULL
)
GO

ALTER TABLE [farmacia].[RecetaMedicamento] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table RecetaMedicamento
-- ----------------------------
ALTER TABLE [farmacia].[RecetaMedicamento] ADD CONSTRAINT [PK__RecetaMe__EA40C6D03FA43813] PRIMARY KEY CLUSTERED ([recMedId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- FIN LITERAL A --

-- COMIENZO LITERAL B --
INSERT INTO [farmacia].[Categoria] VALUES (N'1', N'Analgesico no esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'2', N'Analgesico Esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'3', N'Analgesico Local')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'4', N'Analgesico no esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'5', N'Analgesico Esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'6', N'Analgesico Local')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'7', N'Analgesico Local')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'8', N'Analgesico no esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'9', N'Analgesico Esteroideo')
GO

INSERT INTO [farmacia].[Categoria] VALUES (N'10', N'Analgesico Local')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'1', N'Odontologia')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'2', N'Consulta Externa')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'3', N'Pediatria')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'4', N'Cirugia')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'5', N'Emergencia')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'6', N'Farmacia')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'7', N'Ginecologia')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'8', N'Terapias')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'9', N'Consulta General')
GO

INSERT INTO [farmacia].[Departamento] VALUES (N'10', N'Fosalud')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'1', N'1', N'1')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'2', N'2', N'2')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'3', N'3', N'3')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'4', N'4', N'4')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'5', N'5', N'5')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'6', N'6', N'6')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'7', N'7', N'7')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'8', N'8', N'8')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'9', N'9', N'9')
GO

INSERT INTO [farmacia].[DepartamentoInsumo] VALUES (N'10', N'10', N'10')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'1', N'1', N'2019-01-01 00:00:00.000', N'1', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'2', N'2', N'2019-02-01 00:00:00.000', N'2', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'3', N'3', N'2019-02-01 00:00:00.000', N'3', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'4', N'4', N'2019-02-01 00:00:00.000', N'4', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'5', N'5', N'2019-02-01 00:00:00.000', N'5', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'6', N'6', N'2019-02-01 00:00:00.000', N'6', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'7', N'7', N'2019-02-01 00:00:00.000', N'7', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'8', N'8', N'2019-02-01 00:00:00.000', N'8', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'9', N'9', N'2019-02-01 00:00:00.000', N'10', N'1')
GO

INSERT INTO [farmacia].[Expediente] VALUES (N'10', N'10', N'2019-02-01 00:00:00.000', N'10', N'0')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'1', N'Laboratorio')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'2', N'Laboratorio2')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'3', N'Laboratorio3')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'4', N'Laboratorio4')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'5', N'Laboratorio5')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'6', N'Laboratorio6')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'7', N'Laboratorio7')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'8', N'Laboratorio8')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'9', N'Laboratorio9')
GO

INSERT INTO [farmacia].[Laboratorio] VALUES (N'10', N'Laboratorio10')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'1', N'Medicamento1')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'2', N'Medicamento2')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'3', N'Medicamento3')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'4', N'Medicameno4')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'5', N'Medicamento5')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'6', N'Medicamento6')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'7', N'Medicamento7')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'8', N'medicamento 8')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'9', N'Meicamento9')
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'10', N'Medicamento 10')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'1', N'Provvedor')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'2', N'proveedor 2')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'3', N'Proveedor 3')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'4', N'Proveedor 4')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'5', N'Proveedor 5')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'6', N'Proveedor 6')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'7', N'Proveedor 7')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'8', N'Proveedor 8')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'9', N'Proveedor 9')
GO

INSERT INTO [farmacia].[Proeveedor] VALUES (N'10', N'Proveedor 10')
GO

-- FIN LITERAL B --

-- LITERAL D --
	SELECT TOP (1000) [expId]
      ,[expNum]
      ,[expFecha]
      ,[pteId]
      ,[expEstado]
  FROM [Farmacia].[farmacia].[Expediente]
  WHERE CAST([expFecha] AS nchar(225)) >= '2019-04-01' AND CAST([expFecha] AS nchar(225)) <= '2019-05-01'

  SELECT TOP (1000) [expId]
      ,[expNum]
      ,[expFecha]
      ,[pteId]
      ,[expEstado]
  FROM [Farmacia].[farmacia].[Expediente]
  WHERE CAST([expFecha] AS nchar(225)) >= '2018-10-25' AND CAST([expFecha] AS nchar(225)) <= '2019-04-25'
-- LITERAL D --

-- punto 8 --
-- ----------------------------
-- Table structure for Auditoria
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[farmacia].[Auditoria]') AND type IN ('U'))
	DROP TABLE [farmacia].[Auditoria]
GO

CREATE TABLE [farmacia].[Auditoria] (
  [atId] int  NOT NULL,
  [atUsuario] nchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [atFecha] datetime  NULL,
  [atNombreTabla] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [atAccion] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [atIdTaba] int  NULL
)
GO

ALTER TABLE [farmacia].[Auditoria] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table Auditoria
-- ----------------------------
ALTER TABLE [farmacia].[Auditoria] ADD CONSTRAINT [PK__Auditori__5B38D4C12D75A574] PRIMARY KEY CLUSTERED ([atId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

INSERT INTO [farmacia].[Medicamento] VALUES (N'11', N'Paracetamol'),(N'12', N'Acetaminofen')
	GO

	INSERT INTO [farmacia].[Auditoria] VALUES (N'1', N'Javier', N'2019-04-03', N'Medicamento', N'Insert', N'11')
	GO

UPDATE [farmacia].[Medicamento] SET menNombre='Ibuprofeno' WHERE medId=11
	GO

INSERT INTO [farmacia].[Auditoria] VALUES (N'2', N'Javier', N'2019-04-03', N'Medicamento', N'UPDATE', N'11')
	GO

UPDATE [farmacia].[Medicamento] SET menNombre='Keterolaco' WHERE medId=12
	GO
INSERT INTO [farmacia].[Auditoria] VALUES (N'3', N'Javier', N'2019-04-03', N'Medicamento', N'UPDATE', N'12')
	GO


SELECT medId,menNombre FROM [farmacia].[Medicamento]

DELETE [farmacia].[Medicamento] WHERE medId=11 OR medId=12

INSERT INTO [farmacia].[Auditoria] VALUES (N'4', N'Javier', N'2019-04-03', N'Medicamento', N'DELETE', N'11')
	GO

SELECT * FROM [farmacia].[Auditoria]

--punto 9--
  SELECT  [atId]
      ,[atUsuario]
      ,[atFecha]
      ,[atNombreTabla]
      ,[atAccion]
      ,[atIdTaba]
  FROM [Farmacia].[farmacia].[Auditoria]
  WHERE atFecha BETWEEN '20181025' AND '20190425'

  SELECT  [atId]
      ,[atUsuario]
      ,[atFecha]
      ,[atNombreTabla]
      ,[atAccion]
      ,[atIdTaba]
  FROM [Farmacia].[farmacia].[Auditoria]
  WHERE atFecha BETWEEN '20190401' AND '20190501'
