
CREATE DATABASE [SurveyDB] 
GO
USE [SurveyDB]
GO
/****** Object:  Schema [sSurvey]    Script Date: 26/07/2024 11:46:25 pm ******/
CREATE SCHEMA [sSurvey]
GO
/****** Object:  Table [sSurvey].[tCategory]    Script Date: 26/07/2024 11:46:25 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBY] [varchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tCustomerDetail]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tCustomerDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EmailId] [nvarchar](120) NULL,
	[MobileNumber] [nvarchar](15) NOT NULL,
	[AadharNumber] [bigint] NULL,
	[VoterId] [nvarchar](20) NULL,
	[Gender] [int] NOT NULL,
	[DOB] [date] NULL,
	[AgeGroupId] [int] NOT NULL,
	[Address] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[LocationId] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tCustomerRespondent]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tCustomerRespondent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[OptionId] [int] NULL,
	[TextResponse] [nvarchar](2000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tMaster]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tMaster](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBY] [varchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tOptionMaster]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tOptionMaster](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[OptionalText] [nvarchar](300) NULL,
	[NextQuestionId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBY] [varchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tQuestion]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tQuestion](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[QuestionTypeId] [int] NOT NULL,
	[MasterId] [int] NOT NULL,
	[GuideLineText] [nvarchar](300) NULL,
	[NextQuestionId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsMandatory] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBY] [varchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tQuestionType]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tQuestionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBY] [varchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sSurvey].[tStartQuestionMap]    Script Date: 26/07/2024 11:46:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sSurvey].[tStartQuestionMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [sSurvey].[tCategory] ON 
GO
INSERT [sSurvey].[tCategory] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (4, N'HealthCare', 1, CAST(N'2024-07-26T22:48:50.887' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tCategory] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (5, N'Education', 1, CAST(N'2024-07-26T22:48:51.003' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tCategory] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (6, N'Election', 1, CAST(N'2024-07-26T22:48:51.003' AS DateTime), N'US1001', NULL, NULL)
GO
SET IDENTITY_INSERT [sSurvey].[tCategory] OFF
GO
SET IDENTITY_INSERT [sSurvey].[tMaster] ON 
GO
INSERT [sSurvey].[tMaster] ([Id], [Title], [CategoryId], [Description], [StartDate], [EndDate], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1001, N'Assembly Election 2024', 6, N'Assembly election 2024 maharashtra', CAST(N'2024-07-26T22:54:49.480' AS DateTime), NULL, 1, CAST(N'2024-07-26T22:54:49.480' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tMaster] ([Id], [Title], [CategoryId], [Description], [StartDate], [EndDate], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1002, N'Fitness Survey 2024', 4, N'Fitness 2024 maharashtra', CAST(N'2024-07-26T23:43:09.677' AS DateTime), NULL, 0, CAST(N'2024-07-26T23:43:09.677' AS DateTime), N'US1001', NULL, NULL)
GO
SET IDENTITY_INSERT [sSurvey].[tMaster] OFF
GO
SET IDENTITY_INSERT [sSurvey].[tOptionMaster] ON 
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1004, N'Weekly', 1000, NULL, NULL, 1, CAST(N'2024-07-26T23:12:27.067' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1005, N'Monthly', 1000, NULL, NULL, 1, CAST(N'2024-07-26T23:12:27.110' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1006, N'Quartely', 1000, NULL, NULL, 1, CAST(N'2024-07-26T23:12:27.110' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1007, N'Annualy', 1000, NULL, NULL, 1, CAST(N'2024-07-26T23:12:27.110' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1008, N'Visa', 1001, NULL, NULL, 1, CAST(N'2024-07-26T23:13:48.977' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1009, N'Master card', 1001, NULL, NULL, 1, CAST(N'2024-07-26T23:13:48.977' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1010, N'American Express', 1001, NULL, NULL, 1, CAST(N'2024-07-26T23:13:48.977' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1011, N'Discover', 1001, NULL, NULL, 1, CAST(N'2024-07-26T23:13:48.977' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1012, N'Very Unsatisfied', 1003, NULL, NULL, 1, CAST(N'2024-07-26T23:15:21.543' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1013, N'Unsatisfied', 1003, NULL, NULL, 1, CAST(N'2024-07-26T23:15:21.547' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1014, N'Neutral', 1003, NULL, NULL, 1, CAST(N'2024-07-26T23:15:21.547' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1015, N'Satisfied', 1003, NULL, NULL, 1, CAST(N'2024-07-26T23:15:21.547' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tOptionMaster] ([Id], [Title], [QuestionId], [OptionalText], [NextQuestionId], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1016, N'Very Satisfied', 1003, NULL, NULL, 1, CAST(N'2024-07-26T23:15:21.547' AS DateTime), N'US1001', NULL, NULL)
GO
SET IDENTITY_INSERT [sSurvey].[tOptionMaster] OFF
GO
SET IDENTITY_INSERT [sSurvey].[tQuestion] ON 
GO
INSERT [sSurvey].[tQuestion] ([Id], [Title], [QuestionTypeId], [MasterId], [GuideLineText], [NextQuestionId], [IsActive], [IsMandatory], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1000, N'How often do you conduct survey?', 1, 1001, N'Please select one', 1003, 1, 1, CAST(N'2024-07-26T23:04:13.467' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestion] ([Id], [Title], [QuestionTypeId], [MasterId], [GuideLineText], [NextQuestionId], [IsActive], [IsMandatory], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1001, N'What type of credit cards do you have?', 3, 1001, N'Select all that apply', 1002, 1, 1, CAST(N'2024-07-26T23:06:02.303' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestion] ([Id], [Title], [QuestionTypeId], [MasterId], [GuideLineText], [NextQuestionId], [IsActive], [IsMandatory], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1002, N'Do you have any comments or suggestion for us?', 5, 1001, N'Describe in 2000 characters', NULL, 1, 1, CAST(N'2024-07-26T23:07:57.597' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestion] ([Id], [Title], [QuestionTypeId], [MasterId], [GuideLineText], [NextQuestionId], [IsActive], [IsMandatory], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1003, N'How satisfied are you with our services?', 2, 1001, N'Describe in 2000 characters', 1001, 1, 1, CAST(N'2024-07-26T23:09:09.217' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestion] ([Id], [Title], [QuestionTypeId], [MasterId], [GuideLineText], [NextQuestionId], [IsActive], [IsMandatory], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1004, N'Enter a valid zip code', 4, 1001, N'Describe in 2000 characters', 1000, 1, 1, CAST(N'2024-07-26T23:09:51.113' AS DateTime), N'US1001', NULL, NULL)
GO
SET IDENTITY_INSERT [sSurvey].[tQuestion] OFF
GO
SET IDENTITY_INSERT [sSurvey].[tQuestionType] ON 
GO
INSERT [sSurvey].[tQuestionType] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (1, N'Radio', 1, CAST(N'2024-07-26T22:57:21.627' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestionType] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (2, N'Dropdown', 1, CAST(N'2024-07-26T22:57:21.663' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestionType] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (3, N'Checkbox', 1, CAST(N'2024-07-26T22:57:21.663' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestionType] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (4, N'Text', 1, CAST(N'2024-07-26T22:57:21.663' AS DateTime), N'US1001', NULL, NULL)
GO
INSERT [sSurvey].[tQuestionType] ([Id], [Title], [IsActive], [CreatedDate], [CreatedBY], [UpdateDate], [UpdatedBy]) VALUES (5, N'Textarea', 1, CAST(N'2024-07-26T22:57:21.663' AS DateTime), N'US1001', NULL, NULL)
GO
SET IDENTITY_INSERT [sSurvey].[tQuestionType] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tCustome__250375B18479BCB2]    Script Date: 26/07/2024 11:46:26 pm ******/
ALTER TABLE [sSurvey].[tCustomerDetail] ADD UNIQUE NONCLUSTERED 
(
	[MobileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tMaster__2CB664DC817EE379]    Script Date: 26/07/2024 11:46:26 pm ******/
ALTER TABLE [sSurvey].[tMaster] ADD UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tOptionM__2CB664DCD09E5BC5]    Script Date: 26/07/2024 11:46:26 pm ******/
ALTER TABLE [sSurvey].[tOptionMaster] ADD UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [sSurvey].[tCategory] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sSurvey].[tCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [sSurvey].[tMaster] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [sSurvey].[tMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [sSurvey].[tOptionMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sSurvey].[tOptionMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [sSurvey].[tQuestion] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sSurvey].[tQuestion] ADD  DEFAULT ((0)) FOR [IsMandatory]
GO
ALTER TABLE [sSurvey].[tQuestion] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [sSurvey].[tQuestionType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sSurvey].[tQuestionType] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [sSurvey].[tCustomerRespondent]  WITH CHECK ADD FOREIGN KEY([MasterId])
REFERENCES [sSurvey].[tMaster] ([Id])
GO
ALTER TABLE [sSurvey].[tCustomerRespondent]  WITH CHECK ADD FOREIGN KEY([OptionId])
REFERENCES [sSurvey].[tOptionMaster] ([Id])
GO
ALTER TABLE [sSurvey].[tCustomerRespondent]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
ALTER TABLE [sSurvey].[tMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [sSurvey].[tCategory] ([Id])
GO
ALTER TABLE [sSurvey].[tMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [sSurvey].[tCategory] ([Id])
GO
ALTER TABLE [sSurvey].[tOptionMaster]  WITH CHECK ADD FOREIGN KEY([NextQuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
ALTER TABLE [sSurvey].[tOptionMaster]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
ALTER TABLE [sSurvey].[tOptionMaster]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
ALTER TABLE [sSurvey].[tQuestion]  WITH CHECK ADD FOREIGN KEY([MasterId])
REFERENCES [sSurvey].[tMaster] ([Id])
GO
ALTER TABLE [sSurvey].[tQuestion]  WITH CHECK ADD FOREIGN KEY([NextQuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
ALTER TABLE [sSurvey].[tQuestion]  WITH CHECK ADD FOREIGN KEY([QuestionTypeId])
REFERENCES [sSurvey].[tQuestionType] ([Id])
GO
ALTER TABLE [sSurvey].[tStartQuestionMap]  WITH CHECK ADD FOREIGN KEY([MasterId])
REFERENCES [sSurvey].[tMaster] ([Id])
GO
ALTER TABLE [sSurvey].[tStartQuestionMap]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [sSurvey].[tQuestion] ([Id])
GO
USE [master]
GO
ALTER DATABASE [SurveyDB] SET  READ_WRITE 
GO
