USE [master]
GO
/****** Object:  Database [ABAA]    Script Date: 16/9/2019 10:14:17 ******/
CREATE DATABASE [ABAA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABAA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ABAA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ABAA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ABAA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ABAA] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABAA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ABAA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ABAA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ABAA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ABAA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ABAA] SET ARITHABORT OFF 
GO
ALTER DATABASE [ABAA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ABAA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ABAA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ABAA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ABAA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ABAA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ABAA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ABAA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ABAA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ABAA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ABAA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ABAA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ABAA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ABAA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ABAA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ABAA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ABAA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ABAA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ABAA] SET  MULTI_USER 
GO
ALTER DATABASE [ABAA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ABAA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ABAA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ABAA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ABAA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ABAA] SET QUERY_STORE = OFF
GO
USE [ABAA]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ABAA]
GO
/****** Object:  User [root]    Script Date: 16/9/2019 10:14:17 ******/
CREATE USER [root] FOR LOGIN [root] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ABAA_TB_Departamento]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Departamento](
	[Depto_Id_Pk] [varchar](45) NOT NULL,
	[Depto_Nomb] [varchar](45) NOT NULL,
	[Depto_Id_Dire_FK] [varchar](45) NOT NULL,
	[Depto_Jefe_FK] [int] NOT NULL,
 CONSTRAINT [pkDepartamento] PRIMARY KEY CLUSTERED 
(
	[Depto_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_Direccion]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Direccion](
	[Dire_Id_Pk] [varchar](45) NOT NULL,
	[Dire_Nomb] [varchar](45) NOT NULL,
 CONSTRAINT [pkDireccion] PRIMARY KEY CLUSTERED 
(
	[Dire_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_Estado]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Estado](
	[Esta_Id_PK] [int] NOT NULL,
	[Esta_Nombre] [varchar](45) NOT NULL,
	[Esta_Tipo] [varchar](45) NOT NULL,
 CONSTRAINT [pkEstado] PRIMARY KEY CLUSTERED 
(
	[Esta_Id_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_Funcionario]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Funcionario](
	[Func_Id_Pk] [int] NOT NULL,
	[Func_Cedu] [varchar](45) NOT NULL,
	[Func_Nomb] [varchar](20) NOT NULL,
	[Func_Ape1] [varchar](45) NOT NULL,
	[Func_Ape2] [varchar](45) NOT NULL,
	[Func_Pues] [varchar](45) NOT NULL,
	[Func_Id_Depa_FK] [varchar](45) NOT NULL,
 CONSTRAINT [pkFuncionario] PRIMARY KEY CLUSTERED 
(
	[Func_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_OCProveedor]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_OCProveedor](
	[OCProy_OC_ID] [int] NOT NULL,
	[OCProy_Prove_ID] [int] NOT NULL,
 CONSTRAINT [pkOCProveedor] PRIMARY KEY CLUSTERED 
(
	[OCProy_OC_ID] ASC,
	[OCProy_Prove_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_OCProyecto]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_OCProyecto](
	[OCProy_OC_ID] [int] NOT NULL,
	[OCProy_Proy_ID] [int] NOT NULL,
 CONSTRAINT [pkOCProyecto] PRIMARY KEY CLUSTERED 
(
	[OCProy_OC_ID] ASC,
	[OCProy_Proy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_Permisos]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Permisos](
	[Perm_Id_Pk] [int] NOT NULL,
	[Perm_Desc] [varchar](45) NOT NULL,
 CONSTRAINT [pkPermisos] PRIMARY KEY CLUSTERED 
(
	[Perm_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_Rol]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_Rol](
	[Rol_Id_Pk] [int] NOT NULL,
	[Rol_Desc] [varchar](45) NOT NULL,
 CONSTRAINT [pkRol] PRIMARY KEY CLUSTERED 
(
	[Rol_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_RolxPermiso]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_RolxPermiso](
	[RolxPer_Permiso] [int] NOT NULL,
	[RolxPer_Rol] [int] NOT NULL,
 CONSTRAINT [pkRolxPermiso] PRIMARY KEY CLUSTERED 
(
	[RolxPer_Permiso] ASC,
	[RolxPer_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABAA_TB_USUARIO]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABAA_TB_USUARIO](
	[Usua_Id_PK] [int] NOT NULL,
	[Usua_Cont] [varchar](45) NOT NULL,
	[Usua_Cedu_FK] [int] NOT NULL,
	[Usua_Rol_FK] [int] NOT NULL,
	[Usua_Esta_FK] [int] NOT NULL,
 CONSTRAINT [pkUsuario] PRIMARY KEY CLUSTERED 
(
	[Usua_Id_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatArticulo]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatArticulo](
	[Cat_Id_Pk] [varchar](30) NOT NULL,
	[Cat_SubC_Fk] [varchar](30) NULL,
	[Cat_Desc] [varchar](100) NULL,
 CONSTRAINT [pkCatArticulo] PRIMARY KEY CLUSTERED 
(
	[Cat_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAC_Proyectos]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAC_Proyectos](
	[Proy_Id_PK] [int] NOT NULL,
	[Proy_Desc] [varchar](45) NOT NULL,
 CONSTRAINT [pkProyectos] PRIMARY KEY CLUSTERED 
(
	[Proy_Id_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Articulo]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Articulo](
	[Art_Id_Pk] [int] NOT NULL,
	[Art_Precio] [float] NULL,
	[Art_Cod_Cont_Gast] [varchar](45) NULL,
	[Art_Cod_Cont_Exis] [varchar](45) NULL,
	[Art_Cod_Cont_Sal] [varchar](45) NULL,
	[Art_FVenc] [date] NULL,
	[Art_FIngr] [date] NULL,
	[Art_FSali] [date] NULL,
	[Art_Maxi] [float] NULL,
	[Art_Mini] [float] NULL,
	[Art_EsAc] [bit] NULL,
	[Art_Limi_Depa] [float] NULL,
	[Art_Cant_Rest] [float] NULL,
	[Art_Cant] [float] NULL,
	[Art_Mode] [varchar](45) NULL,
	[Art_Nume_Seri] [varchar](45) NULL,
	[Art_Marc] [varchar](45) NULL,
	[Art_Nume_Fact] [varchar](45) NULL,
	[Art_Depa_Fk] [varchar](45) NULL,
	[Art_Orde_Comp_FK] [int] NULL,
	[Art_Codi_Presup] [varchar](30) NULL,
	[Art_Codi_Cont] [varchar](30) NULL,
	[Art_Soli_Arti] [int] NULL,
	[Art_Codi_Cat_SICO_FK] [varchar](30) NULL,
	[Art_Descrip] [varchar](80) NULL,
 CONSTRAINT [pkArticulo] PRIMARY KEY CLUSTERED 
(
	[Art_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Bodega]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Bodega](
	[Bode_Id_Pk] [int] NOT NULL,
	[Bode_Ubic] [varchar](45) NULL,
	[Bode_Desc] [varchar](45) NULL,
	[Bode_Enca] [int] NULL,
 CONSTRAINT [pkBodega] PRIMARY KEY CLUSTERED 
(
	[Bode_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Contable]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Contable](
	[Cnt_Id_Pk] [varchar](30) NOT NULL,
	[Cnt_Desc] [varchar](45) NULL,
 CONSTRAINT [pkFamiliaContable] PRIMARY KEY CLUSTERED 
(
	[Cnt_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Existencia]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Existencia](
	[Exis_Id_Bode] [int] NOT NULL,
	[Exis_Id_Arti] [int] NOT NULL,
	[Exis_Cant] [float] NULL,
 CONSTRAINT [pkExistencia] PRIMARY KEY CLUSTERED 
(
	[Exis_Id_Bode] ASC,
	[Exis_Id_Arti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Familia]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Familia](
	[Fami_Id_Pk] [varchar](30) NOT NULL,
	[Fami_Desc] [varchar](45) NULL,
 CONSTRAINT [pkFamilia] PRIMARY KEY CLUSTERED 
(
	[Fami_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_OrdenCompra]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_OrdenCompra](
	[OC_Id_PK] [int] NOT NULL,
	[OC_Fecha] [date] NULL,
	[OC_Prec_Tota] [float] NULL,
	[OC_Cant] [int] NULL,
	[OC_Unid_Medi] [varchar](45) NULL,
	[OC_Codi] [int] NULL,
	[OC_Desc] [varchar](45) NULL,
	[OC_Prec_Por_Arti] [float] NULL,
	[OC_Mode] [varchar](45) NULL,
	[OC_Seri] [varchar](45) NULL,
	[OC_Marc] [varchar](45) NULL,
	[OC_Esta] [int] NULL,
 CONSTRAINT [pkOrdenCompra] PRIMARY KEY CLUSTERED 
(
	[OC_Id_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Proveedor]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Proveedor](
	[Prove_Id_Prove_PK] [int] NOT NULL,
	[Prove_Nomb] [varchar](45) NOT NULL,
 CONSTRAINT [pkProveedor] PRIMARY KEY CLUSTERED 
(
	[Prove_Id_Prove_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_Soli_Arti]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_Soli_Arti](
	[Sol_Arti_Id_Pk] [int] NOT NULL,
	[Sol_Arti_Cant] [float] NULL,
	[Sol_Arti_Vist_Jefe] [bit] NULL,
	[Sol_Arti_Vist_Ti] [bit] NULL,
	[Sol_Arti_Fech_Soli] [date] NULL,
	[Sol_Arti_Id_Depa_Fk] [varchar](45) NULL,
	[Sol_Arti_Id_Func_Fk] [int] NULL,
	[Sol_Arti_Id_Esta_FK] [int] NULL,
 CONSTRAINT [pkSolicitudArt] PRIMARY KEY CLUSTERED 
(
	[Sol_Arti_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sbo_TB_SubFamilia]    Script Date: 16/9/2019 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sbo_TB_SubFamilia](
	[SubFami_Id_Pk] [varchar](30) NOT NULL,
	[SubFami_CodF_Fk] [varchar](30) NULL,
	[SubFami_Desc] [varchar](100) NULL,
 CONSTRAINT [pkSubFamilia] PRIMARY KEY CLUSTERED 
(
	[SubFami_Id_Pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'0', N'Remuneraciones')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'1', N'Servicios')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'2', N'Materiales y Suministros')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'3', N'Intereses y Comisiones')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'4', N'Activos Financieros')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'5', N'Bienes Duraderos')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'6', N'Transferencias Corrientes')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'7', N'Transferencias de Capital')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'8', N'Amortizacion')
INSERT [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk], [Fami_Desc]) VALUES (N'9', N'Cuentas Especiales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.01.01', N'1', N'Alquiler de edificios, locales y terrenos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.01.02', N'1', N'Alquiler de maquinaria, equipo y mobiliario')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.01.03', N'1', N'Alquiler de equipo de cómputo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.01.04', N'1', N'Alquiler y derechos para telecomunicaciones')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.01.99', N'1', N'Otros alquileres')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.02.01', N'1', N'Servicio de agua y alcantarillado')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.02.02', N'1', N'Servicio de energía eléctrica  ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.02.03', N'1', N'Servicio de correo  ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.02.04', N'1', N'Servicio de telecomunicaciones')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.02.99', N'1', N'Otros servicios básicos  ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.01', N'1', N'Información')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.02', N'1', N'Publicidad y propaganda')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.03', N'1', N'Impresión, encuadernación y otros ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.04', N'1', N'Transporte de bienes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.05', N'1', N'Servicio aduanero')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.06', N'1', N'Comisiones y gastos por servicios financieros y comerciales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.03.07', N'1', N'Servicio de transferencia electrónica de información')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.01', N'1', N'Servicios médicos y de laboratorio')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.02', N'1', N'Servicios jurídicos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.03', N'1', N'Servicios de ingeniería')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.04', N'1', N'Servicios en ciencias económicas y sociales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.05', N'1', N'Servicios de desarrollo de sistemas informáticos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.06', N'1', N'Servicios generales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.04.99', N'1', N'Otros servicios de gestión y apoyo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.05.01', N'1', N'Transporte dentro del país')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.05.02', N'1', N'Viáticos dentro del país')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.05.03', N'1', N'Transporte en el exterior')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.05.04', N'1', N'Viáticos en el exterior')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.06.01', N'1', N'Seguros')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.06.02', N'1', N'Reaseguros')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.06.03', N'1', N'Obligaciones por contratos de seguros')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.07.01', N'1', N'Actividades de capacitación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.07.02', N'1', N'Actividades protocolarias y sociales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.07.03', N'1', N'Gastos de representación institucional')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.01', N'1', N'Mantenimiento de edificios, locales y terrenos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.02', N'1', N'Mantenimiento de vías de comunicación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.03', N'1', N'Mantenimiento de instalaciones y otras obras')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.04', N'1', N'Mantenimiento y reparación de maquinaria y equipo de producción ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.05', N'1', N'Mantenimiento y reparación de equipo de transporte ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.06', N'1', N'Mantenimiento y reparación de equipo de comunicación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.07', N'1', N'Mantenimiento y reparación de equipo y mobiliario de oficina ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.08', N'1', N'Mantenimiento y reparación de equipo de cómputo y sistemas de información')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.08.99', N'1', N'Mantenimiento y reparación de otros equipos ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.09.01', N'1', N'Impuestos sobre ingresos y utilidades')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.09.02', N'1', N'Impuestos sobre bienes inmuebles')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.09.03', N'1', N'Impuestos de patentes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.09.99', N'1', N'Otros impuestos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.01', N'1', N'Servicios de regulación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.02', N'1', N'Intereses moratorios y multas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.03', N'1', N'Gastos de oficinas en el exterior')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.04', N'1', N'Gastos de misiones especiales en el exterior')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.05', N'1', N'Deducibles')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'1.99.99', N'1', N'Otros servicios no especificados')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.01.01', N'2', N'Combustibles y lubricantes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.01.02', N'2', N'Productos farmacéuticos y medicinales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.01.03', N'2', N'Productos veterinarios')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.01.04', N'2', N'Tintas, pinturas y diluyentes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.01.99', N'2', N'Otros productos químicos y conexos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.02.01', N'2', N'Productos pecuarios y otras especies')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.02.02', N'2', N'Productos agroforestales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.02.03', N'2', N'Alimentos y bebidas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.02.04', N'2', N'Alimentos para animales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.01', N'2', N'Materiales y productos metálicos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.02', N'2', N'Materiales y productos minerales y asfálticos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.03', N'2', N'Madera y sus derivados')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.04', N'2', N'Materiales y productos eléctricos, telefónicos y de cómputo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.05', N'2', N'Materiales y productos de vidrio')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.06', N'2', N'Materiales y productos de plástico')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.03.99', N'2', N'Otros materiales y productos de uso en la construcción y mantenimiento')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.04.01', N'2', N'Herramientas e instrumentos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.04.02', N'2', N'Repuestos y accesorios')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.05.01', N'2', N'Materia prima')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.05.02', N'2', N'Productos terminados')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.05.03', N'2', N'Energía eléctrica')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.05.99', N'2', N'Otros bienes para la producción y comercialización')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.01', N'2', N'Útiles y materiales de oficina y cómputo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.02', N'2', N'Útiles y materiales médicos, hospitalario y de investigación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.03', N'2', N'Productos de papel, cartón e impresos ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.04', N'2', N'Textiles y vestuario')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.05', N'2', N'Útiles y materiales de limpieza')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.06', N'2', N'Útiles y materiales de resguardo y seguridad')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.07', N'2', N'Útiles y materiales de cocina y comedor')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'2.99.99', N'2', N'Otros útiles, materiales y suministros diversos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.01', N'5', N'Maquinaria y equipo para la producción')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.02', N'5', N'Equipo de transporte')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.03', N'5', N'Equipo de comunicación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.04', N'5', N'Equipo y mobiliario de oficina')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.05', N'5', N'Equipo y programas de cómputo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.06', N'5', N'Equipo sanitario, de laboratorio e investigación')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.07', N'5', N'Equipo y mobiliario educacional, deportivo y recreativo')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.01.99', N'5', N'Maquinaria, equipo y mobiliario diverso')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.01', N'5', N'Edificios')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.02', N'5', N'Vías de comunicación terrestre')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.03', N'5', N'Vías férreas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.04', N'5', N'Obras marítimas y fluviales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.05', N'5', N'Aeropuertos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.06', N'5', N'Obras urbanísticas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.07', N'5', N'Instalaciones')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.02.99', N'5', N'Otras construcciones, adicciones y mejoras')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.03.01', N'5', N'Terrenos ')
GO
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.03.02', N'5', N'Edificios preexistentes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.03.99', N'5', N'Otras obras preexistentes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.99.01', N'5', N'Semovientes')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.99.02', N'5', N'Piezas y obras de colección')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.99.03', N'5', N'Bienes intangibles')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'5.99.99', N'5', N'Otros bienes duraderos')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.02.01', N'6', N'Becas a funcionarios')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.02.02', N'6', N'Becas a terceras personas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.02.03', N'6', N'Ayudas a funcionarios ')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.02.99', N'6', N'Otras transferencias a personas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.03.01', N'6', N'Prestaciones legales')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.03.05', N'6', N'Cuota patronal de pensiones y jubilaciones,contributivas y no contributivas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.03.99', N'6', N'Otras prestaciones a terceras personas')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.06.01', N'6', N'Indemnizaciones')
INSERT [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk], [SubFami_CodF_Fk], [SubFami_Desc]) VALUES (N'6.06.02', N'6', N'Reintegros y devoluciones')
ALTER TABLE [dbo].[ABAA_TB_Departamento]  WITH CHECK ADD  CONSTRAINT [fkDepartamento] FOREIGN KEY([Depto_Id_Dire_FK])
REFERENCES [dbo].[ABAA_TB_Direccion] ([Dire_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_Departamento] CHECK CONSTRAINT [fkDepartamento]
GO
ALTER TABLE [dbo].[ABAA_TB_Departamento]  WITH CHECK ADD  CONSTRAINT [fkDepartamento2] FOREIGN KEY([Depto_Jefe_FK])
REFERENCES [dbo].[ABAA_TB_Funcionario] ([Func_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_Departamento] CHECK CONSTRAINT [fkDepartamento2]
GO
ALTER TABLE [dbo].[ABAA_TB_Funcionario]  WITH CHECK ADD  CONSTRAINT [fkFuncionario] FOREIGN KEY([Func_Id_Depa_FK])
REFERENCES [dbo].[ABAA_TB_Departamento] ([Depto_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_Funcionario] CHECK CONSTRAINT [fkFuncionario]
GO
ALTER TABLE [dbo].[ABAA_TB_OCProveedor]  WITH CHECK ADD  CONSTRAINT [fkOCProveedor] FOREIGN KEY([OCProy_OC_ID])
REFERENCES [dbo].[Sbo_TB_OrdenCompra] ([OC_Id_PK])
GO
ALTER TABLE [dbo].[ABAA_TB_OCProveedor] CHECK CONSTRAINT [fkOCProveedor]
GO
ALTER TABLE [dbo].[ABAA_TB_OCProveedor]  WITH CHECK ADD  CONSTRAINT [fkOCProveedor2] FOREIGN KEY([OCProy_Prove_ID])
REFERENCES [dbo].[Sbo_TB_Proveedor] ([Prove_Id_Prove_PK])
GO
ALTER TABLE [dbo].[ABAA_TB_OCProveedor] CHECK CONSTRAINT [fkOCProveedor2]
GO
ALTER TABLE [dbo].[ABAA_TB_OCProyecto]  WITH CHECK ADD  CONSTRAINT [fkOCProyecto] FOREIGN KEY([OCProy_OC_ID])
REFERENCES [dbo].[Sbo_TB_OrdenCompra] ([OC_Id_PK])
GO
ALTER TABLE [dbo].[ABAA_TB_OCProyecto] CHECK CONSTRAINT [fkOCProyecto]
GO
ALTER TABLE [dbo].[ABAA_TB_OCProyecto]  WITH CHECK ADD  CONSTRAINT [fkOCProyecto2] FOREIGN KEY([OCProy_Proy_ID])
REFERENCES [dbo].[SAC_Proyectos] ([Proy_Id_PK])
GO
ALTER TABLE [dbo].[ABAA_TB_OCProyecto] CHECK CONSTRAINT [fkOCProyecto2]
GO
ALTER TABLE [dbo].[ABAA_TB_RolxPermiso]  WITH CHECK ADD  CONSTRAINT [fkRolxPermiso] FOREIGN KEY([RolxPer_Permiso])
REFERENCES [dbo].[ABAA_TB_Permisos] ([Perm_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_RolxPermiso] CHECK CONSTRAINT [fkRolxPermiso]
GO
ALTER TABLE [dbo].[ABAA_TB_RolxPermiso]  WITH CHECK ADD  CONSTRAINT [fkRolxPermiso2] FOREIGN KEY([RolxPer_Rol])
REFERENCES [dbo].[ABAA_TB_Rol] ([Rol_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_RolxPermiso] CHECK CONSTRAINT [fkRolxPermiso2]
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO]  WITH CHECK ADD  CONSTRAINT [fkUsuario] FOREIGN KEY([Usua_Cedu_FK])
REFERENCES [dbo].[ABAA_TB_Funcionario] ([Func_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO] CHECK CONSTRAINT [fkUsuario]
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO]  WITH CHECK ADD  CONSTRAINT [fkUsuario2] FOREIGN KEY([Usua_Rol_FK])
REFERENCES [dbo].[ABAA_TB_Rol] ([Rol_Id_Pk])
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO] CHECK CONSTRAINT [fkUsuario2]
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO]  WITH CHECK ADD  CONSTRAINT [fkUsuario3] FOREIGN KEY([Usua_Esta_FK])
REFERENCES [dbo].[ABAA_TB_Estado] ([Esta_Id_PK])
GO
ALTER TABLE [dbo].[ABAA_TB_USUARIO] CHECK CONSTRAINT [fkUsuario3]
GO
ALTER TABLE [dbo].[CatArticulo]  WITH CHECK ADD  CONSTRAINT [fkCatArticulo] FOREIGN KEY([Cat_SubC_Fk])
REFERENCES [dbo].[Sbo_TB_SubFamilia] ([SubFami_Id_Pk])
GO
ALTER TABLE [dbo].[CatArticulo] CHECK CONSTRAINT [fkCatArticulo]
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo]  WITH CHECK ADD  CONSTRAINT [fkArticulo] FOREIGN KEY([Art_Depa_Fk])
REFERENCES [dbo].[ABAA_TB_Departamento] ([Depto_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo] CHECK CONSTRAINT [fkArticulo]
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo]  WITH CHECK ADD  CONSTRAINT [fkArticulo2] FOREIGN KEY([Art_Orde_Comp_FK])
REFERENCES [dbo].[Sbo_TB_OrdenCompra] ([OC_Id_PK])
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo] CHECK CONSTRAINT [fkArticulo2]
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo]  WITH CHECK ADD  CONSTRAINT [fkArticulo3] FOREIGN KEY([Art_Codi_Cont])
REFERENCES [dbo].[Sbo_TB_Contable] ([Cnt_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo] CHECK CONSTRAINT [fkArticulo3]
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo]  WITH CHECK ADD  CONSTRAINT [fkArticulo4] FOREIGN KEY([Art_Soli_Arti])
REFERENCES [dbo].[Sbo_TB_Soli_Arti] ([Sol_Arti_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo] CHECK CONSTRAINT [fkArticulo4]
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo]  WITH CHECK ADD  CONSTRAINT [fkArticulo5] FOREIGN KEY([Art_Codi_Cat_SICO_FK])
REFERENCES [dbo].[CatArticulo] ([Cat_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Articulo] CHECK CONSTRAINT [fkArticulo5]
GO
ALTER TABLE [dbo].[Sbo_TB_Bodega]  WITH CHECK ADD  CONSTRAINT [fkBodega] FOREIGN KEY([Bode_Enca])
REFERENCES [dbo].[ABAA_TB_Funcionario] ([Func_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Bodega] CHECK CONSTRAINT [fkBodega]
GO
ALTER TABLE [dbo].[Sbo_TB_Existencia]  WITH CHECK ADD  CONSTRAINT [fkExistencia] FOREIGN KEY([Exis_Id_Bode])
REFERENCES [dbo].[Sbo_TB_Bodega] ([Bode_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Existencia] CHECK CONSTRAINT [fkExistencia]
GO
ALTER TABLE [dbo].[Sbo_TB_Existencia]  WITH CHECK ADD  CONSTRAINT [fkExistencia2] FOREIGN KEY([Exis_Id_Arti])
REFERENCES [dbo].[Sbo_TB_Articulo] ([Art_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Existencia] CHECK CONSTRAINT [fkExistencia2]
GO
ALTER TABLE [dbo].[Sbo_TB_OrdenCompra]  WITH CHECK ADD  CONSTRAINT [fkOrdenCompra] FOREIGN KEY([OC_Esta])
REFERENCES [dbo].[ABAA_TB_Estado] ([Esta_Id_PK])
GO
ALTER TABLE [dbo].[Sbo_TB_OrdenCompra] CHECK CONSTRAINT [fkOrdenCompra]
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti]  WITH CHECK ADD  CONSTRAINT [fkSolicitudArt2] FOREIGN KEY([Sol_Arti_Id_Depa_Fk])
REFERENCES [dbo].[ABAA_TB_Departamento] ([Depto_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti] CHECK CONSTRAINT [fkSolicitudArt2]
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti]  WITH CHECK ADD  CONSTRAINT [fkSolicitudArt3] FOREIGN KEY([Sol_Arti_Id_Func_Fk])
REFERENCES [dbo].[ABAA_TB_Funcionario] ([Func_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti] CHECK CONSTRAINT [fkSolicitudArt3]
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti]  WITH CHECK ADD  CONSTRAINT [fkSolicitudArt4] FOREIGN KEY([Sol_Arti_Id_Esta_FK])
REFERENCES [dbo].[ABAA_TB_Estado] ([Esta_Id_PK])
GO
ALTER TABLE [dbo].[Sbo_TB_Soli_Arti] CHECK CONSTRAINT [fkSolicitudArt4]
GO
ALTER TABLE [dbo].[Sbo_TB_SubFamilia]  WITH CHECK ADD  CONSTRAINT [fkSubFamilia] FOREIGN KEY([SubFami_CodF_Fk])
REFERENCES [dbo].[Sbo_TB_Familia] ([Fami_Id_Pk])
GO
ALTER TABLE [dbo].[Sbo_TB_SubFamilia] CHECK CONSTRAINT [fkSubFamilia]
GO
USE [master]
GO
ALTER DATABASE [ABAA] SET  READ_WRITE 
GO
