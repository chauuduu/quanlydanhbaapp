USE [master]
GO
/****** Object:  Database [QLLienLac]    Script Date: 28/10/2022 11:27:21 CH ******/
CREATE DATABASE [QLLienLac]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLLienLac', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLLienLac.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLLienLac_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLLienLac_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLLienLac] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLLienLac].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLLienLac] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLLienLac] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLLienLac] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLLienLac] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLLienLac] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLLienLac] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLLienLac] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLLienLac] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLLienLac] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLLienLac] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLLienLac] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLLienLac] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLLienLac] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLLienLac] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLLienLac] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLLienLac] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLLienLac] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLLienLac] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLLienLac] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLLienLac] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLLienLac] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLLienLac] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLLienLac] SET RECOVERY FULL 
GO
ALTER DATABASE [QLLienLac] SET  MULTI_USER 
GO
ALTER DATABASE [QLLienLac] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLLienLac] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLLienLac] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLLienLac] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLLienLac] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLLienLac', N'ON'
GO
USE [QLLienLac]
GO
/****** Object:  Table [dbo].[LienLac]    Script Date: 28/10/2022 11:27:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienLac](
	[MaLienLac] [int] IDENTITY(1,1) NOT NULL,
	[TenGoi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaNhom] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_LienLac] PRIMARY KEY CLUSTERED 
(
	[MaLienLac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhom]    Script Date: 28/10/2022 11:27:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhom](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhom] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LienLac] ON 

INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (1, N'Ba', N'ba@gmail.com', N'0935000000', 1, N'Huế')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (3, N'Tung', N'tung@gmail.com', N'0906424142', 2, N'Hồ Chí Minh')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (4, N'Phuc', N'phuc@gmail.com', N'041241251', 2, N'Đà Nẵng')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (5, N'Me', N'me@gmail.com', N'045252532', 1, N'Huế')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (6, N'Ti', N'ti@gmail.com', N'04215215', 1, N'')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (7, N'Tú', N'tu@gmail.com', N'0942142141', 5, N'Hà Nội')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (18, N'Mai', N'mai@gmail.com', N'042141432', 5, N'Hà Nội')
INSERT [dbo].[LienLac] ([MaLienLac], [TenGoi], [Email], [SoDienThoai], [MaNhom], [DiaChi]) VALUES (20, N'Chị Ba', N'chiba@gmail.com', N'04214142', 1, N'Quảng Trị')
SET IDENTITY_INSERT [dbo].[LienLac] OFF
SET IDENTITY_INSERT [dbo].[Nhom] ON 

INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (1, N'GiaDinh')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (2, N'CongTy')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (5, N'Bạn bè')
SET IDENTITY_INSERT [dbo].[Nhom] OFF
ALTER TABLE [dbo].[LienLac]  WITH CHECK ADD  CONSTRAINT [FK_LienLac_Nhom] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[LienLac] CHECK CONSTRAINT [FK_LienLac_Nhom]
GO
USE [master]
GO
ALTER DATABASE [QLLienLac] SET  READ_WRITE 
GO
