USE [master]
GO
/****** Object:  Database [EntrantsDatabase]    Script Date: 09.01.2018 17:47:54 ******/
CREATE DATABASE [EntrantsDatabase] ON  PRIMARY 
( NAME = N'EntrantsDatabase', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EntrantsDatabase.mdf' , SIZE = 5304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EntrantsDatabase_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EntrantsDatabase_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EntrantsDatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntrantsDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntrantsDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntrantsDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntrantsDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EntrantsDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [EntrantsDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntrantsDatabase] SET DB_CHAINING OFF 
GO
USE [EntrantsDatabase]
GO
/****** Object:  Table [dbo].[Entrants]    Script Date: 09.01.2018 17:47:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrants](
	[EntrantId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[DateOfTheBirth] [datetime2](7) NOT NULL,
	[Speciality] [nvarchar](50) NOT NULL,
	[HomeAddress] [nvarchar](150) NOT NULL,
	[MobilePhone] [nvarchar](15) NOT NULL,
	[HasPrivileges] [bit] NOT NULL,
	[Privileges] [nvarchar](250) NULL,
	[NeedsDormitory] [bit] NOT NULL,
	[School] [nvarchar](100) NOT NULL,
	[YearOfFinishingTheSchool] [int] NOT NULL,
	[AverageSchoolScore] [float] NOT NULL,
	[ForeignLanguage] [nvarchar](30) NOT NULL,
	[HasMother] [bit] NOT NULL,
	[MotherName] [nvarchar](50) NULL,
	[MotherSecondName] [nvarchar](50) NULL,
	[MotherSurname] [nvarchar](50) NULL,
	[MotherDateofTheBirth] [datetime2](7) NULL,
	[MotherHomeAddress] [nvarchar](150) NULL,
	[MotherMobilePhone] [nvarchar](15) NULL,
	[MotherPlaceOfWork] [nvarchar](100) NULL,
	[HasFather] [bit] NOT NULL,
	[FatherName] [nvarchar](50) NULL,
	[FatherSecondName] [nvarchar](50) NULL,
	[FatherSurname] [nvarchar](50) NULL,
	[FatherDateofTheBirth] [datetime2](7) NULL,
	[FatherHomeAddress] [nvarchar](150) NULL,
	[FatherMobilePhone] [nvarchar](15) NULL,
	[FatherPlaceOfWork] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntrantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 09.01.2018 17:47:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyId] [int] NOT NULL,
	[FacultyName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialities]    Script Date: 09.01.2018 17:47:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialities](
	[SpecialityId] [int] NOT NULL,
	[SpecialityName] [nvarchar](150) NOT NULL,
	[FacultyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Entrants] ON 

INSERT [dbo].[Entrants] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [Speciality], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (22, N'Lucy', N'Marie', N'Smith', CAST(0x07000000000032260B AS DateTime2), N'POIT', N'SomeWhere', N'+343423465', 0, NULL, 0, N'MFD School', 2018, 7.8, N'Spanish', 1, N'Margaret', N'Cathrine', N'Smith', CAST(0x0700000000006C030B AS DateTime2), N'Somewhere', N'+234257654', N'Local Shop', 1, N'Edward', N'Harold', N'Smith', CAST(0x0700000000002D030B AS DateTime2), N'Somewhere', N'+2314235675', N'RFD Inc')
INSERT [dbo].[Entrants] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [Speciality], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (23, N'George', N'Mark', N'Morgan', CAST(0x070000000000D9230B AS DateTime2), N'FGD', N'Somewhere', N'+536536433', 0, NULL, 1, N'NF School', 2016, 7.4, N'German', 1, N'Magie', N'Alice', N'Morgan', CAST(0x070000000000BF010B AS DateTime2), N'Somewhere', N'+345345323', N'Fesfse Inc', 1, N'Henry', N'Robert', N'Morgan', CAST(0x07000000000087FD0A AS DateTime2), N'Somewhere', N'+5466456452', N'Dsad Inc')
INSERT [dbo].[Entrants] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [Speciality], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (24, N'Fred', N'Leroy', N'Rogers', CAST(0x070000000000B3240B AS DateTime2), N'Informatics', N'Somewhere', N'+465363464', 1, N'An orphan', 1, N'LVF School', 2016, 8.1, N'French', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entrants] OFF
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (1, N'Faculty of Computer-Aided Design')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (2, N'Faculty of Information Technologies and Control')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (3, N'Faculty of Radioengineering and Electronics')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (4, N'Faculty of Infocommunications')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (5, N'Faculty of Computer Systems and Networks')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (6, N'Military Faculty')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (7, N'Faculty of Engineering and Economics')
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (1, N'Automated Data Processing Systems', 2)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (2, N'Artificial Intelligence', 2)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (3, N'Computer Engineering', 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (4, N'Design and Manifacture of Software-Controlled Electronic Devices', 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (5, N'Electronic Instrumentation and Control Systems of Physical Installations', 3)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (6, N'AKN', 4)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (7, N'Informatics', 5)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (8, N'Computers, Systems and Networks', 5)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (9, N'Military Systems', 6)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (10, N'Digital Marketing', 7)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId]) VALUES (11, N'Economics in Electronic Business', 7)
USE [master]
GO
ALTER DATABASE [EntrantsDatabase] SET  READ_WRITE 
GO
