USE [master]
GO
/****** Object:  Database [LopushokBase]    Script Date: 26.02.2024 15:50:22 ******/
CREATE DATABASE [LopushokBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LopushokBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LopushokBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LopushokBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LopushokBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LopushokBase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LopushokBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LopushokBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LopushokBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LopushokBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LopushokBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LopushokBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [LopushokBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LopushokBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LopushokBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LopushokBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LopushokBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LopushokBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LopushokBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LopushokBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LopushokBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LopushokBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LopushokBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LopushokBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LopushokBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LopushokBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LopushokBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LopushokBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LopushokBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LopushokBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LopushokBase] SET  MULTI_USER 
GO
ALTER DATABASE [LopushokBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LopushokBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LopushokBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LopushokBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LopushokBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LopushokBase] SET QUERY_STORE = OFF
GO
USE [LopushokBase]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 26.02.2024 15:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id_Material] [int] NOT NULL,
	[Name_Material] [nvarchar](100) NULL,
	[Count_OnPackage] [int] NULL,
	[Unit] [nvarchar](10) NULL,
	[Count_InWarehouse] [int] NULL,
	[MinRemain] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 26.02.2024 15:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id_ProductMaterial] [int] NOT NULL,
	[Articul_Product] [int] NULL,
	[Id_Material] [int] NULL,
	[Count_Material] [int] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[Id_ProductMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26.02.2024 15:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Articul_Product] [int] NOT NULL,
	[Name_Product] [nvarchar](100) NOT NULL,
	[MinPrice] [float] NULL,
	[Image] [nvarchar](50) NULL,
	[Type_Product] [nvarchar](50) NULL,
	[MinCount] [int] NULL,
	[Worshop_Number] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Articul_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Materials] FOREIGN KEY([Id_Material])
REFERENCES [dbo].[Materials] ([Id_Material])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Materials]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Products] FOREIGN KEY([Articul_Product])
REFERENCES [dbo].[Products] ([Articul_Product])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Products]
GO
USE [master]
GO
ALTER DATABASE [LopushokBase] SET  READ_WRITE 
GO
