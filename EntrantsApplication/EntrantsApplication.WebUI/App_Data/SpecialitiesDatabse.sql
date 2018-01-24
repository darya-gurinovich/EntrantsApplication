USE [EntrantsDatabase]
GO
/****** Object:  Table [dbo].[EducationFees]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationFees](
	[EducationFeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ThePayotPercentage] [int] NOT NULL,
 CONSTRAINT [PK_EducationFees_EducationFeeId] PRIMARY KEY CLUSTERED 
(
	[EducationFeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationForms]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationForms](
	[EducationFormId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_EducationForms_EducationFormId] PRIMARY KEY CLUSTERED 
(
	[EducationFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationPeriods]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationPeriods](
	[EducationPeriodId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[TheNumberOfYears] [int] NOT NULL,
 CONSTRAINT [PK_EducationPeriods_EducationPeriodId] PRIMARY KEY CLUSTERED 
(
	[EducationPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntranceTests]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntranceTests](
	[EntranceTestsId] [int] IDENTITY(1,1) NOT NULL,
	[TheFirstSubjectName] [nvarchar](150) NOT NULL,
	[TheFirstSubjectMinScore] [int] NOT NULL,
	[TheSecondSubjectName] [nvarchar](150) NOT NULL,
	[TheSecondSubjectMinScore] [int] NOT NULL,
	[TheLanguagetMinScore] [int] NOT NULL,
 CONSTRAINT [PK_EntranceTests_EntranceTestsId] PRIMARY KEY CLUSTERED 
(
	[EntranceTestsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[SpecialityId] [int] NOT NULL,
	[UniversityId] [int] NOT NULL,
	[EducationFormId] [int] NOT NULL,
	[SpecialityNameId] [int] NOT NULL,
	[EducationPeriodId] [int] NOT NULL,
	[EducationFeeId] [int] NOT NULL,
	[TheTotalNumberOfPlaces] [int] NOT NULL,
	[TheDuration] [date] NOT NULL,
	[TheNumberOfPlacesForOrphans] [int] NOT NULL,
	[TheNumberOfPlacesForHonourGuard] [int] NOT NULL,
	[TheSpecialityColor] [nvarchar](50) NOT NULL,
	[EntranceTestsId] [int] NOT NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialityGroups]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialityGroups](
	[SpecialityGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_SpecialityGroups_SpecialityGroupId] PRIMARY KEY CLUSTERED 
(
	[SpecialityGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialityNames]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialityNames](
	[SpecialityNameId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SpecialityGroupId] [int] NOT NULL,
 CONSTRAINT [PK_SpecialityNames_SpecialityNameId] PRIMARY KEY CLUSTERED 
(
	[SpecialityNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universities]    Script Date: 24.01.2018 22:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Universities_UniversityId] PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationFees] FOREIGN KEY([EducationFeeId])
REFERENCES [dbo].[EducationFees] ([EducationFeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationFees]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationForms] FOREIGN KEY([EducationFormId])
REFERENCES [dbo].[EducationForms] ([EducationFormId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationForms]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationPeriods] FOREIGN KEY([EducationPeriodId])
REFERENCES [dbo].[EducationPeriods] ([EducationPeriodId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationPeriods]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EntranceTests] FOREIGN KEY([EntranceTestsId])
REFERENCES [dbo].[EntranceTests] ([EntranceTestsId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EntranceTests]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_SpecialityNames] FOREIGN KEY([SpecialityNameId])
REFERENCES [dbo].[SpecialityNames] ([SpecialityNameId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_SpecialityNames]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_Universities] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[Universities] ([UniversityId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_Universities]
GO
ALTER TABLE [dbo].[SpecialityNames]  WITH CHECK ADD  CONSTRAINT [FK_SpecialityNames_SpecialityGroups] FOREIGN KEY([SpecialityGroupId])
REFERENCES [dbo].[SpecialityGroups] ([SpecialityGroupId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SpecialityNames] CHECK CONSTRAINT [FK_SpecialityNames_SpecialityGroups]
GO
