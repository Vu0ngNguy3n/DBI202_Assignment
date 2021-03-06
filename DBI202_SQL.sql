USE [master]
GO
/****** Object:  Database [DBI202_Assignment_Vuong]    Script Date: 6/30/2022 09:16:41 PM ******/
CREATE DATABASE [DBI202_Assignment_Vuong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBI202_Assignment_Vuong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBI202_Assignment_Vuong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBI202_Assignment_Vuong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBI202_Assignment_Vuong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBI202_Assignment_Vuong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET RECOVERY FULL 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET  MULTI_USER 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBI202_Assignment_Vuong', N'ON'
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET QUERY_STORE = OFF
GO
USE [DBI202_Assignment_Vuong]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[AssessmentID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[SubjectID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment_Student]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment_Student](
	[AssessmentID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Score] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Charge]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charge](
	[LecturerID] [nvarchar](50) NOT NULL,
	[GroupID] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[GroupID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[SubjectID] [nvarchar](50) NOT NULL,
	[Semester] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LecturerID] [nvarchar](50) NOT NULL,
	[LecturerName] [nvarchar](50) NOT NULL,
	[LecturerEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer_Session]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Session](
	[LecturerID] [nvarchar](50) NOT NULL,
	[SessionID] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[Semester] [nvarchar](50) NOT NULL,
	[Start] [date] NOT NULL,
	[End] [date] NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [nvarchar](50) NOT NULL,
	[Day] [date] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](50) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Session]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Session](
	[StudentID] [nvarchar](50) NOT NULL,
	[SessionID] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/30/2022 09:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Subject]
GO
ALTER TABLE [dbo].[Assessment_Student]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Student_Assessment] FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assessment] ([AssessmentID])
GO
ALTER TABLE [dbo].[Assessment_Student] CHECK CONSTRAINT [FK_Assessment_Student_Assessment]
GO
ALTER TABLE [dbo].[Assessment_Student]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Student_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Assessment_Student] CHECK CONSTRAINT [FK_Assessment_Student_Student]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Group]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LecturerID])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Lecturer]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Group]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Semester] FOREIGN KEY([Semester])
REFERENCES [dbo].[Semester] ([Semester])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Semester]
GO
ALTER TABLE [dbo].[Lecturer_Session]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Session_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LecturerID])
GO
ALTER TABLE [dbo].[Lecturer_Session] CHECK CONSTRAINT [FK_Lecturer_Session_Lecturer]
GO
ALTER TABLE [dbo].[Lecturer_Session]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Session_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO
ALTER TABLE [dbo].[Lecturer_Session] CHECK CONSTRAINT [FK_Lecturer_Session_Session]
GO
ALTER TABLE [dbo].[Student_Session]  WITH CHECK ADD  CONSTRAINT [FK_Student_Session_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO
ALTER TABLE [dbo].[Student_Session] CHECK CONSTRAINT [FK_Student_Session_Session]
GO
ALTER TABLE [dbo].[Student_Session]  WITH CHECK ADD  CONSTRAINT [FK_Student_Session_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Session] CHECK CONSTRAINT [FK_Student_Session_Student]
GO
USE [master]
GO
ALTER DATABASE [DBI202_Assignment_Vuong] SET  READ_WRITE 
GO
