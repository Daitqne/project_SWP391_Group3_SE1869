/****** Object:  Table [dbo].[Account]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 9/16/2024 11:17:40 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Color]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Promotion]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Showroom]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cost]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installment_Plan]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installment_Schedule]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest_Bank]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showroom]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPRING_SESSION]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPRING_SESSION_ATTRIBUTES]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxe]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Car]    Script Date: 9/16/2024 11:17:40 PM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Customer__B19E45C83519658C]    Script Date: 9/16/2024 11:17:55 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Account_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Employee__B19E45C87B1D793A]    Script Date: 9/16/2024 11:17:55 PM ******/
ALTER TABLE [dbo].[Employee] ADD UNIQUE NONCLUSTERED 
(
	[Account_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Installm__703DB83D2884885A]    Script Date: 9/16/2024 11:17:55 PM ******/
ALTER TABLE [dbo].[Installment_Plan] ADD UNIQUE NONCLUSTERED 
(
	[Interest_Bank_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Order__22643D3FAC81240E]    Script Date: 9/16/2024 11:17:55 PM ******/
ALTER TABLE [dbo].[Order] ADD UNIQUE NONCLUSTERED 
(
	[Cost_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Test_Car__523653D89C914C82]    Script Date: 9/16/2024 11:17:55 PM ******/
ALTER TABLE [dbo].[Test_Car] ADD UNIQUE NONCLUSTERED 
(
	[Car_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
