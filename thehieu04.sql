USE [master]
GO
/****** Object:  Database [CarStore]    Script Date: 19/09/2024 8:18:47 am ******/
CREATE DATABASE [CarStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarStore', FILENAME = N'D:\MSSQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarStore_log', FILENAME = N'D:\MSSQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarStore] SET RECOVERY FULL 
GO
ALTER DATABASE [CarStore] SET  MULTI_USER 
GO
ALTER DATABASE [CarStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarStore', N'ON'
GO
ALTER DATABASE [CarStore] SET QUERY_STORE = OFF
GO
USE [CarStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Date_Of_Birth] [date] NULL,
	[Email] [varchar](255) NULL,
	[Full_Name] [nvarchar](255) NULL,
	[Gender] [int] NULL,
	[Image] [varchar](255) NULL,
	[Identity_Card] [varchar](255) NULL,
	[Phone_Number] [varchar](30) NULL,
	[Register_Date] [date] NULL,
	[Username] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Car_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Make] [varchar](30) NULL,
	[Model] [varchar](30) NULL,
	[Year_Of_Manufacture] [date] NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Fuel_Type] [varchar](255) NULL,
	[Transmission] [varchar](255) NULL,
	[Engine] [varchar](255) NULL,
	[Created_At] [date] NULL,
	[Status] [int] NULL,
	[Quantity] [int] NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Color]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Color](
	[Car_Color_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](255) NULL,
	[Car_ID] [bigint] NULL,
	[Color_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_Color_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Promotion]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Promotion](
	[Car_Promotion_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Car_ID] [bigint] NULL,
	[Promotion_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_Promotion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Showroom]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Showroom](
	[Car_Showroom_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Car_ID] [bigint] NULL,
	[Showroom_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_Showroom_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Car]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Car](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Car] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Color_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Color_Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Color_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cost]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cost](
	[Cost_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Insurance_ID] [bigint] NULL,
	[Taxe_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cost_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Account_ID] [bigint] NULL,
	[Role_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Account_ID] [bigint] NULL,
	[Role_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installment_Plan]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installment_Plan](
	[Installment_Plan_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Installment_Number] [int] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
	[Interest_Bank_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Installment_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installment_Schedule]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installment_Schedule](
	[Installment_Schedule_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Installment_Plan_ID] [bigint] NULL,
	[Installment_Number] [int] NULL,
	[Due_Date] [date] NULL,
	[Amount] [float] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Installment_Schedule_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[Insurance_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Promotion_ID] [bigint] NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Insurance_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest_Bank]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest_Bank](
	[Interest_Bank_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Bank_Name] [nvarchar](255) NULL,
	[First_Interest] [float] NULL,
	[Next_Interest] [float] NULL,
	[Max_Loan_Interest] [float] NULL,
	[Loan_Time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Interest_Bank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [bigint] NULL,
	[Created_At] [date] NULL,
	[Total_Amount] [float] NULL,
	[Car_ID] [bigint] NULL,
	[Installment_Plan_ID] [bigint] NULL,
	[Cost_ID] [bigint] NULL,
	[Promotion_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Installment_Schedule_ID] [bigint] NULL,
	[Payment_Date] [date] NULL,
	[Amount] [float] NULL,
	[Payment_Method] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Promotion_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](255) NULL,
	[Discount_Value] [float] NULL,
	[Start_Time] [datetime] NULL,
	[End_Time] [datetime] NULL,
	[Image] [varchar](255) NULL,
	[Sponsors] [varchar](255) NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Promotion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showroom]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showroom](
	[Showroom_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Employee_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Showroom_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPRING_SESSION]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPRING_SESSION](
	[PRIMARY_ID] [char](36) NOT NULL,
	[SESSION_ID] [char](36) NOT NULL,
	[CREATION_TIME] [bigint] NOT NULL,
	[LAST_ACCESS_TIME] [bigint] NOT NULL,
	[MAX_INACTIVE_INTERVAL] [int] NOT NULL,
	[EXPIRY_TIME] [bigint] NOT NULL,
	[PRINCIPAL_NAME] [varchar](100) NULL,
 CONSTRAINT [SPRING_SESSION_PK] PRIMARY KEY CLUSTERED 
(
	[PRIMARY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPRING_SESSION_ATTRIBUTES]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPRING_SESSION_ATTRIBUTES](
	[SESSION_PRIMARY_ID] [char](36) NOT NULL,
	[ATTRIBUTE_NAME] [varchar](200) NOT NULL,
	[ATTRIBUTE_BYTES] [image] NOT NULL,
 CONSTRAINT [SPRING_SESSION_ATTRIBUTES_PK] PRIMARY KEY CLUSTERED 
(
	[SESSION_PRIMARY_ID] ASC,
	[ATTRIBUTE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxe]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxe](
	[Taxe_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Promotion_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Taxe_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Car]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Car](
	[Test_Car_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Time] [datetime] NULL,
	[Created_At] [date] NULL,
	[Status] [int] NULL,
	[Customer_ID] [bigint] NULL,
	[Showroom_ID] [bigint] NULL,
	[Car_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Test_Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category_Car] ON 

INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (1, N'Honda City')
INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (2, N'Honda BR-V')
INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (3, N'Honda Civic')
INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (4, N'Honda HR-V')
INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (5, N'Honda CR-V')
INSERT [dbo].[Category_Car] ([category_id], [category_name]) VALUES (6, N'Honda Accord')
SET IDENTITY_INSERT [dbo].[Category_Car] OFF
GO
/****** Object:  Index [UQ__Customer__B19E45C80666852F]    Script Date: 19/09/2024 8:18:47 am ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Employee__B19E45C8C558165A]    Script Date: 19/09/2024 8:18:47 am ******/
ALTER TABLE [dbo].[Employee] ADD UNIQUE NONCLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Installm__703DB83D6531EFCE]    Script Date: 19/09/2024 8:18:47 am ******/
ALTER TABLE [dbo].[Installment_Plan] ADD UNIQUE NONCLUSTERED 
(
	[Interest_Bank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Order__22643D3F44924F36]    Script Date: 19/09/2024 8:18:47 am ******/
ALTER TABLE [dbo].[Order] ADD UNIQUE NONCLUSTERED 
(
	[Cost_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Test_Car__523653D8ABD58263]    Script Date: 19/09/2024 8:18:47 am ******/
ALTER TABLE [dbo].[Test_Car] ADD UNIQUE NONCLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Category_Car] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_Car] ([category_id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Category_Car]
GO
ALTER TABLE [dbo].[Car_Color]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_ID])
GO
ALTER TABLE [dbo].[Car_Color]  WITH CHECK ADD FOREIGN KEY([Color_ID])
REFERENCES [dbo].[Color] ([Color_ID])
GO
ALTER TABLE [dbo].[Car_Promotion]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_ID])
GO
ALTER TABLE [dbo].[Car_Promotion]  WITH CHECK ADD FOREIGN KEY([Promotion_ID])
REFERENCES [dbo].[Promotion] ([Promotion_ID])
GO
ALTER TABLE [dbo].[Car_Showroom]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_ID])
GO
ALTER TABLE [dbo].[Car_Showroom]  WITH CHECK ADD FOREIGN KEY([Showroom_ID])
REFERENCES [dbo].[Showroom] ([Showroom_ID])
GO
ALTER TABLE [dbo].[Cost]  WITH CHECK ADD FOREIGN KEY([Insurance_ID])
REFERENCES [dbo].[Insurance] ([Insurance_ID])
GO
ALTER TABLE [dbo].[Cost]  WITH CHECK ADD FOREIGN KEY([Taxe_ID])
REFERENCES [dbo].[Taxe] ([Taxe_ID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Installment_Plan]  WITH CHECK ADD FOREIGN KEY([Interest_Bank_ID])
REFERENCES [dbo].[Interest_Bank] ([Interest_Bank_ID])
GO
ALTER TABLE [dbo].[Installment_Schedule]  WITH CHECK ADD FOREIGN KEY([Installment_Plan_ID])
REFERENCES [dbo].[Installment_Plan] ([Installment_Plan_ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Cost_ID])
REFERENCES [dbo].[Cost] ([Cost_ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Installment_Plan_ID])
REFERENCES [dbo].[Installment_Plan] ([Installment_Plan_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Installment_Schedule_ID])
REFERENCES [dbo].[Installment_Schedule] ([Installment_Schedule_ID])
GO
ALTER TABLE [dbo].[Showroom]  WITH CHECK ADD FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[SPRING_SESSION_ATTRIBUTES]  WITH CHECK ADD  CONSTRAINT [SPRING_SESSION_ATTRIBUTES_FK] FOREIGN KEY([SESSION_PRIMARY_ID])
REFERENCES [dbo].[SPRING_SESSION] ([PRIMARY_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SPRING_SESSION_ATTRIBUTES] CHECK CONSTRAINT [SPRING_SESSION_ATTRIBUTES_FK]
GO
ALTER TABLE [dbo].[Test_Car]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_ID])
GO
ALTER TABLE [dbo].[Test_Car]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Test_Car]  WITH CHECK ADD FOREIGN KEY([Showroom_ID])
REFERENCES [dbo].[Showroom] ([Showroom_ID])
GO
/****** Object:  StoredProcedure [dbo].[Category_Car_getAll]    Script Date: 19/09/2024 8:18:47 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Category_Car_getAll]
as
begin 
	select * from [dbo].[Category_Car]
	end;
GO
USE [master]
GO
ALTER DATABASE [CarStore] SET  READ_WRITE 
GO
