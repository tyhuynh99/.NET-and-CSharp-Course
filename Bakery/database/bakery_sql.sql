USE [master]
GO
/****** Object:  Database [Bakery]    Script Date: 12/17/2019 17:20:51 ******/
CREATE DATABASE [Bakery] ON  PRIMARY 
( NAME = N'ClothingShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClothingShop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClothingShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bakery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bakery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bakery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Bakery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Bakery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Bakery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Bakery] SET ARITHABORT OFF
GO
ALTER DATABASE [Bakery] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Bakery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Bakery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Bakery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Bakery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Bakery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Bakery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Bakery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Bakery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Bakery] SET  DISABLE_BROKER
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Bakery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Bakery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Bakery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Bakery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Bakery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Bakery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Bakery] SET  READ_WRITE
GO
ALTER DATABASE [Bakery] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Bakery] SET  MULTI_USER
GO
ALTER DATABASE [Bakery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Bakery] SET DB_CHAINING OFF
GO
USE [Bakery]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/17/2019 17:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProId] [nvarchar](20) NOT NULL,
	[ProName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[ImgUrl] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-01', N'Pizza Demo 1', 15000, N'Available', N'~/img/c1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 26)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-02', N'Pizza Demo 2', 25000, N'Available', N'~/img/c2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 5)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-03', N'Bread Demo 1', 30000, N'Available', N'~/img/c3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 100)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-04', N'Bread Demo 2', 25001, N'Available', N'~/img/c4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 20)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-05', N'Burger Demo 1', 12341, N'Available', N'~/img/c1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 56)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-06', N'Burger Demo 2', 64621, N'Available', N'~/img/c3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 45)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-07', N'Chicken Demo 1', 23000, N'Available', N'~/img/c4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 98)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-08', N'Chicken Demo 2', 76800, N'Available', N'~/img/c2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 63)
/****** Object:  Table [dbo].[Account]    Script Date: 12/17/2019 17:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[RoleID] [nvarchar](10) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Img] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin1', N'1', N'admin', N'Demo Admin 1', CAST(0x81400B00 AS Date), N'HN', N'admin1@gmail.com', N'img/face/face1.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin2', N'2', N'admin', N'Demo Admin 2', CAST(0x81400B00 AS Date), N'HN', N'admin2@gmail.com', N'img/face/face3.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user1', N'1', N'user', N'Demo User 1', CAST(0x81400B00 AS Date), N'HCM', N'user1@gmail.com', N'img/faces-clipart/pic2.png')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user2', N'2', N'user', N'Demo User 2', CAST(0x81400B00 AS Date), N'HCM', N'user2@gmail.com', N'img/faces-clipart/pic1.png')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user3', N'3', N'user', N'Demo User 3', CAST(0x81400B00 AS Date), N'HCM', N'user3@gmail.com', N'img/faces-clipart/pic4.png')
/****** Object:  Table [dbo].[Order]    Script Date: 12/17/2019 17:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [nvarchar](20) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Total] [float] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[PaymentId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-01', CAST(0x7F400B00 AS Date), N'user1', N'Processing', 40000, N'Dist. 9, HCMC', N'Paypal')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-02', CAST(0x7E400B00 AS Date), N'user2', N'Delivered', 12341, N'Dist. 5, HCMC', N'COD')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-03', CAST(0x7E400B00 AS Date), N'user3', N'Processing', 46000, N'Dist. 1, HCMC', N'Visa')
/****** Object:  Table [dbo].[Cart]    Script Date: 12/17/2019 17:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Username] [nvarchar](20) NOT NULL,
	[ProId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([Username], [ProId], [Quantity]) VALUES (N'user1', N'Pro-01', 2)
INSERT [dbo].[Cart] ([Username], [ProId], [Quantity]) VALUES (N'user1', N'Pro-03', 3)
INSERT [dbo].[Cart] ([Username], [ProId], [Quantity]) VALUES (N'user2', N'Pro-01', 2)
INSERT [dbo].[Cart] ([Username], [ProId], [Quantity]) VALUES (N'user2', N'Pro-05', 3)
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/17/2019 17:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [nvarchar](20) NOT NULL,
	[ProId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-01', 1, N'Delivered')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-02', 1, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-02', N'Pro-05', 1, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-03', N'Pro-07', 2, N'Processing')
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 12/17/2019 17:20:52 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_Cart_Account]    Script Date: 12/17/2019 17:20:52 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
/****** Object:  ForeignKey [FK_Cart_Product]    Script Date: 12/17/2019 17:20:52 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProId])
REFERENCES [dbo].[Product] ([ProId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 12/17/2019 17:20:52 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 12/17/2019 17:20:52 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProId])
REFERENCES [dbo].[Product] ([ProId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
