USE [master]
GO
/****** Object:  Database [MyBagBag]    Script Date: 10/2/2018 4:34:20 PM ******/
CREATE DATABASE [MyBagBag]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CT464', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MyBagBag.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CT464_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MyBagBag_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyBagBag].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyBagBag] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyBagBag] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyBagBag] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyBagBag] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyBagBag] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyBagBag] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MyBagBag] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyBagBag] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyBagBag] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyBagBag] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyBagBag] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyBagBag] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyBagBag] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyBagBag] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyBagBag] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyBagBag] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyBagBag] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyBagBag] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyBagBag] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyBagBag] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyBagBag] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyBagBag] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyBagBag] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyBagBag] SET  MULTI_USER 
GO
ALTER DATABASE [MyBagBag] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyBagBag] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyBagBag] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyBagBag] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MyBagBag]
GO
/****** Object:  Table [dbo].[About]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutUs] [nvarchar](50) NULL,
	[AboutImg] [nvarchar](100) NULL,
	[AboutDetails] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NULL,
	[BranchDetails] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[CategoryDetails] [nvarchar](550) NULL,
	[Status_Category] [bit] NOT NULL,
	[Create_Category] [date] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[ContactsTitle] [ntext] NULL,
	[Fax] [nvarchar](24) NULL,
	[Status] [bit] NOT NULL,
	[Create_Contact] [date] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerCode] [nvarchar](40) NOT NULL,
	[CustomerPass] [nvarchar](40) NOT NULL,
	[CustomerFullName] [nvarchar](40) NOT NULL,
	[ContactCompany] [nvarchar](30) NULL,
	[CustomerAddress] [nvarchar](60) NULL,
	[CustomerRegion] [nvarchar](15) NULL,
	[CustomerPostalCode] [nvarchar](10) NULL,
	[CustomerPhone] [nvarchar](24) NULL,
	[CustomerFax] [nvarchar](24) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DeliveryId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryTitle] [nvarchar](50) NULL,
	[ImgDelivery] [nvarchar](50) NULL,
	[DeliveryDetails] [nvarchar](50) NULL,
	[DeliveryQuestion] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[EmployeePass] [nvarchar](80) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[EmployeeGender] [bit] NULL,
	[BirthDate] [datetime] NULL,
	[EmployeImg] [nvarchar](150) NULL,
	[EmployeeEmail] [nvarchar](50) NULL,
	[EmployeeAddress] [nvarchar](60) NULL,
	[RoleId] [int] NULL,
	[Create_Emp] [date] NOT NULL,
	[Status_Emp] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgNews]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgNews](
	[ImgNewId] [int] IDENTITY(1,1) NOT NULL,
	[News_Img] [nvarchar](50) NULL,
	[SortNews] [tinyint] NOT NULL,
	[NewsId] [int] NULL,
 CONSTRAINT [PK_ImgNews] PRIMARY KEY CLUSTERED 
(
	[ImgNewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgProduct]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgProduct](
	[ImgProductId] [int] IDENTITY(1,1) NOT NULL,
	[Img_Product] [nvarchar](150) NULL,
	[SortImg] [tinyint] NOT NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_ImgProducts] PRIMARY KEY CLUSTERED 
(
	[ImgProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NewTitles] [nvarchar](50) NULL,
	[NewsDetails] [nvarchar](max) NULL,
	[NewsBy] [nvarchar](50) NULL,
	[NewsDate] [date] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [nvarchar](40) NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[OrderAddress] [nvarchar](60) NULL,
	[PaymentMethod] [int] NULL,
	[PaymentOnline] [nvarchar](250) NULL,
	[Order_Status] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SoldPrice] [decimal](18, 0) NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductDetails] [nvarchar](50) NULL,
	[ProductStatus] [bit] NULL,
	[ProductUpdate] [date] NULL,
	[ProductQty] [int] NULL,
	[ProductSold] [decimal](18, 0) NULL,
	[SupplierId] [int] NULL,
	[CategoryId] [int] NULL,
	[PromotionId] [int] NULL,
	[Create_Product] [date] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](50) NULL,
	[PromotionDetails] [ntext] NULL,
	[PromotionDiscount] [int] NULL,
	[PromotionStatus] [bit] NULL,
	[PromotionOpen] [date] NULL,
	[PromotionClose] [date] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[RoleDescription] [ntext] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/2/2018 4:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTitle] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[HomePage] [ntext] NULL,
	[Status_Supplier] [bit] NOT NULL,
	[Create_Supplier] [date] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([AboutId], [AboutUs], [AboutImg], [AboutDetails], [EmployeeCode]) VALUES (1, N'Company - BenTre -UH1', N'~/myImg/About/1/VeChungToi.jpg', N'Building a website is, in many ways, an exercise of willpower. It’s tempting to get distracted by the bells and whistles of the design process, and forget all about creating compelling content. ', N'TN007')
INSERT [dbo].[About] ([AboutId], [AboutUs], [AboutImg], [AboutDetails], [EmployeeCode]) VALUES (2, N'Company - Cai Rang', NULL, N'Building a website is, in many ways, an exercise of willpower. It’s tempting to get distracted by the bells and whistles of the design process, and forget all about creating compelling content. ', N'TN007')
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Branch] ON 

INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchDetails], [EmployeeCode]) VALUES (1, N'American', N'American', N'TN007')
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchDetails], [EmployeeCode]) VALUES (2, N'Can Tho', N'Cai Rang', N'TN005')
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchDetails], [EmployeeCode]) VALUES (3, N'Hau Giang', N'Phung Hiep', N'TN005')
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchDetails], [EmployeeCode]) VALUES (4, N'Ben Tre', N'Chau Thanh', N'TN004')
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchDetails], [EmployeeCode]) VALUES (5, N'An Giang', N'Cho Moi', N'TN003')
SET IDENTITY_INSERT [dbo].[Branch] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (1, N'HP', N'Laptop HP', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (2, N'Dell', N'Laptop Dell', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (3, N'Balo Truyền Thống', N'Balo Truyền Thống', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (4, N'MacOS', N'MacOS', 0, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (5, N'ViIO S', N'Laptop ViIO S', 0, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (6, N'IBM', N'Laptop IBM', 0, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (7, N'Túi đeo chéo', N'Túi đeo chéo', 0, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (8, N'Balo DuLich', N'BaLo Du Lich', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (9, N'Balo Tiện Ích', N'Balo Tiện Ích', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (10, N'Balo Teen', N'Balo Teen', 0, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDetails], [Status_Category], [Create_Category]) VALUES (11, N'Balo LV', N'Balo LV', 0, CAST(N'0001-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (1, N'Fbt', N'Nguyen Thi Loi', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 1, CAST(N'1990-02-02' AS Date))
INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (2, N'Fbt', N'Nguyen Thi Thuy Chung', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (3, N'Fbt', N'Huynh Quang Trung', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 1, CAST(N'2017-12-24' AS Date))
INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (4, N'Fbt', N'Nguyen Thi Loi', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 1, CAST(N'2019-01-01' AS Date))
INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (5, N'Fbt', N'Nguyen Thi Thuy Chung', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 0, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Contact] ([ContactId], [CompanyName], [ContactName], [Address], [Region], [PostalCode], [Phone], [ContactsTitle], [Fax], [Status], [Create_Contact]) VALUES (6, N'Fbt', N'Huynh Quang Trung', N'Can Tho', N'East', N'9235683', N'+(84) 9634502831', NULL, N'+84 (8) 3823 3318', 1, CAST(N'2018-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User1', N'ff%eawjdadsd_nfdka', N'Dang Tuan Huy', N'Cusc', N'Ben Tre', N'North', N'00987', N'0963505927', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User10', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User2', N'ff%eawjdadsd_nfdka', N'Trai Dai Loi', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User3', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User4', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User5', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User6', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User7', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User8', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
INSERT [dbo].[Customer] ([CustomerCode], [CustomerPass], [CustomerFullName], [ContactCompany], [CustomerAddress], [CustomerRegion], [CustomerPostalCode], [CustomerPhone], [CustomerFax], [RoleId]) VALUES (N'User9', N'ff%eawjdadsd_nfdka', N'Nguoi Khan Trang', N'Cusc', N'Can Thi', N'North', N'00987', N'0963505933', N'04.39276181.', 3)
SET IDENTITY_INSERT [dbo].[Delivery] ON 

INSERT [dbo].[Delivery] ([DeliveryId], [DeliveryTitle], [ImgDelivery], [DeliveryDetails], [DeliveryQuestion], [EmployeeCode]) VALUES (1, N'LOREM IPSUM IS SIMPLY DUMMY TEXT', N'~/myImg/Delivery/1/VanChuyen.png', N'Lorem ipsum dolor sit amet', N'What is Lorem Ipsum?', N'TN002')
INSERT [dbo].[Delivery] ([DeliveryId], [DeliveryTitle], [ImgDelivery], [DeliveryDetails], [DeliveryQuestion], [EmployeeCode]) VALUES (2, N'LOREM IPSUM IS SIMPLY DUMMY TEXT', NULL, N'Lorem ipsum dolor sit amet', N'What is Lorem Ipsum?', N'TN006')
SET IDENTITY_INSERT [dbo].[Delivery] OFF
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'CT181', N'61fcd36c8292bdf65aab93287009f0f0', N'Đặng', N'Tuấn Huy', 0, CAST(N'2018-10-02T00:00:00.000' AS DateTime), N'~/myImg/Emp/CT181/Emp.jpg', N'huysama@gmail.com', N'Bến tre
', 1, CAST(N'0001-01-01' AS Date), 0)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'CT182', N'827ccb0eea8a706c4c34a16891f84e7b', N'Đặng', N'Huy', 1, CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'~/myImg/Emp/CT182/Emp.jpg', N'huysama@gmail.com', N'Hà Thành', 2, CAST(N'0001-01-01' AS Date), 0)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'dthuy', N'90957dd92b9eb08aa00ba8a113a07f02', N'Đặng', N'Huy', 1, CAST(N'2018-10-05T00:00:00.000' AS DateTime), NULL, N'huysama@gmail.com', N'Tiên thủy', 2, CAST(N'0001-01-01' AS Date), 0)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'MH009', N'90957dd92b9eb08aa00ba8a113a07f02', N'Đặng', N'Huy', 0, CAST(N'1998-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'<p>An Cư</p>
', 2, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN001', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dangwe', N'Tuan huy', 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'<p>Ben Tre City</p>
', 1, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN002', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dang', N'Quang', 0, CAST(N'1987-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'Ben Tre City', 2, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN003', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dang', N'Hung', 0, CAST(N'1987-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'Ben Tre City', 2, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN004', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dang', N'Hao', 0, CAST(N'1987-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'Ben Tre City', 2, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN005', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dang', N'Minh', 0, CAST(N'1998-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'<p>Ben Tre City</p>
', 1, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN006', N'90957dd92b9eb08aa00ba8a113a07f02', N'Phong', N'Ly', 0, CAST(N'1987-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'Ben Tre City', 1, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN007', N'90957dd92b9eb08aa00ba8a113a07f02', N'Dang', N'Tuan huy', 0, CAST(N'1987-12-12T00:00:00.000' AS DateTime), NULL, NULL, N'Ben Tre City', 2, CAST(N'2018-10-01' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'TN101', N'1234567', N'HUY', N'Vũ', 0, CAST(N'1997-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, CAST(N'2018-10-02' AS Date), 1)
INSERT [dbo].[Employee] ([EmployeeCode], [EmployeePass], [LastName], [FirstName], [EmployeeGender], [BirthDate], [EmployeImg], [EmployeeEmail], [EmployeeAddress], [RoleId], [Create_Emp], [Status_Emp]) VALUES (N'U16007', N'1234567', N'Đặng', N'Huy', NULL, CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'~/myImg/Emp/U16007/Emp.jpg', N'huysama@gmail.com', N'Tiên Thủy', 1, CAST(N'0001-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[ImgNews] ON 

INSERT [dbo].[ImgNews] ([ImgNewId], [News_Img], [SortNews], [NewsId]) VALUES (9, N'News1.gif', 1, 2)
INSERT [dbo].[ImgNews] ([ImgNewId], [News_Img], [SortNews], [NewsId]) VALUES (10, N'Emp.jpg', 2, 2)
SET IDENTITY_INSERT [dbo].[ImgNews] OFF
SET IDENTITY_INSERT [dbo].[ImgProduct] ON 

INSERT [dbo].[ImgProduct] ([ImgProductId], [Img_Product], [SortImg], [ProductId]) VALUES (10, N'Emp.jpg', 2, 1)
INSERT [dbo].[ImgProduct] ([ImgProductId], [Img_Product], [SortImg], [ProductId]) VALUES (11, N'Emp.jpg', 3, 1)
INSERT [dbo].[ImgProduct] ([ImgProductId], [Img_Product], [SortImg], [ProductId]) VALUES (12, N'Emp.jpg', 4, 1)
SET IDENTITY_INSERT [dbo].[ImgProduct] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (1, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (2, N'News Dayly', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (3, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (4, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (5, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (6, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (7, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
INSERT [dbo].[News] ([NewsId], [NewTitles], [NewsDetails], [NewsBy], [NewsDate], [EmployeeCode]) VALUES (8, N'Newspaper', N'Brent is heading for a 2 percent decline this week, a third consecutive weekly drop. WTI is on track for a seventh week of losses, with a fall of more than 3 percent.', N'Nguyen Hong Minh', CAST(N'2018-12-12' AS Date), N'TN004')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [CustomerCode], [OrderDate], [RequiredDate], [OrderAddress], [PaymentMethod], [PaymentOnline], [Order_Status]) VALUES (1, N'User1', CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), N'Binh Dinh', NULL, NULL, 0)
INSERT [dbo].[Order] ([OrderId], [CustomerCode], [OrderDate], [RequiredDate], [OrderAddress], [PaymentMethod], [PaymentOnline], [Order_Status]) VALUES (2, N'User2', CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), N'Binh Dinh', NULL, NULL, 0)
INSERT [dbo].[Order] ([OrderId], [CustomerCode], [OrderDate], [RequiredDate], [OrderAddress], [PaymentMethod], [PaymentOnline], [Order_Status]) VALUES (3, N'User3', CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), N'Binh Dinh', NULL, NULL, 0)
INSERT [dbo].[Order] ([OrderId], [CustomerCode], [OrderDate], [RequiredDate], [OrderAddress], [PaymentMethod], [PaymentOnline], [Order_Status]) VALUES (4, N'User4', CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), N'Binh Dinh', NULL, NULL, 0)
INSERT [dbo].[Order] ([OrderId], [CustomerCode], [OrderDate], [RequiredDate], [OrderAddress], [PaymentMethod], [PaymentOnline], [Order_Status]) VALUES (5, N'User5', CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), N'Binh Dinh', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [SoldPrice], [Quantity]) VALUES (1, 1, CAST(45000 AS Decimal(18, 0)), 45)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [SoldPrice], [Quantity]) VALUES (2, 1, CAST(45000 AS Decimal(18, 0)), 45)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [SoldPrice], [Quantity]) VALUES (3, 1, CAST(45000 AS Decimal(18, 0)), 45)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [SoldPrice], [Quantity]) VALUES (4, 1, CAST(45000 AS Decimal(18, 0)), 45)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [SoldPrice], [Quantity]) VALUES (5, 1, CAST(45000 AS Decimal(18, 0)), 45)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (1, N'Product1', N'Product1', 1, CAST(N'2018-08-17' AS Date), 87, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (2, N'Product2', N'Product2', 1, CAST(N'2018-08-17' AS Date), 87, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (3, N'Product2', N'Product2', 1, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (4, N'Product3', N'Product2', 0, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (5, N'Product4', N'Product2', 1, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (6, N'Product5', N'Product2', 1, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (7, N'Product6', N'Product2', 1, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 2, NULL, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDetails], [ProductStatus], [ProductUpdate], [ProductQty], [ProductSold], [SupplierId], [CategoryId], [PromotionId], [Create_Product]) VALUES (8, N'Product7', N'Product2', 1, CAST(N'2018-08-17' AS Date), 89, CAST(300000 AS Decimal(18, 0)), 1, 1, NULL, CAST(N'2018-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([PromotionId], [PromotionName], [PromotionDetails], [PromotionDiscount], [PromotionStatus], [PromotionOpen], [PromotionClose]) VALUES (1, N'Full moon', N'Discount 20%', 20, 1, CAST(N'2018-08-17' AS Date), CAST(N'2018-08-30' AS Date))
INSERT [dbo].[Promotion] ([PromotionId], [PromotionName], [PromotionDetails], [PromotionDiscount], [PromotionStatus], [PromotionOpen], [PromotionClose]) VALUES (2, N'Quoc Khanh 2-9', N'Discount 45%', 20, 1, CAST(N'2018-08-17' AS Date), CAST(N'2018-08-30' AS Date))
INSERT [dbo].[Promotion] ([PromotionId], [PromotionName], [PromotionDetails], [PromotionDiscount], [PromotionStatus], [PromotionOpen], [PromotionClose]) VALUES (3, N'Thuong Binh Liet Si', N'Discount 5%', 20, 1, CAST(N'2018-08-17' AS Date), CAST(N'2018-08-30' AS Date))
INSERT [dbo].[Promotion] ([PromotionId], [PromotionName], [PromotionDetails], [PromotionDiscount], [PromotionStatus], [PromotionOpen], [PromotionClose]) VALUES (4, N'20-11', N'Discount 40%', 20, 0, CAST(N'2018-08-17' AS Date), CAST(N'2018-08-30' AS Date))
SET IDENTITY_INSERT [dbo].[Promotion] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'System management')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (2, N'Monitor', N'System Admin')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (3, N'User', N'Using Client')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (1, N'Chợ Lách', N'Nguyuyễn Thành Thái', N'Cung cấp thiết bị ráp máy HP', N'Vĩnh Bình - Chợ Lách', N'0963505921', N'+84 (8) 3823 3318', N'huygama.com', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (2, N'B?n Tre', N'Nguy?n Thành Công', N'Cung cúp thi?t b? ráp máy viOI', N'Vinh Bình - Ch? Lách', N'0963505922', N'+84 (8) 3823 3318', N'huygama.com', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (3, N'Ch? G?o', N'Nguy?n Thành Danh', N'Cung cúp thi?t b? ráp máy Dell', N'Vinh Bình - Ch? Lách', N'0963505923', N'+84 (8) 3823 3318', N'huygama.vn', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (4, N'M? Cày', N'Nguy?n Thành Tiên', N'Cung cúp thi?t b? ráp máy MacOS', N'Vinh Bình - Ch? Lách', N'0963505924', N'+84 (8) 3823 3318', N'huygama.comvn', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (5, N'Gi?ng Trôm', N'Nguy?n Thành Cung', N'Cung cúp thi?t b? ráp máy IMB', N'Vinh Bình - Ch? Lách', N'0963505925', N'+84 (8) 3823 3318', N'huygama.xyz', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (6, N'Ba Tri', N'Nguy?n Thành Phú', N'Cung cúp các dòng RAM', N'Vinh Bình - Ch? Lách', N'0963505925', N'+84 (8) 3823 3318', N'huygama.info', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (7, N'Bình Ð?i', N'Nguy?n Thành Trung', N'Cung cúp thi?t b? ráp máy ToShiBa', N'Vinh Bình - Ch? Lách', N'0963505927', N'+84 (8) 3823 3318', N'huygama.futo', 1, CAST(N'2018-10-01' AS Date))
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [ContactName], [ContactTitle], [Address], [Phone], [Fax], [HomePage], [Status_Supplier], [Create_Supplier]) VALUES (8, N'Châu Thành B', N'Ð?ng Tu?n Huy', N'Cung cúp thi?t b? ráp máy Asus', N'B?n Tre', N'0963505927', N'+84 (8) 3823 3318', N'huygama.io', 1, CAST(N'2018-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Supplier] OFF
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((0)) FOR [Status_Category]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Create_Category]  DEFAULT (getdate()) FOR [Create_Category]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Create_Contact]  DEFAULT (getdate()) FOR [Create_Contact]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_RoleId_1]  DEFAULT ((2)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeGender]  DEFAULT ((0)) FOR [EmployeeGender]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_RoleId_1]  DEFAULT ((1)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Create_Emp]  DEFAULT (getdate()) FOR [Create_Emp]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Status_Emp]  DEFAULT ((1)) FOR [Status_Emp]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Order_Status]  DEFAULT ((0)) FOR [Order_Status]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_SoldPrice]  DEFAULT ((0)) FOR [SoldPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductUpdate_1]  DEFAULT (getdate()) FOR [ProductUpdate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Create_Product]  DEFAULT (getdate()) FOR [Create_Product]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF_Supplier_Status_Supplier]  DEFAULT ((0)) FOR [Status_Supplier]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF_Supplier_Create_Supplier]  DEFAULT (getdate()) FOR [Create_Supplier]
GO
ALTER TABLE [dbo].[About]  WITH CHECK ADD  CONSTRAINT [FK_About_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[About] CHECK CONSTRAINT [FK_About_Employee]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Employee]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Role]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[ImgNews]  WITH CHECK ADD  CONSTRAINT [FK_ImgNews_News] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([NewsId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgNews] CHECK CONSTRAINT [FK_ImgNews_News]
GO
ALTER TABLE [dbo].[ImgProduct]  WITH CHECK ADD  CONSTRAINT [FK_ImgProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgProduct] CHECK CONSTRAINT [FK_ImgProducts_Products]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Employee]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[Customer] ([CustomerCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[PaymentMethod] ([PaymentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentMethod]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Promotion] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([PromotionId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Promotion]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Supplier]
GO
USE [master]
GO
ALTER DATABASE [MyBagBag] SET  READ_WRITE 
GO
