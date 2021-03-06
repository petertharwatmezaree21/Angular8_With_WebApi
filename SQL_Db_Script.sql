USE [master]
GO
/****** Object:  Database [EmployeeWithAngularAndWepApi]    Script Date: 19/02/2020 05:53:17 م ******/
CREATE DATABASE [EmployeeWithAngularAndWepApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeWithAngularAndWepApi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EmployeeWithAngularAndWepApi.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeWithAngularAndWepApi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EmployeeWithAngularAndWepApi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeWithAngularAndWepApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET RECOVERY FULL 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmployeeWithAngularAndWepApi', N'ON'
GO
USE [EmployeeWithAngularAndWepApi]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 19/02/2020 05:53:18 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [EmployeeWithAngularAndWepApi] SET  READ_WRITE 
GO
