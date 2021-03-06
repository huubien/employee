USE [master]
GO
/****** Object:  Database [Lab3]    Script Date: 30/03/2018 3:31:45 CH ******/
CREATE DATABASE [Lab3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lab3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Lab3.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Lab3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Lab3_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Lab3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Lab3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Lab3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Lab3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Lab3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Lab3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Lab3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Lab3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Lab3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Lab3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Lab3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Lab3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Lab3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Lab3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Lab3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Lab3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Lab3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Lab3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Lab3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Lab3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Lab3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Lab3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Lab3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Lab3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Lab3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Lab3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Lab3] SET  MULTI_USER 
GO
ALTER DATABASE [Lab3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Lab3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Lab3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Lab3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Lab3]
GO
/****** Object:  Table [dbo].[Departs]    Script Date: 30/03/2018 3:31:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departs](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nganh]    Script Date: 30/03/2018 3:31:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nganh](
	[masv] [nvarchar](10) NOT NULL,
	[major] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 30/03/2018 3:31:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Diem] [float] NOT NULL,
	[DepartId] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 30/03/2018 3:31:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[masv] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[mark] [float] NULL,
	[major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studentss]    Script Date: 30/03/2018 3:31:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentss](
	[masv] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[mark] [float] NULL,
	[major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Studentss] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studentsss]    Script Date: 30/03/2018 3:31:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentsss](
	[masv] [int] IDENTITY(1,1) NOT NULL,
	[major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Studentsss] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'CNTT', N'CNTT')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'Web', N'Web')
INSERT [dbo].[nganh] ([masv], [major]) VALUES (N'1', N'WEB')
INSERT [dbo].[nganh] ([masv], [major]) VALUES (N'2', N'APP')
INSERT [dbo].[nganh] ([masv], [major]) VALUES (N'3', N'Thong')
INSERT [dbo].[Staffs] ([Id], [Name], [Diem], [DepartId]) VALUES (N'1', N'Hoang Thinh', 1, N'CNTT')
INSERT [dbo].[Staffs] ([Id], [Name], [Diem], [DepartId]) VALUES (N'2', N'Dang Huu Bien', 10, N'CNTT')
INSERT [dbo].[Staffs] ([Id], [Name], [Diem], [DepartId]) VALUES (N'3', N'Hoang Hai', 10, N'Web')
INSERT [dbo].[Staffs] ([Id], [Name], [Diem], [DepartId]) VALUES (N'4', N'Van Quang', 10, N'CNTT')
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([masv], [name], [mark], [major]) VALUES (2, N'Nguyen Thi Tam', 8.7, N'APP')
INSERT [dbo].[Students] ([masv], [name], [mark], [major]) VALUES (42, N'bien', 10, N'WEB')
INSERT [dbo].[Students] ([masv], [name], [mark], [major]) VALUES (1006, N'fdg', 56, N'WEB')
INSERT [dbo].[Students] ([masv], [name], [mark], [major]) VALUES (1007, N'fdg', 56, N'WEB')
INSERT [dbo].[Students] ([masv], [name], [mark], [major]) VALUES (1008, N'fdg', 56, N'Nha hanh')
SET IDENTITY_INSERT [dbo].[Students] OFF
SET IDENTITY_INSERT [dbo].[Studentss] ON 

INSERT [dbo].[Studentss] ([masv], [name], [mark], [major]) VALUES (1, N'Le Thi Teo', 9, N'WEB')
INSERT [dbo].[Studentss] ([masv], [name], [mark], [major]) VALUES (2, N'Nguyen Thi Tam', 8.7, N'APP')
INSERT [dbo].[Studentss] ([masv], [name], [mark], [major]) VALUES (3, N'Nguyen Thi Tam', 8.7, N'Nha hanh')
SET IDENTITY_INSERT [dbo].[Studentss] OFF
SET IDENTITY_INSERT [dbo].[Studentsss] ON 

INSERT [dbo].[Studentsss] ([masv], [major]) VALUES (1, N'WEB')
INSERT [dbo].[Studentsss] ([masv], [major]) VALUES (2, N'APP')
INSERT [dbo].[Studentsss] ([masv], [major]) VALUES (3, N'Nha hanh')
INSERT [dbo].[Studentsss] ([masv], [major]) VALUES (4, N'QUantri')
INSERT [dbo].[Studentsss] ([masv], [major]) VALUES (5, N'Luat')
SET IDENTITY_INSERT [dbo].[Studentsss] OFF
USE [master]
GO
ALTER DATABASE [Lab3] SET  READ_WRITE 
GO
