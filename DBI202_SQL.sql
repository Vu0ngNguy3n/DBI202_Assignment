USE [master]
GO
/****** Object:  Database [DBI202_Assignment]    Script Date: 6/20/2022 12:05:38 AM ******/
CREATE DATABASE [DBI202_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBI202_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBI202_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBI202_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBI202_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBI202_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBI202_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBI202_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBI202_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBI202_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBI202_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBI202_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [DBI202_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [DBI202_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBI202_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBI202_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBI202_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBI202_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBI202_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBI202_Assignment', N'ON'
GO
ALTER DATABASE [DBI202_Assignment] SET QUERY_STORE = OFF
GO
USE [DBI202_Assignment]
GO
/****** Object:  Table [dbo].[Assessments]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessments](
	[Category] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Part] [int] NOT NULL,
	[Weight] [nvarchar](50) NOT NULL,
	[Completion Criteria] [nvarchar](50) NOT NULL,
	[Duration] [nvarchar](50) NOT NULL,
	[LO] [nvarchar](50) NULL,
	[Question Type] [nvarchar](150) NOT NULL,
	[No Question] [int] NULL,
	[Knowledge and Skill] [nvarchar](150) NOT NULL,
	[Grading Guide] [nvarchar](150) NOT NULL,
	[Note] [nvarchar](150) NULL,
 CONSTRAINT [PK_Assessments] PRIMARY KEY CLUSTERED 
(
	[Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Charge]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charge](
	[LecturerID] [nvarchar](50) NOT NULL,
	[GroupID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Charge] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[GroupID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[SubjectID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Session]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Session](
	[GroupID] [nvarchar](50) NOT NULL,
	[SessionID] [int] NOT NULL,
 CONSTRAINT [PK_Group_Session] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 6/20/2022 12:05:38 AM ******/
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
/****** Object:  Table [dbo].[Lecturer_Session]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Session](
	[LecturerID] [nvarchar](50) NOT NULL,
	[SessionID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarkResult]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkResult](
	[SubjectID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Quiz 1] [float] NULL,
	[Quiz 2] [float] NULL,
	[Activity] [float] NULL,
	[Group Assignment] [float] NULL,
	[Group Project] [float] NULL,
	[Final Exam] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [int] NOT NULL,
	[Status] [nvarchar](10) NULL,
	[Day] [date] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/20/2022 12:05:38 AM ******/
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
/****** Object:  Table [dbo].[Student_Session]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Session](
	[StudentID] [nvarchar](50) NOT NULL,
	[SessionID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Session] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Subject]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Subject](
	[StudentID] [nvarchar](50) NOT NULL,
	[SubjectID] [nvarchar](50) NOT NULL,
	[Semester] [nvarchar](50) NOT NULL,
	[STARTDATE] [date] NOT NULL,
	[ENDDATE] [date] NOT NULL,
 CONSTRAINT [PK_Student_Subject] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/20/2022 12:05:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [nvarchar](50) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[Group_Session]  WITH CHECK ADD  CONSTRAINT [FK_Group_Session_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Group_Session] CHECK CONSTRAINT [FK_Group_Session_Group]
GO
ALTER TABLE [dbo].[Group_Session]  WITH CHECK ADD  CONSTRAINT [FK_Group_Session_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO
ALTER TABLE [dbo].[Group_Session] CHECK CONSTRAINT [FK_Group_Session_Session]
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
ALTER TABLE [dbo].[MarkResult]  WITH CHECK ADD  CONSTRAINT [FK_MarkResult_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[MarkResult] CHECK CONSTRAINT [FK_MarkResult_Student]
GO
ALTER TABLE [dbo].[MarkResult]  WITH CHECK ADD  CONSTRAINT [FK_MarkResult_Subject] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[MarkResult] CHECK CONSTRAINT [FK_MarkResult_Subject]
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
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_Student_Subject_Student]
GO
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_Student_Subject_Subject]
GO
USE [master]
GO
ALTER DATABASE [DBI202_Assignment] SET  READ_WRITE 
GO
