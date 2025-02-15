USE [master]
GO
/****** Object:  Database [TrainingProgramDB]    Script Date: 2024/05/22 21:10:15 ******/
CREATE DATABASE [TrainingProgramDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TrainingProgramDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TrainingProgramDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TrainingProgramDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TrainingProgramDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TrainingProgramDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TrainingProgramDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TrainingProgramDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrainingProgramDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrainingProgramDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrainingProgramDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrainingProgramDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TrainingProgramDB] SET  MULTI_USER 
GO
ALTER DATABASE [TrainingProgramDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrainingProgramDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrainingProgramDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrainingProgramDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TrainingProgramDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TrainingProgramDB]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2024/05/22 21:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DateOfBirth] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[PhoneNumber] [int] NOT NULL,
	[Address] [varchar](100) NULL,
	[TrainingProgram] [varchar](100) NULL,
	[MembershipStartDate] [varchar](100) NULL,
	[MembershipEndDate] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 2024/05/22 21:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[ProgramID] [int] NOT NULL,
	[ProgramName] [varchar](100) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Instructor] [varchar](100) NOT NULL,
	[Schedule] [varchar](100) NOT NULL,
	[Capacity] [int] NOT NULL,
	[Duration] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TrainingProgramDB] SET  READ_WRITE 
GO
