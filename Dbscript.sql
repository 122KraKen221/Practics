USE [PracWorks]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12.12.2023 9:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Place_Work] [int] NOT NULL,
	[Job] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Access] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 12.12.2023 9:27:56 ******/
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
/****** Object:  Table [dbo].[Level_Access]    Script Date: 12.12.2023 9:27:56 ******/
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
/****** Object:  Table [dbo].[Objects]    Script Date: 12.12.2023 9:27:56 ******/
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
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (1, N'example@mail.com', N'71234567890', 2, 1, N'user1', N'password1', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (2, N'fakeemail@gmail.com', N'79876543210', 1, 2, N'username1', N'123456789', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (3, N'notreal@yahoo.com', N'75551234567', 2, 3, N'login1', N'qwerty123', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (4, N'1', N'1', 2, 1, N'1', N'1', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (5, N'dummyaccount@hotmail.com', N'678-901-2345', 1, 3, N'admin1', N'123abc', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (6, N'fakeperson@outlook.com', N'321-654-0987', 1, 2, N'guest1', N'iloveyou1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (7, N'nonexist@gmail.com', N'890-567-1234', 2, 1, N'member1', N'secret1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (8, N'fictitious@inbox.com', N'234-567-8901', 2, 2, N'customer1', N'admin123', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (9, N'fakeaddress@yahoo.com', N'876-543-2109', 1, 1, N'client1', N'welcome1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (10, N'madeupemail@abc.com', N'459-872-1304', 2, 3, N'testuser1', N'changeme1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (11, N'unreal@gmail.com', N'804-623-9715', 2, 2, N'online1', N'letmein1', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (12, N'notvalid@hotmail.com', N'213-489-0762', 2, 3, N'newuser1', N'testpass1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (13, N'imaginary@mail.com', N'987-234-5618', 1, 2, N'coollogin1', N'pass1234', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (14, N'bogusaccount@gmail.com', N'650-872-1390', 2, 2, N'popular1', N'987654321', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (15, N'imaginaryperson@yahoo.com', N'891-234-5678', 1, 3, N'poweruser1', N'abcdefg1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (16, N'dummyemail@outlook.com', N'432-109-8765', 1, 2, N'superuser1', N'loginpass1', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (17, N'nonexisting@inbox.com', N'761-725-4083', 2, 2, N'system1', N'strongpass1', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (18, N'unrealaddress@gmail.com', N'908-376-5432', 2, 1, N'support1', N'12345678', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (19, N'fakeemail@abc.com', N'286-704-9518', 1, 3, N'hello1', N'1qaz2wsx', 2)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (20, N'notarealperson@hotmail.com', N'530-974-8623', 2, 2, N'happyuser1', N'happy@123', 1)
INSERT [dbo].[Employees] ([ID], [Email], [Phone], [Place_Work], [Job], [Login], [Password], [Access]) VALUES (21, N'unreal@asg.com', N'8754212356234', 1, 3, N'unrealemployees', N'unreal12345678!', 1)
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
