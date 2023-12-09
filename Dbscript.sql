USE [Учебная]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 09.12.2023 21:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Place_Work] [int] NULL,
	[Job] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Access] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 09.12.2023 21:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Job_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Job_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level_Access]    Script Date: 09.12.2023 21:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level_Access](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Level_Access] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 09.12.2023 21:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[Objects_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_objects] PRIMARY KEY CLUSTERED 
(
	[Objects_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (1, N'фывф', N'ффывф', 1, 1, N'1', N'1', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (4, N'фывф', N'ффывф', 1, 1, N'2', N'1', 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Job_Id], [Description], [Salary]) VALUES (1, N'Программист', 60000)
INSERT [dbo].[Jobs] ([Job_Id], [Description], [Salary]) VALUES (2, N'Рабочий', 45000)
INSERT [dbo].[Jobs] ([Job_Id], [Description], [Salary]) VALUES (3, N'Уборщик', 30000)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
SET IDENTITY_INSERT [dbo].[Level_Access] ON 

INSERT [dbo].[Level_Access] ([ID], [Level_Access]) VALUES (1, N'Администратор')
INSERT [dbo].[Level_Access] ([ID], [Level_Access]) VALUES (2, N'Сотрудник')
SET IDENTITY_INSERT [dbo].[Level_Access] OFF
GO
SET IDENTITY_INSERT [dbo].[Objects] ON 

INSERT [dbo].[Objects] ([Objects_Id], [Name]) VALUES (1, N'Цех')
INSERT [dbo].[Objects] ([Objects_Id], [Name]) VALUES (2, N'Офис')
SET IDENTITY_INSERT [dbo].[Objects] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Jobs] FOREIGN KEY([Job])
REFERENCES [dbo].[Jobs] ([Job_Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Jobs]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Level_Access] FOREIGN KEY([Access])
REFERENCES [dbo].[Level_Access] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Level_Access]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Objects] FOREIGN KEY([Place_Work])
REFERENCES [dbo].[Objects] ([Objects_Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Objects]
GO
