USE [master]
GO
/****** Object:  Database [DodoPizza]    Script Date: 19.12.2023 21:41:04 ******/
CREATE DATABASE [DodoPizza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DodoPizza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DodoPizza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DodoPizza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DodoPizza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DodoPizza] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DodoPizza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DodoPizza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DodoPizza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DodoPizza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DodoPizza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DodoPizza] SET ARITHABORT OFF 
GO
ALTER DATABASE [DodoPizza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DodoPizza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DodoPizza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DodoPizza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DodoPizza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DodoPizza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DodoPizza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DodoPizza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DodoPizza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DodoPizza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DodoPizza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DodoPizza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DodoPizza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DodoPizza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DodoPizza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DodoPizza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DodoPizza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DodoPizza] SET RECOVERY FULL 
GO
ALTER DATABASE [DodoPizza] SET  MULTI_USER 
GO
ALTER DATABASE [DodoPizza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DodoPizza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DodoPizza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DodoPizza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DodoPizza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DodoPizza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DodoPizza', N'ON'
GO
ALTER DATABASE [DodoPizza] SET QUERY_STORE = ON
GO
ALTER DATABASE [DodoPizza] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DodoPizza]
GO
/****** Object:  Table [dbo].[AddProducts]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
 CONSTRAINT [PK_AddProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dessert]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dessert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
 CONSTRAINT [PK_Dessert] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deverages]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deverages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
 CONSTRAINT [PK_Deverages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dough]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dough](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dough] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Sum] [int] NOT NULL,
	[Id_Pizza] [int] NULL,
	[Id_Snacks] [int] NULL,
	[Id_Deverages] [int] NULL,
	[Id_Dessert] [int] NULL,
	[Id_AddProducts] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pizza]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizza](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
	[Id_Dough] [int] NOT NULL,
	[Id_Size] [int] NOT NULL,
 CONSTRAINT [PK_Pizza] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sizee] [int] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Snacks]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
 CONSTRAINT [PK_Snacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2023 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Id_Roles] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddProducts] ON 

INSERT [dbo].[AddProducts] ([Id], [Name], [Sum]) VALUES (2, N'Набор юного садовода', 129)
INSERT [dbo].[AddProducts] ([Id], [Name], [Sum]) VALUES (3, N'Додо раскраска', 10)
INSERT [dbo].[AddProducts] ([Id], [Name], [Sum]) VALUES (4, N'Додо клюв', 10)
INSERT [dbo].[AddProducts] ([Id], [Name], [Sum]) VALUES (5, N'Подарочный сертификат', 1099)
SET IDENTITY_INSERT [dbo].[AddProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Dessert] ON 

INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (1, N'Макарон манго-маракуйя', 109)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (2, N'Эклеры-мини с заварным кремом', 139)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (3, N'Слоеные палочки с соусом манго и ананасами ', 249)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (4, N'Чизкей Нью-Йорк', 159)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (5, N'Чизкейк банановый с шоколадным печеньем', 149)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (6, N'Додо тарт', 189)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (7, N'Тирамису', 199)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (8, N'Шоколадный кукис', 95)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (9, N'Фондан', 309)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (10, N'Маффин соленая карамель', 99)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (11, N'Маффин три шоколада', 99)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (12, N'Рулетики с корицей', 205)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (13, N'Сорбет Турецкий гранат с клубникой', 125)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (14, N'Сорбет Бразильская маракуйя и манго', 125)
INSERT [dbo].[Dessert] ([Id], [Name], [Sum]) VALUES (15, N'Сырники с малиновым вареньем', 295)
SET IDENTITY_INSERT [dbo].[Dessert] OFF
GO
SET IDENTITY_INSERT [dbo].[Deverages] ON 

INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (1, N'Добрый Кола карамель', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (2, N'Добрый Кола ваниль', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (3, N'Добрый Кола без сахара', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (4, N'Добрый Кола', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (5, N'Добрый апельсин', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (6, N'Добрый лимон-лайм', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (7, N'Добрый магно-маракуйя', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (8, N'Rich Tea черный с лимоном', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (9, N'Rich Tea зеленый', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (10, N'Rich Tea зеленый с манго', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (11, N'Апельсиновый сок Rich', 199)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (12, N'Яблочный сок Rich', 199)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (13, N'Вишневый нектар Rich', 199)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (14, N'Ирландский капучино', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (15, N'Карамельный капучино', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (16, N'Кокосовый латте', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (17, N'Ореховый латте', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (18, N'Айс капучино', 199)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (19, N'Капучино', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (20, N'Латте', 149)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (21, N'Американо', 109)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (22, N'Банановый молочный коктейль', 215)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (23, N'Карамельное яблокомолочный коктейль', 215)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (24, N'Шоколадный молочный коктейль', 199)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (27, N'Молочный коктейль с печеньем орео', 215)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (28, N'Классический молочный коктейль ', 175)
INSERT [dbo].[Deverages] ([Id], [Name], [Sum]) VALUES (29, N'Клубничный молочный коктейль', 215)
SET IDENTITY_INSERT [dbo].[Deverages] OFF
GO
SET IDENTITY_INSERT [dbo].[Dough] ON 

INSERT [dbo].[Dough] ([Id], [Name]) VALUES (2, N'Традиционное')
INSERT [dbo].[Dough] ([Id], [Name]) VALUES (3, N'Тонкое')
SET IDENTITY_INSERT [dbo].[Dough] OFF
GO
SET IDENTITY_INSERT [dbo].[Pizza] ON 

INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (1, N'Сырная', 289, 2, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (2, N'Сырная', 479, 2, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (3, N'Сырная', 609, 2, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (4, N'Сырная', 289, 3, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (5, N'Сырная', 479, 3, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (6, N'Сырная', 609, 3, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (7, N'Пепперони фреш', 289, 2, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (8, N'Пепперони фреш', 479, 2, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (9, N'Пепперони фреш', 609, 2, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (10, N'Пепперони фреш', 289, 3, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (11, N'Пепперони фреш', 479, 3, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (12, N'Пепперони фреш ', 609, 3, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (13, N'Чоризо фреш', 289, 2, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (14, N'Чоризо фреш', 479, 2, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (15, N'Чоризо фреш', 609, 2, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (16, N'Чоризо фреш', 289, 3, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (17, N'Чоризо фреш', 479, 3, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (18, N'Чоризо фреш', 609, 3, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (19, N'Ветчина и сыр', 369, 2, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (20, N'Ветчина и сыр', 529, 2, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (21, N'Ветчина и сыр', 689, 2, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (22, N'Ветчина и сыр', 369, 3, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (23, N'Ветчина и сыр', 529, 3, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (24, N'Ветчина и сыр', 689, 3, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (25, N'Двойной цыпленок', 369, 2, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (26, N'Двойной цыпленок', 529, 2, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (28, N'Двойной цыпленок', 689, 2, 3)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (29, N'Двойной цыпленок', 369, 3, 1)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (30, N'Двойной цыпленок', 529, 3, 2)
INSERT [dbo].[Pizza] ([Id], [Name], [Sum], [Id_Dough], [Id_Size]) VALUES (31, N'Двойной цыпленок', 689, 3, 3)
SET IDENTITY_INSERT [dbo].[Pizza] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Менеджер')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Кассир')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Пиццемейкер')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (4, N'Упаковщик')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Sizee]) VALUES (1, 25)
INSERT [dbo].[Size] ([Id], [Sizee]) VALUES (2, 30)
INSERT [dbo].[Size] ([Id], [Sizee]) VALUES (3, 35)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Snacks] ON 

INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (1, N'Дэнвич ветчина и сыр', 229)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (2, N'Дэнвич чоризо барбекю', 229)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (3, N'Куриные наггетсы', 229)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (4, N'Картофель из печи с сырным соусом', 269)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (5, N'Картофель из печи', 229)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (6, N'Паста карбонара', 329)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (7, N'Паста мясная', 329)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (8, N'Паста песто', 329)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (9, N'Супермясной додстер', 209)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (10, N'Додстер с ветчиной', 169)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (11, N'Додстер', 169)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (12, N'Острый додстер', 189)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (13, N'Грибной стартер', 169)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (14, N'Сырный стартер', 169)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (15, N'Ланчбокс с куриными крыльями', 335)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (16, N'Ланчбокс с куриными кусочками', 335)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (17, N'Салат Цезарь', 230)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (18, N'Куриные кусочки', 389)
INSERT [dbo].[Snacks] ([Id], [Name], [Sum]) VALUES (19, N'Куриные крылья барбекю', 389)
SET IDENTITY_INSERT [dbo].[Snacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (2, N'Никита', N'Дружинин', 1)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (3, N'Елена', N'Чеснокова', 1)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (4, N'Мари', N'Каурова', 2)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (5, N'Жасмин', N'Рузанова', 2)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (6, N'Максим', N'Вахтеров', 3)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (7, N'Никита', N'Альвинцев', 3)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (8, N'Руслан', N'Алимов', 4)
INSERT [dbo].[Users] ([Id], [Name], [LastName], [Id_Roles]) VALUES (9, N'Юрий', N'Сухомлинов', 4)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AddProducts] FOREIGN KEY([Id_AddProducts])
REFERENCES [dbo].[AddProducts] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AddProducts]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Dessert] FOREIGN KEY([Id_Dessert])
REFERENCES [dbo].[Dessert] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Dessert]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Deverages] FOREIGN KEY([Id_Deverages])
REFERENCES [dbo].[Deverages] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Deverages]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pizza] FOREIGN KEY([Id_Pizza])
REFERENCES [dbo].[Pizza] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Pizza]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Snacks] FOREIGN KEY([Id_Snacks])
REFERENCES [dbo].[Snacks] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Snacks]
GO
ALTER TABLE [dbo].[Pizza]  WITH CHECK ADD  CONSTRAINT [FK_Pizza_Dough] FOREIGN KEY([Id_Dough])
REFERENCES [dbo].[Dough] ([Id])
GO
ALTER TABLE [dbo].[Pizza] CHECK CONSTRAINT [FK_Pizza_Dough]
GO
ALTER TABLE [dbo].[Pizza]  WITH CHECK ADD  CONSTRAINT [FK_Pizza_Size] FOREIGN KEY([Id_Size])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[Pizza] CHECK CONSTRAINT [FK_Pizza_Size]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Id_Roles])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [DodoPizza] SET  READ_WRITE 
GO
