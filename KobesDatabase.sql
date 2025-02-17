USE [master]
GO
/****** Object:  Database [KobesDatabase]    Script Date: 2/17/2025 5:53:29 AM ******/
CREATE DATABASE [KobesDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KobesDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVERTEST\MSSQL\DATA\KobesDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KobesDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVERTEST\MSSQL\DATA\KobesDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KobesDatabase] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KobesDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KobesDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KobesDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KobesDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KobesDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KobesDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [KobesDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KobesDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KobesDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KobesDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KobesDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KobesDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KobesDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KobesDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KobesDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KobesDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KobesDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KobesDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KobesDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KobesDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KobesDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KobesDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KobesDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KobesDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KobesDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [KobesDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KobesDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KobesDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KobesDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KobesDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KobesDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KobesDatabase] SET QUERY_STORE = ON
GO
ALTER DATABASE [KobesDatabase] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KobesDatabase]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2/17/2025 5:53:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NULL,
	[State] [nvarchar](50) NULL,
	[Postal] [int] NULL,
 CONSTRAINT [PK__Address__091C2AFB4BDB7297] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/17/2025 5:53:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [bigint] NULL,
 CONSTRAINT [PK__Contact__5C66259B28B49A4C] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/17/2025 5:53:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Employee__7AD04F11A536C7AA] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (1, 1, N'Oregon', 97128)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (2, 2, N'Washington', 89127)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (3, 3, N'Utah', 89393)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (4, 4, N'California', 92292)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (5, 5, N'Texas', 49928)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (6, 6, N'New York', 33902)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (7, 7, N'Tennessee', 80202)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (8, 8, N'Kentucky', 18822)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (9, 9, N'Louisiana', 54848)
INSERT [dbo].[Address] ([AddressId], [EmployeeId], [State], [Postal]) VALUES (10, 10, N'Florida', 12345)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (1, 1, NULL, NULL)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (2, 2, N'anothername@gmail.com', 9876898765)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (3, 3, N'notANemail@gmail.com', 5035903421)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (4, 4, N'ray''star@live.com', 9876898765)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (5, 5, N'3SPED@something.com', NULL)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (6, 6, N'spooky@gmail.com', 9876898765)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (7, 7, N'esiugfewoguhewhoig342089@live.com', 5035903421)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (8, 8, N'Minion@live.com', 9876898765)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (9, 9, N'Who''sAccountIsThis@gmail.com', 5035903421)
INSERT [dbo].[Contact] ([ContactId], [EmployeeId], [Email], [Phone]) VALUES (11, 10, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (1, N'Simeon', N'Taylor')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (2, N'Druso', N'Escalante')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (3, N'Jacob', N'MacFarland')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (4, N'Astel', N'Magadan')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (5, N'Chewy', N'Bacca')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (6, N'Han', N'Solo')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (7, N'Johnny', N'Thompson')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (8, N'Sha''Hala', N'ReySter')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (9, N'Pretty', N'Cool')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (10, N'Abc', N'Xyz')
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName]) VALUES (11, N'O', N'A')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [Address_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [Address_Employee]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [Contact_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [Contact_Employee]
GO
USE [master]
GO
ALTER DATABASE [KobesDatabase] SET  READ_WRITE 
GO
