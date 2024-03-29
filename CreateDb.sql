USE [master]
GO

/****** Object:  Database [Repository]    Script Date: 7/19/2018 5:09:16 PM ******/
CREATE DATABASE [Repository]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Repository', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repository.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Repository_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repository_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Repository] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Repository].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Repository] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Repository] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Repository] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Repository] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Repository] SET ARITHABORT OFF 
GO

ALTER DATABASE [Repository] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Repository] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Repository] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Repository] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Repository] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Repository] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Repository] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Repository] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Repository] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Repository] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Repository] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Repository] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Repository] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Repository] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Repository] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Repository] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Repository] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Repository] SET RECOVERY FULL 
GO

ALTER DATABASE [Repository] SET  MULTI_USER 
GO

ALTER DATABASE [Repository] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Repository] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Repository] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Repository] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Repository] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Repository] SET QUERY_STORE = OFF
GO

USE [Repository]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Repository] SET  READ_WRITE 
GO

USE [Repository]
GO

/****** Object:  Table [dbo].[User]    Script Date: 7/19/2018 5:29:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [Repository]
GO

/****** Object:  Table [dbo].[Address]    Script Date: 7/19/2018 5:29:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO


