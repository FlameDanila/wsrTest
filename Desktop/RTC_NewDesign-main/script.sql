USE [RTKDatabase]
GO
/****** Object:  Table [dbo].[Blocks]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blocks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeBlock] [nvarchar](50) NULL,
	[TypeID] [int] NULL,
	[CountCells] [int] NULL,
	[DockingEnable] [int] NULL,
	[Points] [int] NULL,
	[photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Blocks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competition]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[competitionTypeId] [int] NULL,
	[date] [date] NULL,
	[selectCategoryId] [nchar](10) NULL,
	[place] [nvarchar](50) NULL,
	[stageTypeId] [int] NULL,
 CONSTRAINT [PK_Competition] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionCategoryId]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionCategoryId](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CompetitionCategoryId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionStageId]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionStageId](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompetitionStageId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionType]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompetitionType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[birthday] [date] NULL,
	[mesto] [nvarchar](100) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[documents] [nvarchar](100) NULL,
	[name] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[login] [nvarchar](50) NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Robot]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Robot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
	[videoLink] [nvarchar](100) NULL,
 CONSTRAINT [PK_Robot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScoreTable]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chalangesScore] [int] NULL,
	[laddersScore] [int] NULL,
	[questionsScore] [int] NULL,
	[towerScore] [int] NULL,
	[penaltyScore] [int] NULL,
	[TeamId] [int] NULL,
 CONSTRAINT [PK_ScoreTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[trainerId] [int] NULL,
	[firstParticipantId] [int] NULL,
	[secondParticipantId] [int] NULL,
	[selectedStageId] [int] NULL,
	[RobotId] [int] NULL,
	[blocksScoreId] [int] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[birthday] [date] NULL,
	[mesto] [nvarchar](100) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[documents] [nvarchar](100) NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesId]    Script Date: 19.06.2022 19:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesId](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypesId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blocks] ON 

INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (1, N'Бассейн с шариками', 1, 1, 10101, 7, N'бассейн_с_шариками.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (2, N'Бревна', 1, 1, 10101, 10, N'брёвна.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (3, N'Буераки', 1, 1, 11111, 17, N'буераки.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (4, N'Гипнодиск', 1, 1, 11112, 8, N'буераки.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (5, N'Горка с трубами', 1, 1, 11111, 17, N'горка_с_трубами.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (6, N'Дверь', 1, 1, 11111, 6, N'дверь.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (7, N'Завал', 1, 1, 11111, 8, N'завал.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (8, N'Звездочки', 1, 1, 11111, 6, N'звёздочки.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (9, N'Изгородь', 1, 1, 11111, 5, N'изгородь.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (10, N'Камни', 1, 1, 11111, 3, N'камни.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (11, N'Качели', 1, 1, 10101, 8, N'качели.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (12, N'Керамзит', 1, 1, 11111, 3, N'керамзит.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (13, N'Копыто', 1, 1, 10101, 7, N'копыто.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (14, N'Крыша', 1, 1, 11111, 3, N'крыша.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (15, N'Лед', 1, 1, 11111, 1, N'лёд.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (16, N'Лес', 1, 1, 11111, 3, N'лес.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (17, N'Люк', 1, 1, 11112, 6, N'люк.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (18, N'Мины', 1, 1, 11111, 3, N'мины.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (19, N'Низкие короба', 1, 1, 11111, 3, N'низкие короба.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (20, N'Овраг', 1, 1, 11111, 4, N'Овраг.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (21, N'Песок', 1, 1, 11111, 3, N'песок.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (22, N'Провалы', 1, 1, 11111, 6, N'провалы.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (23, N'Разбитая дорога, провалы', 1, 1, 11111, 8, N'разбитая_дорога,шипы.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (24, N'Рампы "Агро"', 1, 1, 11111, 4, N'рампы_агро.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (25, N'Рампы "Волна"', 1, 1, 11111, 4, N'рампы_волна.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (26, N'Рампы прямые', 1, 1, 11111, 8, N'рампы_прямые.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (27, N'Рампы "Скаты"', 1, 1, 11111, 9, N'рампы_скаты.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (28, N'Ребра', 1, 1, 11111, 4, N'рёбра.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (29, N'Рельсы', 1, 1, 10101, 4, N'рельсы.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (30, N'Решето', 1, 1, 11111, 3, N'решето.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (31, N'Ролики', 1, 1, 10101, 3, N'ролики.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (32, N'Сетка', 1, 1, 11111, 4, N'сетка.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (33, N'Сломанные весы', 1, 1, 11111, 5, N'сломанные_весы.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (34, N'Трава', 1, 1, 11111, 1, N'Трава.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (35, N'Траншея', 1, 1, 11112, 4, N'траншея.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (36, N'Трясина', 1, 1, 11111, 8, N'трясина.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (37, N'Горка двухскатная', 2, 1, 10101, 2, N'горка_двухскатная.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (38, N'Горка каменная ', 2, 2, 10101, 4, N'горка_каменная.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (39, N'Горка травяная', 2, 2, 10101, 2, N'горка_травяная.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (40, N'Туман', 2, 3, 10001, 15, N'туман.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (41, N'Яма', 2, 1, 11111, 4, N'яма.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (42, N'Лестница', 2, 2, 1011, 40, N'лестница.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (43, N'Мини лестница', 2, 1, 10101, 20, N'мини_лестница.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (44, N'Наклонная 15', 2, 2, 10101, 2, N'наклонная_15.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (45, N'Наклонная 20', 2, 2, 10101, 3, N'наклонная_20.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (46, N'Наклонная 30', 2, 2, 10101, 3, N'наклонная_30.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (47, N'Наклонная с рампами', 2, 1, 10101, 5, N'наклонная_с_рампами.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (48, N'QR-коды', 3, 0, 0, 3, N'QR-коды.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (49, N'База', 3, 0, 0, 6, N'база.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (50, N'Вентили', 3, 0, 0, 5, N'вентили.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (51, N'Движение по линии', 3, 2, 11111, 8, N'движение_по_линии.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (52, N'Насыпь', 3, 1, 10101, 7, N'насыпь.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (53, N'Кнопка', 3, 0, 0, 3, N'кнопка.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (54, N'Маяки', 3, 0, 0, 3, N'маяки.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (55, N'Ежи противотанковые', 3, 0, 0, 0, N'ежи_противотанковые.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (56, N'Захват флага', 3, 0, 0, 3, N'захват_флага.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (57, N'Знаки опасности', 3, 0, 0, 10, N'знаки_опасности.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (58, N'Мишень', 3, 0, 0, 2, N'мишень.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (59, N'Обломки', 3, 0, 0, 3, N'обломки.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (60, N'Подвесной мост', 3, 1, 10102, 4, N'подвесной_мост.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (61, N'Переворот', 3, 0, 0, 15, N'переворот.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (62, N'Трубы', 3, 0, 0, 5, N'трубы.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (63, N'Башня', 4, 1, 10002, 0, N'башня.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (64, N'Лифт', 4, 1, 10002, 30, N'лифт.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (65, N'Прыжок веры', 4, 0, 0, 15, N'прыжок_веры.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (66, N'Кнопки в башне', 4, 0, 0, 5, N'кнопки_в_башне.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (67, N'Перенос попытки', 5, 0, 0, -5, N'krest.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (68, N'Вмешательство в управление', 5, 0, 0, -7, N'krest.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (69, N'Отвалившаяся деталь', 5, 0, 0, -3, N'krest.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (70, N'Перевод в автономный режим', 5, 0, 0, -1, N'krest.png')
INSERT [dbo].[Blocks] ([id], [TypeBlock], [TypeID], [CountCells], [DockingEnable], [Points], [photo]) VALUES (71, N'Подрыв на мине', 5, 0, 0, -1, N'krest.png')
SET IDENTITY_INSERT [dbo].[Blocks] OFF
GO
SET IDENTITY_INSERT [dbo].[Competition] ON 

INSERT [dbo].[Competition] ([id], [competitionTypeId], [date], [selectCategoryId], [place], [stageTypeId]) VALUES (1, 1, CAST(N'2022-06-20' AS Date), NULL, N'Тюменский КЦПТ', 4)
SET IDENTITY_INSERT [dbo].[Competition] OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitionCategoryId] ON 

INSERT [dbo].[CompetitionCategoryId] ([id], [name]) VALUES (1, N'Искатель')
INSERT [dbo].[CompetitionCategoryId] ([id], [name]) VALUES (2, N'Экстремал')
SET IDENTITY_INSERT [dbo].[CompetitionCategoryId] OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitionStageId] ON 

INSERT [dbo].[CompetitionStageId] ([id], [name]) VALUES (3, N'Окружные')
INSERT [dbo].[CompetitionStageId] ([id], [name]) VALUES (4, N'Региональные')
INSERT [dbo].[CompetitionStageId] ([id], [name]) VALUES (5, N'Всероссийские')
INSERT [dbo].[CompetitionStageId] ([id], [name]) VALUES (6, N'Всемирные')
SET IDENTITY_INSERT [dbo].[CompetitionStageId] OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitionType] ON 

INSERT [dbo].[CompetitionType] ([id], [name]) VALUES (1, N'Кубок RTK')
INSERT [dbo].[CompetitionType] ([id], [name]) VALUES (2, N'Кубок RTK-mini')
SET IDENTITY_INSERT [dbo].[CompetitionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Participant] ON 

INSERT [dbo].[Participant] ([id], [birthday], [mesto], [phoneNumber], [email], [documents], [name], [password], [login]) VALUES (16, CAST(N'2022-06-05' AS Date), N'Тюменский КЦПТ', N'+8 (950) 495-14-60', N'denis_danila_den2@mail.ru', N'otsrachivat.sql', N'Данила Оселедченко Александрович', N'admin', N'admin')
INSERT [dbo].[Participant] ([id], [birthday], [mesto], [phoneNumber], [email], [documents], [name], [password], [login]) VALUES (17, CAST(N'2022-06-05' AS Date), N'Тюменский КЦПТ', N'+8 (950) 495-14-60', N'denis_danila_den2@mail.ru', N'otsrachivat.sql', N'Журиков Артём Батькович', N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Participant] OFF
GO
SET IDENTITY_INSERT [dbo].[Robot] ON 

INSERT [dbo].[Robot] ([id], [photo], [description], [videoLink]) VALUES (1, N'robot1.jpg', N'Самоходный хвататель', N'https://www.youtube.com/watch?v=dQw4w9WgXcQ')
SET IDENTITY_INSERT [dbo].[Robot] OFF
GO
SET IDENTITY_INSERT [dbo].[ScoreTable] ON 

INSERT [dbo].[ScoreTable] ([id], [chalangesScore], [laddersScore], [questionsScore], [towerScore], [penaltyScore], [TeamId]) VALUES (3, 15, 20, 2, 40, -4, 1)
SET IDENTITY_INSERT [dbo].[ScoreTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([id], [name], [trainerId], [firstParticipantId], [secondParticipantId], [selectedStageId], [RobotId], [blocksScoreId]) VALUES (1, N'Команда RTK', 1, 16, 17, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([id], [birthday], [mesto], [phoneNumber], [email], [documents]) VALUES (1, CAST(N'2000-01-01' AS Date), N'Работа', N'81234567890', N'lol@gmail.com', N'doc.docx')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesId] ON 

INSERT [dbo].[TypesId] ([id], [NameType]) VALUES (1, N'Испытания')
INSERT [dbo].[TypesId] ([id], [NameType]) VALUES (2, N'Наклонные и лестницы')
INSERT [dbo].[TypesId] ([id], [NameType]) VALUES (3, N'Задания')
INSERT [dbo].[TypesId] ([id], [NameType]) VALUES (4, N'Особое испытания "Башня"')
INSERT [dbo].[TypesId] ([id], [NameType]) VALUES (5, N'Штрафы')
SET IDENTITY_INSERT [dbo].[TypesId] OFF
GO
ALTER TABLE [dbo].[Blocks]  WITH CHECK ADD  CONSTRAINT [FK_Blocks_TypesId] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypesId] ([id])
GO
ALTER TABLE [dbo].[Blocks] CHECK CONSTRAINT [FK_Blocks_TypesId]
GO
ALTER TABLE [dbo].[Competition]  WITH CHECK ADD  CONSTRAINT [FK_Competition_CompetitionType] FOREIGN KEY([competitionTypeId])
REFERENCES [dbo].[CompetitionType] ([id])
GO
ALTER TABLE [dbo].[Competition] CHECK CONSTRAINT [FK_Competition_CompetitionType]
GO
ALTER TABLE [dbo].[ScoreTable]  WITH CHECK ADD  CONSTRAINT [FK_ScoreTable_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([id])
GO
ALTER TABLE [dbo].[ScoreTable] CHECK CONSTRAINT [FK_ScoreTable_Team]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Competition] FOREIGN KEY([selectedStageId])
REFERENCES [dbo].[Competition] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Competition]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Participant] FOREIGN KEY([firstParticipantId])
REFERENCES [dbo].[Participant] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Participant]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Participant1] FOREIGN KEY([secondParticipantId])
REFERENCES [dbo].[Participant] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Participant1]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Robot] FOREIGN KEY([RobotId])
REFERENCES [dbo].[Robot] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Robot]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_ScoreTable] FOREIGN KEY([blocksScoreId])
REFERENCES [dbo].[ScoreTable] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_ScoreTable]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Trainer] FOREIGN KEY([trainerId])
REFERENCES [dbo].[Trainer] ([id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Trainer]
GO
