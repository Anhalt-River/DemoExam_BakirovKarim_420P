USE [LopushokBase]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 26.02.2024 16:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id_Material] [int] IDENTITY(1,1) NOT NULL,
	[Name_Material] [nvarchar](100) NULL,
	[Type_Material] [nvarchar](100) NULL,
	[Count_OnPackage] [int] NULL,
	[Unit] [nvarchar](10) NULL,
	[Count_InWarehouse] [int] NULL,
	[MinRemain] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 26.02.2024 16:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id_ProductMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Articul_Product] [int] NULL,
	[Id_Material] [int] NULL,
	[Count_Material] [int] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[Id_ProductMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26.02.2024 16:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Articul_Product] [int] IDENTITY(1,1) NOT NULL,
	[Name_Product] [nvarchar](100) NOT NULL,
	[MinPrice] [float] NULL,
	[Image] [nvarchar](50) NULL,
	[Type_Product] [nvarchar](50) NULL,
	[MinCount_Workers] [int] NULL,
	[Worshop_Number] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Articul_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (1, N' Пресс', N'Спрессованный материал серый 0x2', 5, N' м', 140, 49, 33128)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (2, N' Рулон', N'Рулон бумаги зеленый 1x1', 3, N' м', 634, 36, 26841)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (3, N' Пресс', N'Спрессованный материал розовый 2x1', 8, N' м', 636, 21, 52606)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (4, N' Гранулы', N'Гранулы для бумаги розовый 2x2', 10, N' л', 661, 16, 10608)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (5, N' Пресс', N'Спрессованный материал белый 1x1', 7, N' кг', 843, 16, 43440)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (6, N' Рулон', N'Рулон бумаги белый 1x0', 1, N' м', 501, 49, 15833)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (7, N' Нарезка', N'Переработка бумаги синий 0x3', 9, N' м', 958, 32, 14180)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (8, N' Рулон', N'Рулон бумаги цветной 2x0', 3, N' м', 386, 46, 35544)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (9, N' Рулон', N'Рулон бумаги зеленый 2x2', 8, N' кг', 593, 20, 55016)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (10, N' Рулон', N'Рулон бумаги белый 3x2', 4, N' кг', 16, 31, 53759)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (11, N' Нарезка', N'Переработка бумаги серый 3x3', 10, N' м', 89, 20, 49391)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (12, N' Гранулы', N'Гранулы для бумаги синий 1x2', 6, N' л', 112, 34, 25624)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (13, N' Рулон', N'Рулон бумаги серый 3x3', 3, N' м', 596, 8, 50247)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (14, N' Пресс', N'Спрессованный материал цветной 1x3', 3, N' м', 772, 40, 51672)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (15, N' Рулон', N'Рулон бумаги синий 2x2', 6, N' кг', 363, 47, 38450)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (16, N' Гранулы', N'Гранулы для бумаги розовый 0x3', 4, N' л', 379, 41, 3868)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (17, N' Нарезка', N'Переработка бумаги цветной 1x3', 6, N' кг', 32, 34, 37930)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (18, N' Гранулы', N'Гранулы для бумаги цветной 0x1', 5, N' л', 759, 28, 9216)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (19, N' Рулон', N'Рулон бумаги цветной 1x2', 10, N' м', 246, 37, 5016)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (20, N' Нарезка', N'Переработка бумаги серый 1x2', 8, N' м', 516, 49, 35981)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (21, N' Пресс', N'Спрессованный материал синий 0x2', 3, N' кг', 514, 40, 6555)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (22, N' Нарезка', N'Переработка бумаги синий 1x2', 4, N' м', 81, 32, 47873)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (23, N' Пресс', N'Спрессованный материал цветной 1x2', 1, N' м', 429, 47, 15802)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (24, N' Рулон', N'Рулон бумаги розовый 2x1', 1, N' м', 349, 9, 36163)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (25, N' Рулон', N'Рулон бумаги белый 3x3', 2, N' кг', 201, 46, 51261)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (26, N' Рулон', N'Рулон бумаги цветной 2x2', 10, N' кг', 534, 46, 50776)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (27, N' Пресс', N'Спрессованный материал розовый 2x3', 3, N' м', 552, 7, 4657)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (28, N' Рулон', N'Рулон бумаги розовый 3x2', 9, N' м', 144, 41, 51776)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (29, N' Нарезка', N'Переработка бумаги синий 0x1', 7, N' м', 97, 30, 47937)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (30, N' Пресс', N'Спрессованный материал розовый 1x2', 7, N' м', 509, 26, 10604)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (31, N' Рулон', N'Рулон бумаги цветной 1x3', 10, N' кг', 149, 13, 22724)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (32, N' Рулон', N'Рулон бумаги синий 3x2', 9, N' м', 508, 16, 25561)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (33, N' Рулон', N'Рулон бумаги зеленый 2x3', 2, N' м', 181, 35, 45388)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (34, N' Гранулы', N'Гранулы для бумаги розовый 0x2', 7, N' кг', 37, 50, 17227)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (35, N' Нарезка', N'Переработка бумаги цветной 0x0', 9, N' м', 508, 19, 51147)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (36, N' Нарезка', N'Переработка бумаги серый 0x2', 3, N' м', 167, 17, 10248)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (37, N' Гранулы', N'Гранулы для бумаги цветной 0x3', 10, N' кг', 962, 33, 35922)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (38, N' Рулон', N'Рулон бумаги зеленый 3x3', 3, N' м', 861, 45, 37283)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (39, N' Рулон', N'Рулон бумаги белый 0x3', 2, N' м', 933, 50, 7253)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (40, N' Рулон', N'Рулон бумаги синий 3x1', 3, N' м', 720, 11, 44675)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (41, N' Пресс', N'Спрессованный материал белый 3x3', 8, N' м', 942, 12, 17600)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (42, N' Рулон', N'Рулон бумаги белый 1x3', 2, N' кг', 382, 10, 32770)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (43, N' Нарезка', N'Переработка бумаги белый 3x0', 10, N' м', 247, 11, 39500)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (44, N' Гранулы', N'Гранулы для бумаги синий 1x3', 10, N' л', 841, 18, 38700)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (45, N' Пресс', N'Спрессованный материал синий 3x1', 10, N' м', 270, 50, 38809)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (46, N' Пресс', N'Спрессованный материал цветной 0x0', 6, N' м', 754, 24, 4611)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (47, N' Нарезка', N'Переработка бумаги цветной 0x1', 8, N' м', 833, 34, 53875)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (48, N' Пресс', N'Спрессованный материал цветной 1x0', 8, N' м', 856, 26, 12817)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (49, N' Нарезка', N'Переработка бумаги синий 0x2', 9, N' кг', 709, 47, 23157)
INSERT [dbo].[Materials] ([Id_Material], [Name_Material], [Type_Material], [Count_OnPackage], [Unit], [Count_InWarehouse], [MinRemain], [Price]) VALUES (50, N' Нарезка', N'Переработка бумаги белый 2x0', 5, N' м', 794, 17, 21637)
SET IDENTITY_INSERT [dbo].[Materials] OFF
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (101, 252485, 24, 20)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (102, 275591, 6, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (103, 400484, 6, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (104, 456129, 24, 18)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (105, 349614, 6, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (106, 334385, 24, 9)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (107, 337632, 23, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (108, 252485, 25, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (109, 444337, 39, 12)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (110, 259488, 25, 20)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (111, 349614, 42, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (112, 378723, 33, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (113, 344868, 39, 12)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (114, 425641, 25, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (115, 334385, 25, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (116, 400418, 42, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (117, 431234, 42, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (118, 253218, 42, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (119, 240580, 2, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (120, 240580, 8, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (121, 332522, 38, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (122, 268393, 13, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (123, 344868, 27, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (124, 444337, 40, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (125, 326200, 13, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (126, 256862, 13, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (127, 385037, 2, 16)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (128, 330360, 38, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (129, 303994, 21, 5)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (130, 253218, 27, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (131, 285792, 27, 14)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (132, 446348, 40, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (133, 443382, 2, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (134, 414595, 40, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (135, 443382, 36, 2)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (136, 348651, 14, 9)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (137, 310212, 13, 10)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (138, 290729, 40, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (139, 378723, 40, 14)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (140, 352034, 13, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (141, 340583, 8, 2)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (142, 259488, 21, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (143, 450659, 14, 11)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (144, 303994, 10, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (145, 446348, 22, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (146, 381110, 16, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (147, 240580, 16, 16)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (148, 330360, 16, 11)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (149, 294441, 16, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (150, 349614, 18, 20)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (151, 385037, 18, 18)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (152, 347239, 18, 18)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (153, 281425, 18, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (154, 378723, 18, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (155, 444337, 46, 11)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (156, 456129, 15, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (157, 326200, 12, 18)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (158, 377042, 46, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (159, 352034, 17, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (160, 310212, 46, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (161, 450659, 12, 6)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (162, 309862, 46, 7)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (163, 378723, 12, 14)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (164, 381110, 34, 14)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (165, 256862, 34, 5)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (166, 449359, 29, 15)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (167, 330360, 5, 13)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (168, 253218, 5, 10)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (169, 309862, 5, 5)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (170, 281425, 30, 20)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (171, 332522, 41, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (172, 444337, 48, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (173, 334385, 3, 13)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (174, 326200, 48, 18)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (175, 416066, 47, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (176, 347239, 32, 20)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (177, 352034, 32, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (178, 352034, 49, 14)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (179, 259488, 7, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (180, 377042, 35, 10)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (181, 378723, 28, 5)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (182, 252485, 35, 1)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (183, 303994, 28, 10)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (184, 256862, 7, 19)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (185, 326200, 32, 16)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (186, 344868, 28, 17)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (187, 331270, 44, 8)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (188, 390914, 37, 17)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (189, 310212, 37, 10)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (190, 344868, 44, 11)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (191, 440942, 43, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (192, 414595, 26, 16)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (193, 275591, 26, 11)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (194, 275591, 11, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (195, 326200, 44, 12)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (196, 330360, 44, 16)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (197, 416066, 11, 3)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (198, 449359, 43, 4)
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (199, 252485, 37, 10)
GO
INSERT [dbo].[ProductMaterial] ([Id_ProductMaterial], [Articul_Product], [Id_Material], [Count_Material]) VALUES (200, 281425, 44, 6)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (238686, N'Полотенце 27М Дыня', 7864, N'нет', N'Два слоя', 2, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (239349, N'Полотенце 41М Дыня', 6238, N'нет', N'Детская', 2, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (240580, N'Набор 8М Дыня', 7465, N'нет', N'Один слой', 5, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (252485, N'Бумага 33М Клубника', 4240, N'\products\paper_0.jpg', N'Три слоя', 3, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (253218, N'Бумага 20М Клубника', 11684, N'нет', N'Один слой', 2, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (256862, N'Бумага 5М Дыня', 3712, N'\products\paper_5.jpg', N'Один слой', 5, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (258695, N'Полотенце 25М Бриз', 3631, N'нет', N'Три слоя', 1, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (259488, N'Полотенце 16М Ваниль', 10095, N'нет', N'Супер мягкая', 3, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (259548, N'Набор 9М Бриз', 2317, N'нет', N'Два слоя', 4, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (260492, N'Бумага 3М Бриз', 8278, N'нет', N'Два слоя', 1, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (261465, N'Набор 10М Ваниль', 13028, N'\products\paper_12.jpg', N'Супер мягкая', 5, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (262257, N'Бумага 16М Дыня', 9107, N'нет', N'Супер мягкая', 5, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (264493, N'Полотенце 24М Дыня', 10479, N'нет', N'Два слоя', 5, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (268393, N'Бумага 32М Дыня', 7424, N'нет', N'Один слой', 4, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (275591, N'Бумага 10М Клубника', 13600, N'\products\paper_7.jpg', N'Два слоя', 4, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (277950, N'Набор 19М Бриз', 9962, N'нет', N'Детская', 5, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (278382, N'Набор 5М Бриз', 7325, N'нет', N'Два слоя', 3, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (278463, N'Полотенце 27М Ваниль', 3978, N'\products\paper_10.jpg', N'Два слоя', 3, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (278721, N'Набор 50М Клубника', 14220, N'нет', N'Детская', 3, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (279801, N'Набор 26М Дыня', 4628, N'нет', N'Два слоя', 2, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (281425, N'Набор 41М Клубника', 9908, N'\products\paper_23.jpg', N'Супер мягкая', 4, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (285792, N'Бумага 20М Бриз', 14370, N'нет', N'Детская', 3, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (289779, N'Набор 6М Бриз', 14154, N'нет', N'Один слой', 1, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (290729, N'Бумага 7М Ваниль', 6934, N'нет', N'Супер мягкая', 4, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (292206, N'Полотенце 48М Клубника', 9801, N'нет', N'Супер мягкая', 3, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (292358, N'Полотенце 37М Клубника', 3961, N'нет', N'Один слой', 4, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (294441, N'Полотенце 47М Дыня', 11460, N'нет', N'Супер мягкая', 4, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (296007, N'Набор 24М Клубника', 14162, N'нет', N'Детская', 2, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (297840, N'Полотенце 33М Бриз', 4611, N'нет', N'Супер мягкая', 4, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (298632, N'Бумага 28М Дыня', 14671, N'нет', N'Детская', 4, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (303994, N'Полотенце 45М Бриз', 13081, N'\products\paper_6.jpg', N'Детская', 2, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (309067, N'Полотенце 17М Бриз', 13825, N'\products\paper_24.jpg', N'Два слоя', 1, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (309862, N'Полотенце 14М Клубника', 10682, N'\products\paper_17.jpg', N'Два слоя', 4, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (310212, N'Полотенце 50М Ваниль', 13204, N'\products\paper_11.jpg', N'Три слоя', 1, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (310507, N'Бумага 14М Бриз', 7846, N'нет', N'Детская', 1, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (316033, N'Набор 34М Ваниль', 13533, N'нет', N'Супер мягкая', 1, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (324941, N'Полотенце 6М Ваниль', 5594, N'нет', N'Два слоя', 1, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (326200, N'Бумага 40М Бриз', 12927, N'\products\paper_19.jpg', N'Два слоя', 5, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (330360, N'Набор 43М Дыня', 5867, N'нет', N'Три слоя', 5, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (331270, N'Набор 18М Ваниль', 11171, N'нет', N'Три слоя', 4, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (331688, N'Полотенце 14М Дыня', 10330, N'нет', N'Два слоя', 2, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (332522, N'Бумага 29М Дыня', 5439, N'\products\paper_18.jpg', N'Три слоя', 3, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (334385, N'Полотенце 28М Клубника', 9208, N'\products\paper_20.jpg', N'Три слоя', 2, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (334943, N'Бумага 29М Клубника', 5997, N'нет', N'Один слой', 1, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (337632, N'Набор 24М Дыня', 11471, N'нет', N'Два слоя', 5, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (340583, N'Бумага 50М Бриз', 6788, N'\products\paper_15.jpg', N'Детская', 4, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (344868, N'Набор 29М Ваниль', 7618, N'\products\paper_4.jpg', N'Три слоя', 1, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (345239, N'Бумага 5М Бриз', 9243, N'нет', N'Один слой', 1, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (346154, N'Набор 40М Дыня', 3427, N'нет', N'Детская', 4, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (347239, N'Бумага 33М Бриз', 13767, N'нет', N'Два слоя', 5, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (348651, N'Бумага 13М Дыня', 3477, N'нет', N'Три слоя', 3, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (349614, N'Набор 12М Бриз', 2551, N'\products\paper_3.jpg', N'Детская', 1, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (349802, N'Набор 45М Бриз', 12040, N'нет', N'Два слоя', 1, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (349861, N'Бумага 13М Бриз', 3842, N'нет', N'Два слоя', 4, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (350515, N'Полотенце 7М Бриз', 4986, N'нет', N'Два слоя', 2, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (351062, N'Набор 32М Клубника', 4450, N'нет', N'Супер мягкая', 3, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (352034, N'Полотенце 45М Клубника', 11939, N'нет', N'Три слоя', 2, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (353930, N'Набор 40М Бриз', 12767, N'нет', N'Два слоя', 2, 8)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (357053, N'Полотенце 44М Ваниль', 3396, N'нет', N'Один слой', 5, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (360424, N'Набор 22М Клубника', 13524, N'нет', N'Три слоя', 4, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (365615, N'Полотенце 15М Бриз', 13013, N'нет', N'Один слой', 1, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (366160, N'Бумага 21М Дыня', 11064, N'\products\paper_2.jpg', N'Супер мягкая', 1, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (373939, N'Набор 14М Дыня', 3382, N'нет', N'Три слоя', 2, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (374263, N'Набор 24М Ваниль', 3907, N'нет', N'Один слой', 5, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (374276, N'Бумага 45М Бриз', 13605, N'нет', N'Детская', 3, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (376834, N'Набор 16М Дыня', 11927, N'нет', N'Один слой', 4, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (377042, N'Набор 20М Бриз', 9227, N'\products\paper_9.jpg', N'Один слой', 5, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (378723, N'Полотенце 47М Клубника', 3871, N'нет', N'Один слой', 4, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (379800, N'Бумага 32М Бриз', 6832, N'нет', N'Детская', 1, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (381110, N'Набор 34М Клубника', 2372, N'нет', N'Два слоя', 3, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (382063, N'Набор 19М Дыня', 2373, N'нет', N'Супер мягкая', 1, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (385037, N'Набор 41М Дыня', 3295, N'\products\paper_21.jpg', N'Один слой', 5, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (390914, N'Набор 42М Дыня', 14344, N'\products\paper_13.jpg', N'Детская', 5, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (397143, N'Полотенце 7М Ваниль', 2868, N'нет', N'Детская', 2, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (400418, N'Полотенце 11М Дыня', 11660, N'\products\paper_25.jpg', N'Супер мягкая', 2, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (400484, N'Бумага 45М Клубника', 3475, N'нет', N'Супер мягкая', 3, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (403054, N'Полотенце 17М Ваниль', 5048, N'нет', N'Супер мягкая', 2, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (414339, N'Бумага 49М Бриз', 10786, N'нет', N'Три слоя', 1, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (414595, N'Набор 50М Бриз', 10750, N'\products\paper_8.jpg', N'Два слоя', 4, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (416066, N'Бумага 38М Ваниль', 12175, N'нет', N'Три слоя', 2, 2)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (418298, N'Полотенце 16М Бриз', 7342, N'нет', N'Три слоя', 2, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (422185, N'Бумага 44М Бриз', 6441, N'нет', N'Один слой', 2, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (425641, N'Полотенце 43М Клубника', 14151, N'нет', N'Супер мягкая', 2, 6)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (426804, N'Бумага 12М Бриз', 10703, N'нет', N'Один слой', 1, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (431234, N'Набор 10М Дыня', 3816, N'\products\paper_22.jpg', N'Один слой', 4, 9)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (434113, N'Набор 25М Бриз', 13047, N'нет', N'Один слой', 4, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (437519, N'Полотенце 23М Ваниль', 3317, N'нет', N'Три слоя', 1, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (440942, N'Набор 9М Дыня', 2580, N'нет', N'Один слой', 3, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (441239, N'Набор 17М Клубника', 14863, N'нет', N'Супер мягкая', 2, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (442634, N'Бумага 37М Клубника', 12664, N'\products\paper_14.jpg', N'Детская', 5, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (443382, N'Набор 22М Бриз', 4501, N'нет', N'Детская', 3, 5)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (443538, N'Набор 43М Клубника', 13786, N'нет', N'Один слой', 1, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (444337, N'Бумага 26М Ваниль', 3007, N'нет', N'Супер мягкая', 4, 4)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (446103, N'Бумага 10М Дыня', 13975, N'нет', N'Один слой', 1, 3)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (446348, N'Бумага 9М Ваниль', 13568, N'нет', N'Детская', 3, 1)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (449359, N'Бумага 15М Клубника', 10009, N'нет', N'Два слоя', 3, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (449401, N'Набор 31М Дыня', 5236, N'нет', N'Один слой', 5, 10)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (450659, N'Набор 11М Дыня', 5956, N'\products\paper_16.jpg', N'Два слоя', 3, 7)
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (454479, N'Бумага 50М Ваниль', 3163, N'нет', N'Детская', 3, 9)
GO
INSERT [dbo].[Products] ([Articul_Product], [Name_Product], [MinPrice], [Image], [Type_Product], [MinCount_Workers], [Worshop_Number]) VALUES (456129, N'Бумага 12М Клубника', 6467, N'\products\paper_1.jpg', N'Один слой', 3, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Materials] FOREIGN KEY([Id_Material])
REFERENCES [dbo].[Materials] ([Id_Material])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Materials]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Products] FOREIGN KEY([Articul_Product])
REFERENCES [dbo].[Products] ([Articul_Product])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Products]
GO
