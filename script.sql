USE [air]
GO
/****** Object:  Table [dbo].[aircraft]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aircraft](
	[id_air] [int] NOT NULL,
	[nomber] [int] NOT NULL,
	[date] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[Load_capacity] [int] NOT NULL,
 CONSTRAINT [PK_aircraft] PRIMARY KEY CLUSTERED 
(
	[id_air] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aircraft_crews]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft_crews](
	[id_cr] [int] NOT NULL,
	[brigade_number] [int] NOT NULL,
	[plane] [nvarchar](50) NOT NULL,
	[staff_air] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Aircraft_crews] PRIMARY KEY CLUSTERED 
(
	[id_cr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departure_schedule]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departure_schedule](
	[id_dep] [int] NOT NULL,
	[plane] [nvarchar](50) NOT NULL,
	[departure_date] [date] NOT NULL,
	[departure_time] [time](7) NOT NULL,
	[place_of_departure] [nvarchar](50) NOT NULL,
	[place_of_arrival] [nvarchar](50) NOT NULL,
	[route] [nvarchar](max) NOT NULL,
	[ticket_price] [money] NOT NULL,
	[id_ti] [int] NOT NULL,
	[id_air] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id_st] [int] NOT NULL,
	[syrname] [nvarchar](25) NOT NULL,
	[name] [nvarchar](15) NOT NULL,
	[patronumic] [nvarchar](20) NOT NULL,
	[date] [date] NOT NULL,
	[date_work] [date] NOT NULL,
	[experience] [nvarchar](10) NOT NULL,
	[floor] [nvarchar](20) NOT NULL,
	[address] [nvarchar](20) NOT NULL,
	[city] [nvarchar](20) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id_st] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1](
	[id_st] [int] NOT NULL,
	[id_air] [int] NOT NULL,
	[id_cr] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_sales]    Script Date: 29.02.2024 9:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_sales](
	[id_tic] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[SNP] [nvarchar](50) NOT NULL,
	[Ps] [nvarchar](50) NOT NULL,
	[nomber] [nvarchar](50) NOT NULL,
	[quant] [int] NOT NULL,
 CONSTRAINT [PK_Ticket_sales] PRIMARY KEY CLUSTERED 
(
	[id_tic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aircraft] ([id_air], [nomber], [date], [quantity], [Load_capacity]) VALUES (1, 1, CAST(N'2024-02-20' AS Date), 10, 5000)
INSERT [dbo].[aircraft] ([id_air], [nomber], [date], [quantity], [Load_capacity]) VALUES (2, 2, CAST(N'2024-02-23' AS Date), 7, 7000)
GO
INSERT [dbo].[Aircraft_crews] ([id_cr], [brigade_number], [plane], [staff_air]) VALUES (1, 1, N'Джаушвили', N'1')
INSERT [dbo].[Aircraft_crews] ([id_cr], [brigade_number], [plane], [staff_air]) VALUES (2, 2, N'Мхитарян', N'2')
GO
INSERT [dbo].[Departure_schedule] ([id_dep], [plane], [departure_date], [departure_time], [place_of_departure], [place_of_arrival], [route], [ticket_price], [id_ti], [id_air]) VALUES (1, N'Мхитарян', CAST(N'2024-02-20' AS Date), CAST(N'01:30:00' AS Time), N'Тбилиси', N'Москва', N'Железногодск', 700000.0000, 1, 2)
GO
INSERT [dbo].[Staff] ([id_st], [syrname], [name], [patronumic], [date], [date_work], [experience], [floor], [address], [city], [phone]) VALUES (1, N'Сыроегин', N'Владислав', N'Владимирович', CAST(N'2002-06-26' AS Date), CAST(N'2024-02-20' AS Date), N'5', N'3', N'Центральная 8', N'Бор', N'893453434')
GO
INSERT [dbo].[Ticket_sales] ([id_tic], [date], [SNP], [Ps], [nomber], [quant]) VALUES (1, CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'Вирясов Роман Михайлович', N'239244432', N'839394334', 10)
GO
ALTER TABLE [dbo].[Departure_schedule]  WITH CHECK ADD  CONSTRAINT [FK_Departure_schedule_aircraft] FOREIGN KEY([id_air])
REFERENCES [dbo].[aircraft] ([id_air])
GO
ALTER TABLE [dbo].[Departure_schedule] CHECK CONSTRAINT [FK_Departure_schedule_aircraft]
GO
ALTER TABLE [dbo].[Departure_schedule]  WITH CHECK ADD  CONSTRAINT [FK_Departure_schedule_Ticket_sales] FOREIGN KEY([id_ti])
REFERENCES [dbo].[Ticket_sales] ([id_tic])
GO
ALTER TABLE [dbo].[Departure_schedule] CHECK CONSTRAINT [FK_Departure_schedule_Ticket_sales]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_Table1_aircraft] FOREIGN KEY([id_air])
REFERENCES [dbo].[aircraft] ([id_air])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_Table1_aircraft]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_Table1_Aircraft_crews] FOREIGN KEY([id_cr])
REFERENCES [dbo].[Aircraft_crews] ([id_cr])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_Table1_Aircraft_crews]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_Table1_Staff] FOREIGN KEY([id_st])
REFERENCES [dbo].[Staff] ([id_st])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_Table1_Staff]
GO
