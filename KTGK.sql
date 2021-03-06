USE [master]
GO
/****** Object:  Database [KTGK]    Script Date: 7/3/2020 2:26:40 PM ******/
CREATE DATABASE [KTGK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KTGK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DATPHI\MSSQL\DATA\KTGK.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KTGK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DATPHI\MSSQL\DATA\KTGK_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KTGK] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KTGK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KTGK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KTGK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KTGK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KTGK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KTGK] SET ARITHABORT OFF 
GO
ALTER DATABASE [KTGK] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KTGK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KTGK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KTGK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KTGK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KTGK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KTGK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KTGK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KTGK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KTGK] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KTGK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KTGK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KTGK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KTGK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KTGK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KTGK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KTGK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KTGK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KTGK] SET  MULTI_USER 
GO
ALTER DATABASE [KTGK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KTGK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KTGK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KTGK] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KTGK] SET DELAYED_DURABILITY = DISABLED 
GO
USE [KTGK]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 7/3/2020 2:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[model] [nvarchar](max) NULL,
	[price] [float] NULL,
	[general_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [KTGK] SET  READ_WRITE 
GO
