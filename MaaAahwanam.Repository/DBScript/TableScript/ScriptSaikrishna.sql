USE [master]
GO
/****** Object:  Database [MaaAahwanam]    Script Date: 15/07/2016 13:38:08 ******/
CREATE DATABASE [MaaAahwanam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaaAahwanam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MaaAahwanam.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MaaAahwanam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MaaAahwanam_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MaaAahwanam] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaaAahwanam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaaAahwanam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaaAahwanam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaaAahwanam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaaAahwanam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaaAahwanam] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaaAahwanam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MaaAahwanam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaaAahwanam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaaAahwanam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaaAahwanam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaaAahwanam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaaAahwanam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaaAahwanam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaaAahwanam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaaAahwanam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MaaAahwanam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaaAahwanam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaaAahwanam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaaAahwanam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaaAahwanam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaaAahwanam] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MaaAahwanam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaaAahwanam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MaaAahwanam] SET  MULTI_USER 
GO
ALTER DATABASE [MaaAahwanam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaaAahwanam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaaAahwanam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaaAahwanam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MaaAahwanam] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MaaAahwanam]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminTestimonialPaths]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTestimonialPaths](
	[PathId] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [bigint] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[VideoPath] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdminTestimonialPaths] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdminTestimonials]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTestimonials](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdminTestimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AuditLogDetails]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](256) NOT NULL,
	[OriginalValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[AuditLogId] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.AuditLogDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AuditLogs]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogs](
	[AuditLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[EventDateUTC] [datetime] NOT NULL,
	[EventType] [int] NOT NULL,
	[TypeFullName] [nvarchar](512) NOT NULL,
	[RecordId] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AuditLogs] PRIMARY KEY CLUSTERED 
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartId] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[ServiceType] [nvarchar](max) NULL,
	[ServicePrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Perunitprice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountPrice] [decimal](18, 2) NOT NULL,
	[Orderedby] [bigint] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.CartItems] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommentDetails]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentDetails](
	[CommentDetId] [bigint] IDENTITY(1,1) NOT NULL,
	[CommentId] [bigint] NOT NULL,
	[UserLoginId] [int] NOT NULL,
	[CommentDetails] [nvarchar](max) NULL,
	[CommentDate] [datetime] NULL,
	[AttachFileName] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CommentDetails] PRIMARY KEY CLUSTERED 
(
	[CommentDetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceId] [nvarchar](max) NULL,
	[ServiceType] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enquiries]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enquiries](
	[EnquiryId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonName] [nvarchar](max) NULL,
	[SenderEmailId] [nvarchar](max) NULL,
	[SenderPhone] [nvarchar](max) NULL,
	[EnquiryTitle] [nvarchar](max) NULL,
	[EnquiryDetails] [nvarchar](max) NULL,
	[EnquiryDate] [datetime] NULL,
	[EnquiryStatus] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Enquiries] PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventDates]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventDates](
	[EventDateId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventId] [bigint] NOT NULL,
	[StartDate] [datetime] NULL,
	[StartTime] [nvarchar](max) NULL,
	[EndDate] [datetime] NULL,
	[EndTime] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EventDates] PRIMARY KEY CLUSTERED 
(
	[EventDateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventInformations]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventInformations](
	[EventId] [nvarchar](128) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[EventName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EventInformations] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventsandTips]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsandTips](
	[EventId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Person] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Eventstartdate] [datetime] NULL,
	[Eventenddate] [datetime] NULL,
	[Imageid] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EventsandTips] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssueDetails]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueDetails](
	[TicketCommuId] [bigint] IDENTITY(1,1) NOT NULL,
	[TicketId] [bigint] NOT NULL,
	[Msg] [nvarchar](max) NULL,
	[RepliedBy] [bigint] NOT NULL,
	[ReplayedDate] [datetime] NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IssueDetails] PRIMARY KEY CLUSTERED 
(
	[TicketCommuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssueTickets]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueTickets](
	[TicketId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLoginId] [bigint] NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[IssueType] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Severity] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[ClosedDate] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.IssueTickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[ServiceType] [nvarchar](max) NULL,
	[ServicePrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[PerunitPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountPrice] [decimal](18, 2) NOT NULL,
	[OrderBy] [bigint] NOT NULL,
	[PaymentId] [bigint] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderedBy] [bigint] NOT NULL,
	[OrderNumber] [bigint] NOT NULL,
	[PaymentId] [bigint] NOT NULL,
	[OrderDate] [datetime] NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersServiceRequests]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersServiceRequests](
	[OrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[ResponseId] [bigint] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[PaymentId] [bigint] NOT NULL,
	[ServiceType] [nvarchar](max) NULL,
	[OrderNumber] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.OrdersServiceRequests] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[Service] [nvarchar](max) NULL,
	[ServiceId] [bigint] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRequests](
	[RequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[Budget] [decimal](18, 2) NOT NULL,
	[ServiceType] [nvarchar](max) NULL,
	[Preferences] [nvarchar](max) NULL,
	[EventName] [nvarchar](max) NULL,
	[EventAddress] [nvarchar](max) NULL,
	[EventLocation] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNo] [nvarchar](max) NULL,
	[EventStartDate] [datetime] NULL,
	[EventStartTime] [datetime] NULL,
	[EventEnddate] [datetime] NULL,
	[EventEndtime] [datetime] NULL,
	[VendorId] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceResponses]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceResponses](
	[ResponseId] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[RequestedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ServiceResponses] PRIMARY KEY CLUSTERED 
(
	[ResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteFaqs]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteFaqs](
	[FaqId] [bigint] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SiteFaqs] PRIMARY KEY CLUSTERED 
(
	[FaqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[SubscriptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailId] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Subscriptions] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAddBooks]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddBooks](
	[AddBookId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLoginId] [bigint] NOT NULL,
	[PersonName] [nvarchar](max) NULL,
	[PersonAddress] [nvarchar](max) NULL,
	[PersonLocation] [nvarchar](max) NULL,
	[PersonCity] [nvarchar](max) NULL,
	[PersonPhone] [nvarchar](max) NULL,
	[PersonEmail] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserAddBooks] PRIMARY KEY CLUSTERED 
(
	[AddBookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLoginId] [bigint] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UserPhone] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[UserImgId] [nvarchar](max) NULL,
	[UserImgName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[AlternativeEmailID] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Landmark] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[UserLoginId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[UserType] [nvarchar](max) NULL,
	[RegDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserLogins] PRIMARY KEY CLUSTERED 
(
	[UserLoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogInTimings]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogInTimings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserLogInTimings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorImages]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorImages](
	[ImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[ImageName] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.VendorImages] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendormasters]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendormasters](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[BusinessName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Landmark] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](max) NULL,
	[LandlineNumber] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Experience] [nvarchar](max) NULL,
	[EstablishedYear] [nvarchar](max) NULL,
	[ServicType] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Vendormasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsBeautyServices]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsBeautyServices](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[Category] [nvarchar](max) NULL,
	[BridalMakeupStartsFrom] [decimal](18, 2) NOT NULL,
	[PartyMakeupStartsFrom] [decimal](18, 2) NOT NULL,
	[HomeServices] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsBeautyServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsCaterings]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsCaterings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[CuisineType] [nvarchar](max) NULL,
	[Veg] [decimal](18, 2) NOT NULL,
	[NonVeg] [decimal](18, 2) NOT NULL,
	[MinOrder] [nvarchar](max) NULL,
	[MaxOrder] [nvarchar](max) NULL,
	[MineralWaterIncluded] [nvarchar](max) NULL,
	[Menuitems] [nvarchar](max) NULL,
	[LiveCookingStation] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsCaterings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsDecorators]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsDecorators](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[DecorationType] [nvarchar](max) NULL,
	[StartingPrice] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsDecorators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsEntertainments]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsEntertainments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[Category] [nvarchar](max) NULL,
	[StartingPrice] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsEntertainments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsEventOrganisers]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsEventOrganisers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[StartingPrice] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsEventOrganisers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsGifts]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsGifts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[GiftType] [nvarchar](max) NULL,
	[MinOrder] [nvarchar](max) NULL,
	[MaxOrder] [nvarchar](max) NULL,
	[GiftCost] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.VendorsGifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsInvitationCards]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsInvitationCards](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[CardType] [nvarchar](max) NULL,
	[DesignName] [nvarchar](max) NULL,
	[CardCost] [decimal](18, 2) NOT NULL,
	[CardCostWithPrint] [decimal](18, 2) NOT NULL,
	[MinOrder] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsInvitationCards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsOthers]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsOthers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[ItemCost] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[MinOrder] [nvarchar](max) NULL CONSTRAINT [DF__VendorsOt__MinOr__76619304]  DEFAULT ((0)),
	[MaxOrder] [nvarchar](max) NULL CONSTRAINT [DF__VendorsOt__MaxOr__7755B73D]  DEFAULT ((0)),
 CONSTRAINT [PK_dbo.VendorsOthers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsPhotographies]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsPhotographies](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[PhotographyType] [nvarchar](max) NULL,
	[PreWeddingShoot] [nvarchar](max) NULL,
	[StartingPrice] [decimal](18, 2) NOT NULL,
	[PriorBookingsDays] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsPhotographies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsTravelandAccomodations]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsTravelandAccomodations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NULL,
	[Category] [nvarchar](max) NULL,
	[Startsfrom] [decimal](18, 2) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsTravelandAccomodations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorsWeddingCollections]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsWeddingCollections](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[OnlineStore] [nvarchar](max) NULL,
	[InStore] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorsWeddingCollections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorVenues]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorVenues](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorMasterId] [bigint] NOT NULL,
	[VenueType] [nvarchar](max) NULL,
	[Food] [nvarchar](max) NULL,
	[CockTails] [nvarchar](max) NULL,
	[Rooms] [nvarchar](max) NULL,
	[SeatingCapacity] [int] NOT NULL,
	[DiningCapacity] [int] NOT NULL,
	[Minimumseatingcapacity] [int] NOT NULL,
	[Maximumcapacity] [int] NOT NULL,
	[VegLunchCost] [decimal](18, 2) NOT NULL,
	[NonVegLunchCost] [decimal](18, 2) NOT NULL,
	[VegDinnerCost] [decimal](18, 2) NOT NULL,
	[NonVegDinnerCost] [decimal](18, 2) NOT NULL,
	[MinOrder] [nvarchar](max) NULL,
	[MaxOrder] [nvarchar](max) NULL,
	[DecorationAllowed] [nvarchar](max) NULL,
	[HallType] [nvarchar](max) NULL,
	[Wifi] [nvarchar](max) NULL,
	[Menuwiththenoofitems] [nvarchar](max) NULL,
	[Distancefrommainplaceslike] [nvarchar](max) NULL,
	[LiveCookingStation] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.VendorVenues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201606171003510_migrations_date_06172016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33896BE5F60DFC1C8D5EEA0274E55FFA0BB909A41E224DDC124957492AADA999B0623D1362712E912A5FC60B04FB617FB48FB0A4BEA5F2465933245DB895040212679BE4351E71C1E1E1E91FFF73FFF7BF8D7E730183DC28822823FEEBDDB3FD81B41EC111FE1D9C7BD249EFEF9E7BDBFFEE5DFFFEDF0D40F9F475F8A76DFF3768C12D38F7BF3385E7C188FA9378721A0FB21F22242C934DEF74838063E19BF3F38F865FCEEDD1832883D86351A1DDE243846214C7FB09F13823DB88813105C121F06342F6735B729EAE81308215D000F7EDCBB04E008CC9F0006E1FE0D5C108A6212BDECFBF77BA3A30001D6A15B184CF746006312839875F7C3670A6FE388E0D9ED821580E0EE650159BB290828CC1FE343D55CF7890EDEF3271A5784059497D098848680EFBECF87682C92771AE8BD7208D9209EB2C18E5FF853A703F971EFC80F11BE8394BD0382D980EC8D44A61F2641C4099AE39DBD9D7D91FCBB91DCE8BB5258984CF17FDF8D2649102711FC886112479CEA3AB90F90F737F872471E20FE889320A8F79BF59CD5350A58D1754416308A5F6EE0347F9A737F6F346ED28D45C292AC46933DDF398E7FFA616FF4893107F7012CC5A23616B74CC2E0AF10C308C4D0BF06710C23CC31603AB012778117FFBFE0C6E49069D61E1BB0E70B8867F19C0FF0F3DEE80C3D43BF28C97BF01923A6888C288E12B88AC909A45E841699C0F4CCEB340428E89DCBE785CF87FBF865D59BD2823961FF1540FCEF3B14AE24BD65EF3FA1961FF4705CA9A3919232B99BAFA9A81C62C3CACABBD045610B3A574ABB9AD70AFA10CC60F6CA7AD6932FC887C409A737AF91898FE20B325BA6857711F01E60748AF980F827F7CCB589E173BC3F2121D3C1523173A4EF46CBDB578AF9FDFE4F7A8AF9C3F497F7607A70FFCBC1CFDE0FE0007451D2A27B5D14B54EEB4A599983173999654F1F5987B8B07EBE9BC8B26BA8072918C728BBCD1CD7FD5AA9211E273A63242B46E2C777EFB546C290FB0DF448E4576F5DC1F9FD8F3F59E1FC093CA2592A38421F98D89DC0983927CC44DCC0206D42E768910F6D219A599B3F524D3E8B487843829AE056B57FDC81680663F644A4B5C92D49226F5D8392E1D9332B19DE961A976D77D78B9F2BD4C896300BDCAF22344318045F4090F46FCF3EC127378CF46705035DB7A3E485062F51F2C20E7452F20988E2F3188686BE7B41B6617F3DED46078D2DE85C69ED17887D12ADEBB5DFC2E81179B03129F7A51239AFEB0879951F0C3D14F278CC75C4FECA63723FEF8D6E3DC09FE1BDB94FC08637E897C5358C128CE245AF4C7E4F402E06E5EBFDDE1CE504518F2438EEAD9B05837E47FC2AF26104FDFB35D761BD2CA636BF6AD437CCCC0B825C18CCEC7246B569B39CF5A29365AE485D19E7DCD42D5D1C5835AA6E0CF8A03F5C90562F5EDAB5A858A86C832EB1BEACA14E39B52B8DD256E2D58113E6E022DC00EA30B336DE67FF3A51B0EB10423C8A63E0CDCF50009D448CDE7ACCF4147F4B50F462681E72AA0D1B86BC175DAC428DD459DC820D0BC14E84FA962DB660946E033A99D339B7EB39C10E02BCD97BBB4371E08C992BA359B0EB60437252471ECF842FA1A297DEF95C13CA56C713D6DEC584B50078554C719872AC4C398FA56B6036E914749B9E768A7E749A78EAC4AEA69E94E9DAB1B718449D3CBA94306BD8BB05EDA40E8CCC49F706C5E76288A7240AF3CC3973FDAF916F8319E86C0296FA65EFDEFFDCCFDE15F3D3D6350369EF9DCC9347BE1F41DABF3B73413CE0242F8F6B9F0357A616867F0DAE99A385C59033E96A06A080CFB78B2ED63F277D2596BF7FC7CFCD3AD9656EB333639D2688BE12E3D6FB063375F0429CEC195D20FCE0264B91F25591DF65B5C2A921F6BBD0A6428DFA0F09BA98E7B661375D7BE23BA734819D76E26A941B9EF6EE90F70063BEB5937499FC047277532067BBEEAAE792CE7A579A1BB808D0FA4AC361C04B37EFF0ADFBA7A9B26512D3454D33CAAD50D3EE1AEAFAC300797FBB83C459096D64EFD0496A4A72FF4FE8C5FDF3818F3072110F70B3ADE9687B2B207437CCA7B65D4BD5C3D0A2A5341BB665A55A9B9A324D7B60CF92E5399FEBBEFA14E65312DEF3D7B50ED03578B1918094F6A78B2A38486C7EEBCE4AF66EBAAC296A9483820F1F30ECC6070CFD32193E6010956B5DBB6A69067AEB59DCE9BBA0B92EDFC06F09A4A66B5315C460F735EDFE0DA40B82A946BECEE60DA5258D73384759F377DFBA3378031F117C32340C19D1864D41D6892EB6A0A274650CCE5044DD24BFB84BDE4E95DD159F756D53FE61C966FC810E0EE1CEDA93B51C8EAD7235F25E74333025A92B0BF3AA8CCB71E267E7B3F4E3EFB87454589FA73082D8830E3E04719662997272956799321B922DB73FD9F21371230B9DBF28A8A8EB79FB46D4A7DD12680ADAB8035F3B1144BB0B9D2EE3B7258E49B62CEFEA9964D41B774DAAD882B96FA21B97B0190BD1F487B6275FF428EC351E9B8F88357D7CB3F18B5B14C333F0CD549D33AA0DAB31EB41170DCEC95C29EF8451CD8883CF767FE71AE144B7317DAAE286AF666B60EB5433B9AFD96B33FDAC916E5849EB5DE9A2AD22BD2BB5751608DCEC3E9BEB6D359E79C816BEC7843C18CA748D72C3229DF7A2D329D015E9CEE57A5EBB3B482563E52A409271731621C9D8B98960A4AC1C7DEC94F21ABEE774E11A709DEE948156116ED886561DE962469BD43B6749DD6D675E00478CF8D8B8B1339FA3FEED8BAB99C7C924E02622FF0FB4701229E782761ECE1C78E6392727EAF3D6B3ED4AD3DA613E4BE9B6603A2BA7862EB399E6BCB28377C35C034A9F48E4465F9DEC49DFC0D9D6B88CBBA7E3E79861A48FDE45D30BEA0DEBFBB65FD692CE5D6B9E5DEC449706453257A47C433B3B28C548896A949B5620DE874E5A5410BA52253BE90319CA255B8E59F85E9A0F819B55DD1B8FB3646F2D4CDF5A2755CB4837AD6BBB36597510B1E38422CC96EC4ED4C2D9098900FB2188FA3F19698843983B2E0E9369F8FD84C08BAFDD1CF895736B7E1DD4AB8C074C751DB173B5ADEB224A79FACC7E219E1BDD3F2B1A33638CE81CFA7F87A0FFD794E50B3A59810CAB09EEA8D0630892F8A5FC2CA983AFD384187C1E67EB01671966C711F24170091E60B248D3C029BF41B4C7EF6AD9DFCEB8FD464298CB6EFFD660303AA9C5E0921B99C70205EAC1D4B8333509E2EB2C2713F317D8FFD98F9F0876C1E612E1FC28B07502B2AC2F36501017A4E02B579E73EC05890FFB77872F214E500C43076B66F40827843C30F4DBD8DD276F8331A76C4626CC42916E91B28A7C30E7CECC793EE6AC57AE965A51CCA0FB3D8E6550C7549F5839630310EE7099B30A6250CBD7B7A01B14D2A542F26F98AFA219C08876DC4E1230069574A69283A638D4945FD1B4E38CC52907AD70A6157CB89D788EDBB480E60F3D21B4C7F3755E8F15588A656A16CEF123CA746002783E691703D1C4184C85439F36F2DD6414428A666E3E53E4CF54B704BD33FA8AE239F34070FF1C45833B04CFFA7579AEE279D735414A3A58326796EC3C86E130FFF7AF12D7731293590416F3976E8A510318D4C3997AD446DDC97CCFB4EE2BF47DBEDF3327C4C1DD4E4E22010C9D44C7D93E163D012F434A8223AB731781471800EC1F791E09890F3A1CBFB30C6AB044DD2DD13645CDE9D4281969AB756F43AA969BED090902E8755733096650316793FD15E6B9DB69877A97DE73EC86CF301172F960FFF367E8A09029E5A083CE74301D6F27AEF61921FDA78A4D88F7700750D0BF06DE10E22021ED1602BE5C988005F02C5C7486AD615D32AC300969D63FCF0E2678E69876C0BEC0D94582BD79AFC1962C03B47F3E8C097B79CC5E38781A078C9CC587C53DBB1EF70D8A5CB8A320204F0E92627F0341E0C46E7F4553E424C5F709C5F3780E31215337D9BE2788C6007B902FC64280F022001EA4017AE87F508744E3FE3DD324ACF9A569EE53A62FE7F42C00335A76A4DD4BBD8B80F700A353CC3BEE9FDCF38F5BE173BCCF2FB422B8705C4BE8EF46CB092A17F6FBFD9FF45CD81FA6BFBC07D383FB5F0E7EF67E000780BF0C66CF8217F6F2EAB363732C2F21FF1C367FF2233FCDD1FF028284FD3A9006BED1F8040630AE357FB7BC391B01661D6AEDE56045A3FD2D99C6228BEF97937CC622C10FB20064AFBA5E784429F150FA3E8B71487C145F905976F4E31FEC2F61D44EB13FBA2181B2E91FB724896A9FCAC260BADF6CC55489BD4BB4606F8F49E3C7BD3F498FB514FF0E44B55B971AF822F2BB66BF19F2553E46A3A33484C1A359D403BEAC646CA8FC66C94D7643528CF85D359832214438969748087B68018295FD172895CBAB825A5E66F11E96BCC49A13B860EB1ED6D5952F69FD4E94BC84E15B355A87E39ADCC9EBE4F4E378FE054DD18905CA2D84C20A7DA630374434B7BCA23871C85B18977A1E227C0729629606716FADB28B8540E52DE2B28924A16AC88280AD54E71AB859B355D8A574CB7865D50A8CF2EDD32528857AAEC09A8028E69BB30AA4AA6A154676D1A10AA2A8D14328FADC86A3F94CA7F85B82784C5BC2296B5621F0B92D9B84658CAA4E07E51C4FF9913699AFA3066B34D1C1A400FB7768D1865756AFC03AA73481AD63DEA8D541BA43CC09504941A3760552BE6E9130F2721DEAD6276AD4EA20495759AB21A5662BB08BFB6F25B4A26205FDCA5E19F647BAA6AA1DB068B10AB1B82147462A6A5621342EF290611AD52BB01AF72748508D5A0DA456F1AA576AE0E447B72A61F23A3D94EA70C836ACAAC50AC4C62979125AA3560BA93805AC05AAA8D6C2124FDB68C1149BE961571FD5B7C1562DF4106B5F76B641D69AE8610A9FA7B5E10ACD34B1852F6D5AC185767AE8D9D7096D9859AD1E9298D0DC8629B6D343CF530ADB40F36A3DAC462E561B62A3911E6E4BB6451B8796E67ABC14DBCD6D7C144DB578E49B662DB079AD80545B6EC8AE756DA53BAA3554FAC7F27A5877455C3E4CD31F9716555ACBDF1A58EB2A60DC7C68452CA85C67957587E35B6F0E4390171C8E59130F2EE204045914A7A8B8048B05CF9AAA28F392D1ED0278DC43FFF3EDDEE8390C305B95CDE378F1613CA62934DD0F9117114AA6F13E93AF31F0C9F8FDC1C12FE377EFC6618631F6687D8CC55561C989594236B508B57C71E0C3F4F607E674837BC0DD8F891F4ACD6AABCA16B12B18A9178EF28B2B04B2A0E37F1701F66A9FF6062E0845ACEF2FFBFEBDBCD89457E539DC197B586EA0D3E78675095809C140F826048814BBB14CFF9210B7EDE82EA3FE94A6FFD7E9B3127D84C6F97E75A046853E5E7E314E1D292FD2C7A80566EB38B56263AC6CF1A74053AD0A97E115B1E93A545126A31C8E05C991E23792C84A61B0A62618E94923CCD18FB2A8A03B288C1AA6ED25F0D6A2E21465FAAF723DD54B7DEA2C7ED400A98AF5B1BE201F1219AB563C288F3BE52966734B0AD302A7A324ADA46D035C8F15D70779590C79C9EB2FEFCE68BCFBB2D460562802709FEF26C2E4D0A83144CC76C924B8AC581F8BB73F4B82407ED6668D3EE20D5F26FAE25BA84AB746D86B7EB05D71CFA32ADD85BE0DA01F6B5EFC9445A059A38F7815A119C22048B7029B90429581BB079F147055A93E523743B121212D7735EC88681B9C8670B693B60D744A210C725166E02094973334FC83B2D4600ACE826CB2E56C5418E3E55F092900F31A036B4C62E60FCA78F57203C586518251BC90F19A35FA88BF2720CF7DADA355A5066B2F443D92F0785F63E155969A2329864DA83231603E8CA07FFF221AAFB2B82FC76F9B5DDB4D99C07C57D6920554A3E918C036CA56FB97114826B02A36B6352256AD788376709070A1BE9B84ABDDBEF5E4BCB32FBA827E85CC33B216B1CF6BF4DFA54D2D6A5CC3282EEC5A2E77D47BDA2C9CAE7E5E75A87D35AA24BD8D0A0387378E81373F4301945D7CB16EB7F475A7832D45768F1D7D6F41D3D0F456CAD6F8434620EA50ADD8C847A5042B969EB57293998DE7DD9617C034E7B6469529667EF1B58C985718446FB261BA43712006701A35C6884A2B24D699A34A3AD9A830C653A9A65065622999771FBD8856322F34904242639E2CEA8B52582B37B2DF0B8015F19446C56069DD59DA3207D292AD6DC3D3B1B6EDB42B23C892C5AD5718C68F95588696911F92204B52ADD8102BFB6E44C2525D22B9F4F9B042BECB42231CB94765E1A0BF6EF5B79E766C518D97C0EA6AF35288BE95308D49893865A1A15190A7AC5AB1C182A3B83CB3B1D2280AF5712E8807E4EC8CAAD44CCC65D362A62A1329F039310C7ADA7533142EA9B9333AA4ACD4313668DE8AAF202C9AB616485DB3D64ADEB749532C8D8CD744B673BBEC99A23C215D4A9C71ADFA8AFD922E3B4C541C93A2CC2C0741CE3D307A3B083F086F262D319CFE28F7367DD97514EA0C5121F65B30CB1A43E941E27E7F5138186D6746BBFEBD991D9BBD0451C3642FA56EB7B4FC2B371E564E44BB2D5499586F4EA8863343BAA4B326485A609289B408902CE3B562332CF0A212F266CDA0816E3530FF4ED3A206AA117535B08DBA7F6DB1BDB7656B61990D8B34C5D78A0DE432B9FF27F484A491B2D024A6FF082369395795BAFC0AC1CEEEF92420546500EAE5BB659B366455B22FB7EDD8132596862569A1EB5B53F3F426F1ADD78A0DB13E25FC8818055A5161B0D2002FAA2C805AB161DF6479AC156F2A636F1BF46EA77D82FA99091675B8B357BE94BA6F7D1E3267D7CC9C5585481A3543E6AC527695338899F5B269EF87FC44B1BE8B55158F8DB1685E5740EBDAD995307D1BDCE2C019F9E3A7AA7C6326CDA642599E0E6C3B8BDBA0AA3BED46E5273BD9517135988652B711B6AB1F6F2F2B5F51AAFF92D2F31BE4A57DADD8708B55DA15EB9287981F11A450B84D7D49902724AB339F776E76DD6995ED65765E7B5EEE3A23E704B22E97C52E4374B654F838F1D3F373EA3045D9E666DFEB283B2FD583828C372A369349941229D3899A358688EADD7CA16AC82E829F8822C980171A8E774BA6A858D7055591A129D419A29EB66ED79F9A6FD71774B1BA9765CD26823A3D4CB9F2CB6854BCD629373F66D4F29CAB46359974DB10DCAC5F6DCEE1B6D3B98E4239845694193FA12AC5A0563138C1EE34323FAED79226AAD17434B08DB275C109BE897A9217197810A0B81CB3E14594A526C16A7E3A99A86A55A9819E61FA2406758AB2412FDCE945FDFC694BCAB1045247439692B70E768D4A0A6008751B88D00CFB0C42BDA198D6CF36B723A54B103584742975ABC9CB08A4D3A5AAE2CDE5745D5BFDDA3AA352AECE852A534CF5FA5CAC33459597D8F5725334550E7EBDC2144FF1294EA362B72CC84E4F97B5AB11EC99A1CE3924CB8897198E8C466539AA9ACD99229B5B2C17400555959A3DA542B16BC5065891A0CE698181EF6CE92BCAF5238B36E29BFF400B393459169ABDA1F3503ABCB1566C8C258B4EA36270009D1ADEEC32197B765789A769765B685DD9487B87105F034A9F4824257F14A5667D92B79EAA5293E8D94CF535CDAC5F9762D0BA36AD2BAF5DB2AA7B6DA8FA1AD88ED036FEEB9D879C1A7FD5F46296BDB5F647ADB2F80C9AE15833EA5788D9D18A25881A1AB194BA551B787349258AC24DEC3C663497E9756A6ABCAA4E1F357D2479BAAC15EF96CCEFF412BA71639E4DD551436AEB4E1BF9364F25C70945982DFA64D96ED6B85F5A5E00EC872012CF5E284BDFEA22D5F676757A6F98175F2B8EDB10AA8C315569D74295993C044C2255A0629DFBFD99750332A7CFEC17E2F97042576AE506683406F701A273E8FF1D0261B0A44AD3F4C0B6ECC0E16CEF8D4C84C235AF3627C4E5D0DA13E32A987E26C87E3C417B9910C711F24170091E60B248530AE959444261126E6963129D617F2F67D2D2449FC76F2484F9CB15D4B959339806D7A6A1BCAAD9AA556843D53708ED083B650B12C47D64793E6C5498F4722676CDE850A24F044B1045993ECA25C2D921110D9CAAD400093CAB90CA52A33EC108045FB9D89C632F487CE84BFD53B430E000718262180A46A7566CE0AAA2473821E48109F86DAC3ADA4F513FD846D7B6B1BA73DEAA716C85D5B78E4B2076C93CE68FC1C45BB690629D91F847311B44D5010FCDAA41A55CAB14AB65CF0010B678A9960EB4BE6AAD80D925F5B2B71219546A8B558A7FCB7515CD0046D472B87B05B68152ADC0D925AD1A74617B75E15734B53CABA810F5E55E4DBD4BD2CE9F4076CEAAD2DD5E35F2E798101ACB4F97950E1AEC5A83CFF123CA56BC1310F976757939B6BE56AFC2D925FDE64FA0084F95A546DB8E68A6F8BCA35E6ED62F5933AB5273A4AF289EB38959FCF05651BD099B36D80FB1BE9BFDB88AE7B69D6025A4BEB56821DF2523711EC35056C6AA741073D7627E3D273199456031B77585EB6A607D915F0AB24B825F7B107992942A0D7023F815FA3E0FEFCF0911F44AAADCECDA941190E838DB8CA027E0453AA749AA1ECC816B73701781471800EC1F791E09896FF3A2421316FA2642136E978C85E5702B9D4A7918F5F241C95C2B596E94597F03E8D957B095F0FACAA501B54B8A758579EA66FAAC4DC84685813B8B155865E1A0588E158BFD9FD8CD4A54226AAB4F0BF52E694CFA08B2C75A2BD6C73A23443C1C2A2D3149F6F61EEE000AA4937ACB627DAC1B42C40C9CBCC8244919704F780216C09332FFA54A830818C2ADB0629D518C09854948B37E794AF4B6364631758ED0022F561A65AC5D24D89BCBE183668D690E5B0BA85469D453F692308C945DAD5799F6B50D56AEDDEDDD942A65E72808C8939880A7A836C8200641201BB4AA541FE92B9AA2264A56629609F884E2793C879890694B52A0DCC2C492D018600F72573F04082F02E0411AA00731B6BEA4DD908DB8535E5251997EFEC45355C52625F7BCA4FC4D8B02EECE8019BC243E0C684577EBCD6108D267A7CC80A733AF0FD3B36ED893827B4061D6646FC406EA1131AD676FE885791DE13E6FB07FFB2D980488A743950D2E01465348E33BF200F1C7BDF707EFDEEF8D8E0204289F4183E9DEE8390C30FDE025342621C0986482F3716F1EC78B0FE3314D39D2FD107911A1641AEF7B241C039F8C19D6F7E377EFC6D00FC722790EAB8572F04B8142A9DF38BDA8E65BE61271E48708DFF1132643821110CE3A3AFC1B7C115F75215237705AF303C7C2FB16090F15BE23EFC6C7BD7B344BF79E5297F457C8539599245E8398F97E983784F95D4D9F922000F701239982804A722A72E0FF173CF02388BC3988FE2304CFFF59478AA3642550E3E3410B78F9C16216906A36A039968643D5D0FE0C89176467649B75A9B06FC64F5737214612CB2465DE456A395D17C92DE8FA955E99832900FFFE3E1D1B1B92F685993E620DED6DCA6DE2A3F882CCBAC86A41DB455EEBB4FDCA6C7542920D2BC91327F99BFD7C3759F672B57A968265EE7286D445DA38E51923513DE2DE882D1B2E209EC5F38F7B3F7297C010FC862F11FCEA1D2981DFFFF8D30A606369549D70B8CBB37EF173E54B5A3D9632F855C47B0D822F2048EC48F927F8640FAC5DD3456FF2C339F6E1F3C7BD7FA5941F46E7FFF54745FCDD285DFF7E181D8CFEDB96B84D4014F3AC892E8296D27610B682AE5F81AB0EE2596B2A6B5C226441169A17BAE6E6137A28642E3E5BCBB0BF68BA2879F7331B12B65464D5E646AB7E25624F2CAEB38B5F17BD32A9EE83ED3E3B5437C1F6D449E16ED89EB8E4B78EDFAFEB9A75F6A7B6D05BD4B772D90D7C9D8C5C46DAC9CE55A4FD9ABADA5D85F62C943D8BF78625AEBB175701AC217A3975BFD2D72AE61D5629E5A1B0DDED7D63E4ED885D016961397B14C7C09B9FA1005A5B906D5C2936B1683FC5DF1214BD74D1AC9CB48B5AD5487B5E2DD52EA0B062D2D9B2222A8F08B386989F016F23AA908DEC1D8A03AB8036CD400169414172288B53E384BBA0D18B15ACFA0D9976CCE70260E5CA7F3078DA06AF08BB753279057127A35727EED7ECA5ACD65FB25737A8AEFD568B4B53AD980F2BA2C660AC75E9ED6AD2399EF2C36FE54C540385EAAC4C2BA2C9EFDEFFDC2D3CB0B6E6D4EEA4B611F62C0ED0B58055DD726569456A696AAB05A7B669CAB5E8980D9BE26B1B1B0AB8CD5E6CD2D0F43563DB73D86D677358B518D91503DBA599BDC7F7A9A5C1B31649BC40F8C1DE1E36E5DE9D6FC323E3686C3D6C032B153464678DEED8E0F6BBFDA06D71CF294D60F7B8EB1DF21E60CC237E4917B32B90F76D7C39B3B5BDBE4B3AB3226F377011200BF2C671C08B9D19FE4D3A1DA90A64C2D15D05BA4BBF9B842661ABA0E37BB5B36ECA06DCDA865972FF4FE8C576B0E0238C6C2D52ECC5A32DC63D03425F89A9D0D6EFEC33980E9A5D4ABBA962B7A8896DBDCE931CD67E05294E71B1CA5A48D7E0C5CAE666DA231B52EA20B567E38AB08939337B419DDDC66DD7AC211BCE45365CBF4C866CB8A6D6AC6DA06C19F73799E194BE029A2BF00DFC9640DA69B5B1ED96F306D205C154B1FBB98566C896405B36F3F6FCB18DEBC7267C931BF888E05317E5CA28BB685745D9AF7AA51FFD5A5B58DA4D71CAAE7EB388B5B662E699883DCD35AF5E91D69FAD72D26E1A5592F6AB525BA94DC7893F83FDB99DB6672CD6AF298CF81DA6967207AD6656A46836D32B52C021C7C27C27F713B137FED6F2D62AB47AA6D85A68A776B6370BACD842BF2C85342C7B943646DCE14498AD6DBACD84D5BAC87C2A6C5B53D95FBDB54CBAA6610DCBD9294761AF5198FCB1ED89F5DB5A70DDA2189E816F5DD4829175D1889CAC5F65A80EFEB520C1BF7301B3A60E983E55B181DD8EA06D446093FBCA3E7590DA3A7D17F115E9FB9563ABAB7CA7B15B03981E43B73C7D82AD1EF811F99D0EBDC9483B9D795391EE4A86C8B5DD4FF132389B6BB70CD1EAE22D83B4B7F04AE12C66BEA6784366FADA46A0FB7E7745DDC50C34A977C512D80D555F008B60FC21EDE9D7E7C88E5ED9B472D68C91BDC0D43FD0C25A3089BFC0F37066C9A9C9D1AC89D79BDCE02E0D4757FB585A9D2EE6B1C5646DF5D180D780D22712D993616BE1FC1B38DBE8ACFC0AF4E01CDFA110E14EC7646EE79184A9955CEBAC196BF239086747E1CC3701D2CFF3BA082627EC249D0561BF226A698F43BCB6652DB0F4D1ED79AE9B16B54DACBDB2F711A6EFE3B5DAD38EEFF138A108B345833501B37A0A01C07E08223B1FA1BEF2158DED1DB3F4160A2FBEB6F75D728ED8CC4B5C5B3EF8FD6F16216DC6BA6DADEB4F9FD92FC49363ECC0D1983546740EFDBF436067D8B20D6E6BFED91BF6ADE8310409BF2126CB867C35B395559FC8EACEEA71847C105C8207982CB2FB55CFD2FB557BCA15B8661C5E9C71FB8D843097253BFAF49655938B5DF4AAD6E476B53241DC99B4360B7C81760E4AC86ED9B302555DAFD73D8A71595EACB70606BF1F0C045FB9409E632F487C68C767E1F7D6E597D5D970D014F7C60D36682D1B94DFA1485ED142D6AA11AAEE98B4E98D46FC56D57E3F267BCB42CDCA195B8070D76B03DE80605BF5790791EE5DA479EAFD55340318D1D71475B42AD38318F62D86BFA2E96050D5607C68ACF908DBB230E00F95DD243E28D3EA03134DB5E91C3FA26C1D3301913FE895128C0F8DBD9D7A48D1CC5E3A30EF5B5D3DAC807D45F19CCD60D80EAA68498695724765BD8AE783E3D5D6DD1886C334D193E05DCF494C661158CC3B5D98F406C4AF3642D6660A26B95FA1EFF350E39C104BC7793A599F3074121D6761527A025E868D9A7535F02E028F3000D83FF23C1212BFF3C523BBAD8B7A4E8CEDB0129D76DCD0DC3EA9DE8EEF0773A1CEADDB840401F4DEA640EB1D5688794E50DA452B72728EED61BD61A3CCFE4F867C9656308B079A9F116267337842BC873B6BF739DE1062695BF91602EE954DC002786B1FD08A2D21B1753B0A9390667DF36C2082678E6803EA0B9C5D24D89BF7BAE6CBF22CFAE7C398B0D7C634D9C1D338606435E023C690D70CBE157BE94741409E2CA598FC0682C09AADFB8AA6C85AE2CB138AE7F11C6242A6F672604E108D01F620F78A4380F022001EA4017AB03300438A4D6747E58852E2A174CC721647898FE20B32CB3E96FF83FD25382CA7D81FDD90A0D6B4E8CA2D0CA6FB55E16512C46811206EB8997DD813DD9C2B7C020318C3D151EACAF37518F5802F0F02EBBBBFAA0FF9B902AA9E1455CDFEFC496273939DBF18237E621FA671C42435967D33843DB4008138064243A51B573496DD39FE9425B458730217FCEE6B1CAB9F797DCE250361DC578DC8E1B8263FB2FF9B7EEDC0B3F44A5FCA87E989064C7EC13D900E81CBA86E615C74DA0F11BEE3673E8504233EDF54425CBC63A9C9AD378721607A71CFCF49CCF4416C45A577BF8A357396E71AECB3663A5DE02D35BA512A93CCBAAC52B2CB6BF559145AD2CAA868B08C5D79F7F90AA61310C53CFEAE605755A91815B51A2CB2738B551C8A1A2583F2B8633DFCD66113EA97F0D21DB4FC067705AFB246C525AB4450834179E1B7824555A76452546B72A95F86DCC2ACD1A49567AD9526EBE26AD416B665752BCBBCC56A76F57B01656E8D5A15B35A034D5EF9056C2DBC8ADA565E5983D5BC72EF5AE29297ABF0B3AB1BF4905B47AC51DBCA4577C494B749B430959AB53F63B3E5EA6EE427EDCB8C8B0A15ABAC6E35F8CAA7D3792ED327124F7A5DC2B568B1946DD648836F7E84A6825F51A3E493556AE0D74F3C543069542B39D55AAC66573F324FE6D6A85531AB35D0E3D5AA76F5CA364EBA4A579D70A3E693D7B5B149ABB5B994E787B4F2AA5A2CE158345ACDB77E3484CCB351ABE2576BA0CB2BFFA0BF8D5951DDCE2D6BA1CB4EF832B38DADD8AC9D7DB3A57637CAAFD05A7B50B558C2BC68A4CDB7FAF2A49571ADC912CE652B6DD6CDEF035AD90BCD9674A1D152BF1BCD9CEEF67E08ED9675A4D154BB27695A6F2BFFAC760957DE409B9790F4D8CA556CB7847FB3A9764FB28CAED60EE4D54BF8A62DB4D9D5F3785A99361A2D615DB5D3598D2CCD6368ED4B4BF325BD525268774FDE916EED9AA2E9926E49AD75BB946D32B6F522AF6D679C369079D5023D6DB183345638AA35540610E488624B4CB17CBA7AA114BB6A8F042AE88B2A31BED87C3845D8B48C64957587E36C08F302F693197336715F121F06342D3D1CDF24988766B35F591A6F0971C83071F6662BD0A20D5FD516413CA147451329761F0326BAE0288AD1941F5A1211369FD27406FC0282842F5EC37BE89FE3AB245E24317B6418DE072FF5C1E081C065FC0FC7529F0FAF326FD6C623B06E221ECDBEC2C7090AFCB2DF678AA4F516081E61CC37B8F9BB8CF946F7ECA544FA941E57AA03940F5F1918BD83E122E0E18D2B7CCBCC4597BE316FF202CE80F7C2CA1F51BA526E0359FD229AC37E788200B3AB21CD312A7AF693C9B01F3EFFE5FF01B981ADA970170200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201606240659109_migrations_date_06242016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA1749D9A44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211A8BE49D067AAF1C423688A76CB0E317FED4E9407EDC3BF24384EF2065EF806036207B2391E98749107182E678676F675F24FF612437FAA114162653FCDF0FA34912C449043F6298C411A7BA4EEE03E4FD15BEDC9107883FE22408EAFD663D67758D0256741D91058CE2971B38CD9FE6DCDF1B8D9B746391B024ABD164CF778EE35F7EDA1B7D66CCC17D004BB1A88DC52D9330F80962188118FAD7208E618439064C0756E22EF0E2FF17DC981C32CDDA6303F67C01F12C9EF3017EDE1B9DA167E81725790FBE60C4149111C5510257313981D48BD02213989E799D860005BD73F9B2F0F9701FBFAC7A535A3027ECBF0288FF7D87C295A4B7ECFD27D4F2831E8E2B753452522677F3351595436C58597917BA286C41E74A6957F35A411F8219CC5E59CF7AF215F99038E1F4E63532F1517C4166CBB4F02E02DE038C4E311F10FFE49EB936317C8EF72724643A582A668EF4C36879FB4A317FDCFF454F317F9AFEF61E4C0FEE7F3BF8D5FB091C802E4A5A74AF8BA2D6695D292B73F02227B3ECE923EB1017D62F771359760DF52005E31865B799E3BA5F2B35C4E344678C64C548FCFCEEBDD6481872BF811E89FCEAAD2B38BFFFF9172B9C3F8347344B0547E80313BB131833E78499881B18A44DE81C2DF2A12D44336BF347AAC96711096F485013DCAAF68F3B10CD60CC9E88B436B92549E4AD6B50323C7B6625C3DB52E3B2EDEE7AF173851AD9126681FB5584660883E02B0892FEEDD967F8E48691FEAC60A0EB7694BCD0E0254A5ED8814E4A3E01517C1EC3D0D0772FC836ECAFA7DDE8A0B1059D2BADFD0AB14FA275BDF65B183D220F3626E5BE5422E7751D21AFF283A187421E8FB98ED85F794CEED7BDD1AD07F833BC37F709D8F006FDB2B886518251BCE895C9DF12908B41F97A7F34473941D423098E7BEB66C1A0DF11BF8A7C1841FF7ECD75582F8BA9CDAF1AF50D33F38220170633BB9C516DDA2C67BDE864992B5257C63937754B1707568DAA1B033EE80F17A4D58B97762D2A162ADBA04BAC2F6BA8534EED4AA3B4957875E08439B80837803ACCAC8DF7D9BF4E14EC3A84108FE21878F33314402711A3B71E333DC5DF1314BD189A879C6AC38621EF4517AB50237516B760C342B013A1BE658B2D18A5DB804EE674CEED7A4EB083006FF6DEEE501C3863E6CA6816EC3AD8909CD491C733E14BA8E8A5773ED784B2D5F184B57731612D005E15531CA61C2B53CE63E91A984D3A05DDA6A79DA21F9D269E3AB1ABA92765BA76EC2D0651278F2E25CC1AF66E413BA9032373D2BD41F1B918E22989C23C73CE5CFF6BE4DB60063A9B80A57ED9BBF7BFF6B377C5FCB475CD40DA7B27F3E491EF4790F6EFCE5C100F38C9CBE3DAE7C095A985E15F836BE6686131E44CBA9A0128E0F3EDA28BF5CF495F89E5EFDFF173B34E7699DBECCC58A709A2AFC4B8F5BEC14C1DBC10277B4617083FB8C952A47C55E47759AD706A88FD2EB4A950A3FE43822EE6B96DD84DD79EF8CE294D60A79DB81AE586A7BD3BE43DC0986FED245D263F81DCDD14C8D9AEBBEAB9A4B3DE95E6062E02B4BED27018F0D2CD3B7CEBFE69AA6C99C47451D38C722BD4B4BB86BAFE3040DEDFEE207156421BD93B74929A92DCFF137A71FF7CE0238C5CC403DC6C6B3ADADE0A08DD0DF3A96DD752F530B46829CD866D59A9D6A6A64CD31ED8B36479CEE7BAAF3E85F99C84F7FC75AD03740D5E6C2420A5FDE9A20A0E129BDFBAB392BD9B2E6B8A1AE5A0E0C3070CBBF10143BF4C860F1844E55AD7AE5A9A81DE7A1677FA2E68AECB37F07B02A9E9DA540531D87D4DBB7F03E98260AA91AFB379436949E31CCE51D6FCDDB7EE0CDEC047049F0C0D4346B461539075A28B2DA8285D198333145137C92FEE92B7536577C5675DDB947F58B2197FA08343B8B3F6642D8763AB5C8DBC17DD0C4C49EACAC2BC2AE3729CF8D9F92CFDF83B2E1D15D6E7298C20F6A0830F419CA558A69C5CE559A6CC8664CBED4FB6FC4CDCC842E72F0A2AEA7ADEBE11F569B7049A8236EEC0D74E04D1EE42A7CBF86D8963922DCBBB7A2619F5C65D932AB660EE9BE8C6256CC64234FDA1EDC9173D0A7B8DC7E623624D1FDF6CFCE216C5F00C7C3755E78C6AC36ACC7AD04583733257CA3B615433E2E0B3DDBF718D70A2DB983E5571C357B335B075AA99DCD7ECB5997ED64837ACA4F5AE74D15691DE95DA3A0B046E769FCDF5B61ACF3C640BDF63421E0C65BA46B96191CE7BD1E914E88A74E7723DAFDD1DA492B1721520C9B8398B9064ECDC443052568E3E764A790DDF73BA700DB84E77CA40AB08376C43AB8E7431A34DEA9DB3A4EEB6332F80234647011F4B36CC8F30F39C4EFA8F013B3A0EE9537ACE96835785FD1044FD7F06C9C5D8CD94F025EA7F2A70E5243899AFDD6C9EFC032D9C6C6A70413B0F670E165139272796EEAD274696B36007D723A5DB02CFA39CC5BB381E9A2EC00E5EE3730D287D22911B7D75923E7003675BE3DDEF9E8E9F6386913E7A174D2FA837ACEFDB7EAF4E3A77AD79CCB4135D1A14C95C91F2DC83EC4C1B2325AA516E5A81781F3A695141E84A95EC647A6428976CE56CE1D3763E044EE6EEB71E12CBDE5A98BEB54EAA96916E5AD7766DB2EA2062C70945982DD9DDC4A55C1D66E92A7A33C421CC1D1787794FFC2A49E0C5D76ECE66CBB9353FE4EA55C603A6BA8ED8B9DA817711A53C7D66BF104F63EF9F158D993146740EFDBF43D0FF6BCA523B9DAC4086D5047754E8310449FC527E41D6C1D769420C3E8FB3F580B364C0E308F920B8040F3059A419FB945FF6DA5B3EEE35E3F0E28CDBEF2484B9ECF66F0D06A3935A0C2EB991792C50A01E4C8D3B539320BECE7232317F85FD1FD3F99960176C2E11CE4F6D5B2720CBFA62030571410ABE71E539C75E90F8B07F77F812E204C53074B066468F7042C80343BF8DDD7D9D381873CA6664C22C14E91629ABC80773EECC9CE763CE7AE56AA915C50CBADF937306754CF58995333600E10EF76EAB2006B57C7D0BBA41215D2A24FFDCFC2A9A018C68C7ED2401635049672A39688A434DF984A61D672C4E39688533ADE0C3EDC473DCA605347FE809A13D1E85F47AACC0522C53B3708E1F51A60313C0F349BB188826C6602A1CFAB491EF26A310523473F345297FA6BA25E89DD13714CF990782FBE7281ADC2178D6AFCB7315CFBBAE0952D2C19239B364E7310C87F9BF7F95B89E9398CC22B098BF74538C1AC0A01ECED4A336EA4EE67BA675DFA0EFF3FD9E39210EAEE172120960E8243ACEF6B1E809781952121C599DBB083CC20060FFC8F348487CD0E1A4A465508325EA6E89B6296A4EA746C9485BAD7B1B52B5DC6C4F481040AFBB9A4930838A399BECAF30CFDD4E3BD4BBF49E63377C868990CB07FB9F3F4307854C29071D74A683E9783B71B5CF08E93F556C42BC873B8082FE35F08610070969B710F0E5C2042C8067E14E3A6C0DEB9261854948B3FE797630C133C7B403F615CE2E12ECCD7B0DB66419A0FDF3614CD8CB63F6C2C1D33860E42C3E2CEED9F5B86F50E4C21D050179729014FB3B08022776FB1B9A222729BE4F289EC773880999BAC9F63D413406D8837C311602841701F0200DD043FF833A241AF7EF992661CD2F4D739F327D39A7670198D1B223ED5EEA5D04BC07189D62DE71FFE49E7FDC0A9FE37D7EF718C185E35A42FF305A4E50B9B03FEEFFA2E7C2FE34FDED3D981EDCFF76F0ABF7133800FC65307B16BCB097579F1D9B637909F9E7B0F9931FF9698EFE571024ECD78134F08DC627308071ADF9BBE5CDD90830EB506B2F072B1AED6FC9341659FCB89CE40B16097E9205207BD5F5C2234A8987D2F7598C43E2A3F882CCB2533AFF607F09A3768AFDD10D09944DFFB8254954FB541606D3FD662BA64AEC5DA2057B7B4C1A3FEEFD87F4584BF1EF4054BB20AB812F22BF6BF69B215FE563343A4A43183C9A453DE0CB4AC686CA6F96DC649759C5885F2B842913428463798984B087162058D97F8152B9BC2AA8E56516EF61C94BAC39810B7EEC258E57BEA4F53B51F212866FD5681D8E6B7227AF93D38FE3F9173445271628B7100A2BF485C2DC10D1DCF28AE2C4216F615CEA7988F01DA488591AC4BDB5CA2E160295B788CB269284AA210B02B6529D6BE066CD566197D22DE395552B30CAB74F97A014EAB9026B02A2986FCE2A90AAAA5518D99D942A88A2460FA1E8731B8EE6339DE2EF09E2316D09A7AC5985C0E7B66C129631AA3A1D94733CE547DA64BE8E1AACD144079302ECDFA1451B5E59BD02EB9CD204B68E79A35607E90E31274025058DDA1548F9BA45C2C8CB75A85B9FA851AB8324DD3AAE86949AADC02EAE2A96D08A8A15F42B7B65D81FE946B176C0A2C52AC4E2322319A9A85985D0B87345866954AFC06A5C752141356A35905AC5AB5EA981931FDDAA84C9EBF450AAC321DBB0AA162B101BA7E449688D5A2DA4E214B016A8A25A0B4B3C6DA305536CA6875D7D54DF065BB5D043AC7DD9D906596BA287297C9ED6862B34D3C416BEB4690517DAE9A1675F27B46166B57A486242731BA6D84E0F3D4F296C03CDABF5B01AB9586D888D467AB82DD9166D1C5A9AEBF1526C37B7F15134D5E2916F9AB5C0E6B502526DB921BBD6B595EEA8D650E91FCBEB61DD1571F9304D7F5C5A54692D7F6B60ADAB8071F3A115B1A0729D55D61D8E6FBD390C415E7038664D3CB888131064519CA2E2122C163C6BAAA2CC4B46B70BE0710FFD4FB77BA3E730C06C55368FE3C587F198A6D0743F445E442899C6FB4CBEC6C027E3F70707BF8DDFBD1B8719C6D8A3F53116578525276609D9D422D4F2C5810FD38B3A98D30DEE01773F267E2835ABAD2A5BC4AE60A45E38CA2FAE10C8828EFF5D04D8AB7DDA1BB82014B1BEBFECFBF7F262535E95E77067EC61B9814E9F1BD62560250403E19B102052ECC632FD4B42DCB6A3BB8CFA739AFE5FA7CF4AF4111AE7FBD5811A15FA78F91D4675A4BC481FA31698ADE3D48A8DB1B2C59F024DB52A5C8657C4A6EB5045998C72381624478ADF48222B85C19A9A60A4278D30473FCAA282EEA0306A98B697C05B8B8A5394E9BFCAF5542FF5A9B3F85103A42AD6C7FA8A7C4864AC5AF1A03CEE94A798CD2D294C0B9C8E92B492B60D703D565C1FE46531E425AFBFBC3BA3F1EECB528359A108C07DB99B089343A3C61031DB2593E0B2627D2CDEFE2C0902F9599B35FA88377C99E88B6FA12ADD1A61AFF9C176C53D8FAA7417FA36807EAC79F1531681668D3EE2558466088320DD0A6C420A5506EE1E7C52C055A5FA48DD0CC58684B4DCD5B023A26D701AC2D94EDA36D0298530C845998183505ECED0F00FCA528329380BB2C996B351618C977F25A400CC6B0CAC3189993F28E3D5CB0D141B460946F142C66BD6E823FE2D0179EE6B1DAD2A35587B21EAF17B18858557596A8EA41836A1CAC480F93082FEFD8B68BCCAE2BE1CBF6D766D376502F35D594B16508DA66300DB285BED5F462099C0AAD8D8D68858B5E20DDAC141C285FA6E12AE76FBD693F3CEBEE80AFA1532CFC85AC43EAFD17F9736B5A8710DA3B8B06BB9DC51EF69B370BAFA79D5A1F6D5A892F4362A0C1CDE3806DEFC0C055076F1C5BADDD2D79D0EB614D93D76F4BD054D43D35B295BE30F1981A843B562231F9512AC587AD6CA4D66369E775B5E00D39CDB1A55A698F9C5D732625E6110BDC986E90EC58118C069D418232AAD9058678E2AE964A3C2184FA59A429589A5CCAF726F5AC9BCD0400A098D79B2A82F4A61ADDCC87E2F0056C4531A1583A5756769CB1C484BB6B60D4FC7DAB6D3AE8C204B16B75E61183F5662195A467E48822C49B56243ACECBB11094B7589E4D2E7C30AF92E0B8D70E41E958583FEBAD5DF7ADAB145355E02ABABCD4B21FA56C2342625E294858646419EB26AC5060B8EE2F2CCC64AA328D4C7B9201E90B333AA523331974D8B99AA4CA4C0E7C430E869D7CD50B8A4E6CEE890B252C7D8A0792BBE82B068DA5A2075CD5A2B79DF264DB134325E13D9CEEDB2678AF284742971C6B5EA2BF64BBAEC3051714C8A32B31C0439F7C0E8ED20FC20BC99B4C470FAA3DCDBF465D751A8334485D86FC12C6B0CA50789FBFD45E160B49D19EDFAF766766CF612440D93BD94BADDD2F2AFDC78583911EDB6506562BD39A11ACE0CE992CE9A2069814926D22240B28CD78ACDB0C08B4AC89B358306BAD5C0FC3B4D8B1AA846D4D5C036EAFEB5C5F6DE96AD8565362CD2145F2B3690CBE4FE9FD0139246CA429398FE238CA4E55C55EAF22B043BBBE79380509501A897EF966DDA9055C9BEDCB6634F94581A96A485AE6F4DCDD39BC4B75E2B36C4FA9CF0236214684585C14A03BCA8B2006AC5867D93E5B156BCA98CBD6DD0BB9DF609EA672658D4E1CE5EF952EABEF579C89C5D337356152269D40C99B34AD955CE2066D6CBA6BD1FF213C5FA2E56553C36C6A2795D01AD6B6757C2F46D708B0367E48F9FAAF28D99349B0A65793AB0ED2C6E83AAEEB41B959FEC6447C5D5601A4ADD46D8AE7EBCBDAC7C45A9FE4B4ACF6F9097F6B562C32D566957AC4B1E627E449042E136F525419E90ACCE7CDEB9D975A755B697D979ED79B9EB8C9C13C8BA5C16BB0CD1D952E1E3C44FCFCFA9C314659B9B7DAFA3ECBC540F0A32DEA8D84C26514AA44C276AD61822AA77F385AA21BB087E268A24035E6838DE2D99A2625D17544586A65067887ADABA5D7F6ABE5D5FD0C5EA5E96359B08EAF430E5CA2FA351F15AA7DCFC9851CB73AE1AD564D26D4370B37EB53987DB4EE73A0AE5105A5166FC84AA14835AC5E004BBD3C8FCB85E4B9AA846D3D1C036CAD60527F82EEA495E64E04180E272CC861751969A04ABF9E964A2AA55A5067A86E99318D429CA06BD70A717F5F3A72D29C712481D0D594ADE3AD8352A298021D46D204233EC3308F586625A3FDBDC8E942E41D410D2A5D4AD262F23904E97AA8A3797D3756DF56BEB8C4AB93A17AA4C31D5EB73B1CE14555E62D7CB4DD15439F8F50A533CC5A7388D8ADDB2203B3D5DD6AE46B067863AE7902C235E6638321A95E5A86A36678A6C6EB15C001554556AE0AF06FC925F665F1E61E6009C08565C516FB25D62E7B8824FE9C9134D98A2CC64D4B01F8248FC70A62C35930D8539AC151B604582114C0B0CDEA0A56F4FD78FC7DA880AFF032DE4806E5968F686CE43E9C8CB5AB13196AC708D8AC16D763A5D6557F0D89BAD94789A93550BADAB99C5DED1CDD780D2271249293345A9599FE40DBBAAD424E638537D8334EBD7111BB4AE4DEBCACBAAACEA5E1BAABE06B623B48DFF7AA748A7C65F35BD98E5BCADFD29B02C3E836638D68CFAC56B76B46209A286462CA56ED506DE5C5289A27013FBB519CD657A099D1AAFAAD3474D1F499E2E6BC5BB25F33B1D7868DC33685375D490DABAD346BECD53C9714211668B3E59B69B35EE9796F616DEAF6B916A7B933FBD6DCD8BAF1587940855C698AA6475A1CA4C1E0226912A50B1CEFDAED6BA0199D367F60BF12C42A12BB57203341A83FB00D139F4FF0E81305852A56952655B4EE57022FA462642E1725C9B13E27268ED8971154C3F13643F9EA0BDFC91E308F920B8040F3059A48998F42C22A13009B7B43189CEB0BF97336969A2CFE37712C2FCE50AEADCAC194C836BD3505E706DD52AB4A1EA1B8476849DB20509E23EB23C1F362A4C7A3913BB667494D367822588A24C1FE512E1EC688D064E556A80049E554865A9519F6004826F5C6CCEB117243EF4A5FE295A1870803841310C05A3532B367055D1239C10F2C004FC36561D88A8A81F6CA36BDB78C22F5B04CC3ED9358EADB0FAD67109C42E99C7FC319878CB1652AC3312FF286683A83A16A35935A8946B9562B5EC1900C216AF22D381D657AD1530BBA45EF65622834A6DB14AF12FE0AEA219C0885A0E77AFC03650AA1538BBA455832E6CAF2E7C4253CBB38A0A515FEED5D4BB24EDFC0964E7AC2ADDED55237F8E09A1B1FC7459E9A0C1AE35F81C3FA26CC53B01916F57979763EB6BF52A9C5DD26FFE048AF054596AB4ED88668A8F62EAE566FD9235B32A3547FA86E2399B98C5CF9515D59BB06983FD10EBBBD98FAB786EDB095642EA5B8B16F25D3212E7310C6565AC4A0731772DE6D7731293590416735B17DFAE06D617F9A520BB24F8B507912749A9D2003782DFA0EFF3F0FE9C1041AFA4CACDAE4D1901898EB3CD087A025EA4D3ADA4EAC11CB836077711788401C0FE91E79190F836AF773461A16F2234E176C958580EB7D2A99487512F1F94CCB592E54699F537809E7D055B09AFAF5C1A50BBA4585798A76EA6CFDA846C5418B8B3588155160E8AE558B1D8FF89DDAC4425A2B6FAB450EF92C6A48F207BACB5627DAC3342C423B5D21293646FEFE10EA0403ADFB82CD6C7BA2144CCC0C98B4C929401F7842760013C29F35FAA34888021DC0A2BD619C59850988434EB97A7446F6B631453E7082DF062A551C6DA4582BDB91C3E68D698E6B0B5804A95463D652F09C348D9D57A95695FDB60E5DADDDE4DA952768E82803C8909788A6A830C621004B241AB4AF591BEA1296AA264256699804F289EC773880999B62405CA2D4C2C098D01F62077F54380F022001EA4017A1063EB4BDA0DD9883BE5251595E9E74F3C55556C5272CF4BCADFB428E0EE0C98C14BE2C3805674B7DE1C86207D76CA0C783AF3FA303D21883D29B80714664DF6466CA01E11D37AF6865E98D711EEF306FBB7DF834980783A54D9E01260348534BE230F107FDC7B7FF0EEFDDEE8284080F2193498EE8D9EC300D30F5E426312028C4926381FF7E671BCF8301ED39423DD0F9117114AA6F1BE47C231F0C99861FD387EF76E0CFD702C92E7B05A2807BF152894FA8D339F6ABE652E11477E88F01D3F9733241801E184A8C3BFC217F15517227503A7353F702CBC6F91F050E13BF26E7CDCBB47B374EF2975493F419EAACC24F11AC4FCA024DE10E6375C7D4E8200DC078C640A022AC9A9C881FF5FF0C08F20F2E620FAB7103CFF7B1D298E9295408D8F072DE0E5C7B15940AAD980E6581A0E5543FB33245E909D2C6ED6A5C2BE193F5DDD8418492C93947917A9E5745D24B7A0EB577A650EA600FCFBFB746C6C48DA5766FA8835B4B729B7898FE20B32EB22AB056D1779ADD3F62BB3D5094936AC244F9CE46FF6CBDD64D9CBD5EA590A96B9CB19521769E394678C44F5887B23B66CB8807816CF3FEEFDCC5D0243F01BBE44F0AB77A4047EFFF32F2B808DA551752EE42ECFFAC5CF952F69F558CAE05711EF3508BE8220B123E59FE1933DB0764D17BDC90FE7D887CF1FF7FE2BA5FC303AFFCF3F2AE21F46E9FAF7C3E860F4DFB6C46D02A298674D7411B494B683B01574FD0A5C7510CF5A5359E3EA250BB2D0BC0637379FD0432173F1D95A86FD45D345C9BB5FD990B0A522AB36375AF58B247B62719D5D97BBE89549758B6EF7D9A1BA3FB7A74E0A37EAF6C425BFABFD7E5DD7ACB33FB585DEA2BE95CBEE2DEC64E432D24E76AE22EDD7D4D56E78B467A1EC59BC372C71DDBDB80A600DD1CBA9FB95BE5631EFB04A290F85ED6EEF1B236F47EC0A480BCBD9A33806DEFC0C05D0DA826CE34AB18945FB29FE9EA0E8A58B66E5A45DD4AA46DAF36AA9766D871593CE8F902F8F08B386989F016F23AA908DEC1D8A03AB8036CD400169414172288B536379D98005ACFABDA276CCE70260E5CA7F3078DA06AF08BB753279057127A35727EED7ECA5ACD65FB257F7CEAEFD568BAB66AD980F2BA2C660AC75E9ED6AD2399EF2C36FE54C540385EAAC4C2BA2C9EFDEFFDA2D3CB0B6E6D46EF2B611F62C0ED0B58055DD0D6669456A696AAB05A7B669CAB5E8980D9BE26B1B1B0AB8CD5E6CD2D0F43563DB73D86D677358B518D91503DBA599BDC7F7A9A5C1B31649BC40F8C1DE1E36E5DE9D6FC323E3686C3D6C032B153464678DEED8E0F6BBFDA06D71CF294D60F7B8EB1DF21E60CC237E4917B32B90F76D7C39B3B5BDBE4B3AB3226F377011200BF2C671C08B9D19FE4D3A1DA90A64C2D15D05BA4BBF9B842661ABA0E37BB5B36ECA06DCDA865972FF4FE8C576B0E0238C6C2D52ECC5A32DC63D03425F89A9D0D6EFEC33980E9A5D4ABBA962B7A8896DBDCE931CD67E05294E71B1CA5A48D7E0C5CAE666DA231B52EA20B567E38AB08939337B419DDDC66DD7AC211BCE45365CBF4C866CB8A6D6AC6DA06C19F73799E194BE029A2BF00DFC9E40DA69B5B1ED96F306D205C154B1FBB98566C896405B36F3F6FCB18DEBC7267C931BF888E05317E5CA28BB685745D9AF7AA51FFD5A5B58DA4D71CAAE7EB388B5B662E699883DCD35AF5E91D69FAD72D26E1A5592F6AB525BA94DC7893F83FDB99DB6672CD6AF298CF81DA6967207AD6656A46836D32B52C021C7C27C27F733B137FED6F2D62AB47AA6D85A68A776B6370BACD842BF2C85342C7B943646DCE14498AD6DBACD84D5BAC87C2A6C5B53D95FBDB54CBAA6610DCBD9294761AF5198FCB1ED89F5DB5A70DDA2189E81EF5DD4829175D1889CAC5F65A80EFEB520C17FE302664D1D307DAA6203BB1D41DB88C026F7957DEA20B575FA2EE22BD2F72BC75657F94E63B706303D866E79FA045B3DF023F23B1D7A9391763AF3A622DD950C916BBB9FE2657036D76E19A2D5C55B06696FE195C259CC7C4DF186CCF4B58D40F7FDEE8ABA8B196852EF8A25B01BAABE0016C18E023E4ACC003CC26C723CB1137AB1F851E9A7F48B614B4387FD10447672C1B97CD8334D5F223B26C9E60461CD8EDB8BE9FD032DACC5E1F80B3C0F6796FCC11CCD9A66BEC9DC80D2E6769D5A4A83DD656669B1F65B7DAAE235A0F48944F664D8DA4EC80D9C6DD4A179057A708EEF508870A71346B7F334C7D44AAE754C8F35F91C84B3A370E6FB27E9978D5D0493137692CE82B05F11B5B43D24DE78B31658FAE8D6E68C8D8BDA2696ADD9FB08D3F7F15AED69C7F7789C5084D9A2C1DEAAD2E6010E36D76CAF7C45637BB331BDC0C38BAFED7DD29D2336533AD7960F7E759E45489BDB04B6D6F5A7CFEC17E2794576E068CC1A233A87FEDF21B0336C596E8035FFEC0DFB56F41882845FAE932592BE9AD9CAAA4F647553FA38423E082EC1034C16D9D5B467E9D5B43DA5595C330E2FCEB8FD4E4298CB921D7D7ACBAAC9C52E7A556B72BB5A9920EE4C5A9B05BE423B674C6417145A81AA6E26EC1EC5B82CEF245C03835FAD06826F5C20CFB117243EB4E3B3F02BFFF27BFE6C38688A2BF7061BB4960DCAAF9F24AF68216BD50855D773DAF446237E216DBFDFE1BD65A166E58C2D40B8EB8D0B6F40B0ADFABC8348F72ED2FCAB85AB680630A2AF29EA6855A60731EC5B0C3FA1E96050D5607C68ACF908DBB230E00F955DC23E28D3EAB3264DB5E91C3FA26C1D3301913FE895128C0F8DBD9D7A48D1CC5E2635EF5B5D3DAC807D43F19CCD60D80EAA68498695724765BD8AE783E3D5D6DD1886C334D193E05DCF494C661158CC3BDD35F506C4AF3642D6660A26B9DFA0EFF350E39C104B27A13A599F3074121D6761527A025E868D9A7535F02E028F3000D83FF23C1212BFF39D2DBBAD8B7A4E8CEDB0129D76DCD0DC3EA9DE8E4F2F73A1CEADDB840401F4DEA640EB9DF388794E50DA452B72728EED61BD61A3CCFE4F867C9656308B67C19F116267337842BC873B6B5761DE1062695BF91602EE954DC002786B9F6D8B2D21B1753B0A9390667DF36C2082678E6803EA2B9C5D24D89BF7BAE6CBF22CFAE7C398B0D7C634D9C1D338606435E023C690D70CBE157BE94741409E2CA598FC0E82C09AADFB86A6C85AE2CB138AE7F11C6242A6F672604E108D01F620F78A4380F022001EA4017AB03300438A4D6747E58852E2A174CC721647898FE20B32CBCE19F883FD25382CA7D81FDD90A0D6B4E8CA2D0CA6FB55E16512C46811206EB8997DD813DD9C2B7C020318C3D151EACAF37518F5802F0F02EBBBBFAA0FF9910CAA9E1455CDFEFC87C4E6263BBA3246FCB0434CE388496A2CFB66087B680102710C84864A37AE682CBB73FC294B68B1E6042EF8210038563FF3FA9C4B06C2B8AF1A91C3714D7E64FF37FDDA8167E995BE940FD3C32098FC827B209D9F9751DDC2B8E8B41F227CC78FCB0A09467CBEA984B878C752935B6F0E43C0F4E29E1F3199E983D88A4AEF7E156BE62CCF35D867CD74BAC05B6A74A35426997559A56497D7EAB328B4A49551D16019BBF2DAF8154C27208A79FC5DC1AEAA52312A6A355864473EAB3814354A06E549D17AF8ADC326D42FE1A53B68A7F87B8278944AE255D6A8B86495086A3028EF4A57B0A8EA944C8A6A4D2EF57BA45B98359AB4F2ACB5D2645DDC2ADBC2B6AC6E6599B758CDAE7EA5A2CCAD51AB62566BA0C92BBFBBAE855751DBCA2B6BB09A57EE5D4B5CF272157E76EB851E72EB88356A5BB9E88E98F2228E16A652B3F6676CB65CDD8DFC9202997151A16295D5AD065FF9743ACF65FA44E221B94BB8162D96B2CD1A69F0CD4F1F55F02B6A947CB24A0DFCFA61910A268D6A25A75A8BD5ECEAA70DCADC1AB52A66B5067ABC5AD5AE5ED9C64957E9AA136ED47CF2BA363669B53697F2FC90565E558B251C8B46ABF9D68F869079366A55FC6A0D7479E51FF4B7312BAADBB9652D74D9095F66B6B1159BB5B36FB6D4EE46F9155A6B0FAA164B98178DB4F9565F9EB432AE3559C2B96CA5CDBAF97D402B7BA1D9922E345AEA77A399D3DDDE0FA1DDB28E349A6AF7244DEB6DE59FD52EE1CA1B68F312921E5BB98AED96F06F36D5EE4996D1D5DA81BC7A09DFB48536BB7A1E4F2BD346A325ACAB763AAB91A5790CAD7D6969BEA4574A0AEDEEC93BD2AD5D53345DD22DA9B56E97B24DC6B65EE4B5ED8CD30632AF5AA0A72D7690C60A47B586CA00821C516C8929964F572F946257ED9140057D5125C6179B0FA7089B9691ACB2EE709C0D615EC07E3263CE26EE4BE2C380A6A587E39B04F3D06CF62B4BE32D210E1926CEDE6C055AB4E1ABDA228827F4A86822C5EE63C044171C45319AF2434B22C2E6539ACE805F4190F0C56B780FFD737C95C48B24668F0CC3FBE0A53E183C10B88CFFE158EAF3E155E6CDDA7804D64DC4A3D957F83841815FF6FB4C91B4DE02C1238CF906377F9731DFE89EBD94489FD3E34A7580F2E12B03A377305C043CBC71856F99B9E8D237E64D5EC019F05E58F9234A57CA6D20AB5F4473D80F4F10607635A4394645CF7E3219F6C3E73FFF3FE5ABD8D88C1B0200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607080954535_migrations_date_07082016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA1749D9A44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211A8BE49D067AAF1C423688A76CB0E317FED4E9407EDC3BF24384EF2065EF806036207B2391E98749107182E678676F675F24FF612437FAA114162653FCDF0FA34912C449043F6298C411A7BA4EEE03E4FD15BEDC9107883FE22408EAFD663D67758D0256741D91058CE2971B38CD9FE6DCDF1B8D9B746391B024ABD164CF778EE35F7EDA1B7D66CCC17D004BB1A88DC52D9330F80962188118FAD7208E618439064C0756E22EF0E2FF17DC981C32CDDA6303F67C01F12C9EF3017EDE1B9DA167E81725790FBE60C4149111C5510257313981D48BD02213989E799D860005BD73F9B2F0F9701FBFAC7A535A3027ECBF0288FF7D87C295A4B7ECFD27D4F2831E8E2B753452522677F3351595436C58597917BA286C41E74A6957F35A411F8219CC5E59CF7AF215F99038E1F4E63532F1517C4166CBB4F02E02DE038C4E311F10FFE49EB936317C8EF72724643A582A668EF4C36879FB4A317FDCFF454F317F9AFEF61E4C0FEE7F3BF8D5FB091C802E4A5A74AF8BA2D6695D292B73F02227B3ECE923EB1017D62F771359760DF52005E31865B799E3BA5F2B35C4E344678C64C548FCFCEEBDD6481872BF811E89FCEAAD2B38BFFFF9172B9C3F8347344B0547E80313BB131833E78499881B18A44DE81C2DF2A12D44336BF347AAC96711096F485013DCAAF68F3B10CD60CC9E88B436B92549E4AD6B50323C7B6625C3DB52E3B2EDEE7AF173851AD9126681FB5584660883E02B0892FEEDD967F8E48691FEAC60A0EB7694BCD0E0254A5ED8814E4A3E01517C1EC3D0D0772FC836ECAFA7DDE8A0B1059D2BADFD0AB14FA275BDF65B183D220F3626E5BE5422E7751D21AFF283A187421E8FB98ED85F794CEED7BDD1AD07F833BC37F709D8F006FDB2B886518251BCE895C9DF12908B41F97A7F34473941D423098E7BEB66C1A0DF11BF8A7C1841FF7ECD75582F8BA9CDAF1AF50D33F38220170633BB9C516DDA2C67BDE864992B5257C63937754B1707568DAA1B033EE80F17A4D58B97762D2A162ADBA04BAC2F6BA8534EED4AA3B4957875E08439B80837803ACCAC8DF7D9BF4E14EC3A84108FE21878F33314402711A3B71E333DC5DF1314BD189A879C6AC38621EF4517AB50237516B760C342B013A1BE658B2D18A5DB804EE674CEED7A4EB083006FF6DEEE501C3863E6CA6816EC3AD8909CD491C733E14BA8E8A5773ED784B2D5F184B57731612D005E15531CA61C2B53CE63E91A984D3A05DDA6A79DA21F9D269E3AB1ABA92765BA76EC2D0651278F2E25CC1AF66E413BA9032373D2BD41F1B918E22989C23C73CE5CFF6BE4DB60063A9B80A57ED9BBF7BFF6B377C5FCB475CD40DA7B27F3E491EF4790F6EFCE5C100F38C9CBE3DAE7C095A985E15F836BE6686131E44CBA9A0128E0F3EDA28BF5CF495F89E5EFDFF173B34E7699DBECCC58A709A2AFC4B8F5BEC14C1DBC10277B4617083FB8C952A47C55E47759AD706A88FD2EB4A950A3FE43822EE6B96DD84DD79EF8CE294D60A79DB81AE586A7BD3BE43DC0986FED245D263F81DCDD14C8D9AEBBEAB9A4B3DE95E6062E02B4BED27018F0D2CD3B7CEBFE69AA6C99C47451D38C722BD4B4BB86BAFE3040DEDFEE207156421BD93B74929A92DCFF137A71FF7CE0238C5CC403DC6C6B3ADADE0A08DD0DF3A96DD752F530B46829CD866D59A9D6A6A64CD31ED8B36479CEE7BAAF3E85F99C84F7FC75AD03740D5E6C2420A5FDE9A20A0E129BDFBAB392BD9B2E6B8A1AE5A0E0C3070CBBF10143BF4C860F1844E55AD7AE5A9A81DE7A1677FA2E68AECB37F07B02A9E9DA540531D87D4DBB7F03E98260AA91AFB379436949E31CCE51D6FCDDB7EE0CDEC047049F0C0D4346B461539075A28B2DA8285D198333145137C92FEE92B7536577C5675DDB947F58B2197FA08343B8B3F6642D8763AB5C8DBC17DD0C4C49EACAC2BC2AE3729CF8D9F92CFDF83B2E1D15D6E7298C20F6A0830F419CA558A69C5CE559A6CC8664CBED4FB6FC4CDCC842E72F0A2AEA7ADEBE11F569B7049A8236EEC0D74E04D1EE42A7CBF86D8963922DCBBB7A2619F5C65D932AB660EE9BE8C6256CC64234FDA1EDC9173D0A7B8DC7E623624D1FDF6CFCE216C5F00C7C3755E78C6AC36ACC7AD04583733257CA3B615433E2E0B3DDBF718D70A2DB983E5571C357B335B075AA99DCD7ECB5997ED64837ACA4F5AE74D15691DE95DA3A0B046E769FCDF5B61ACF3C640BDF63421E0C65BA46B96191CE7BD1E914E88A74E7723DAFDD1DA492B1721520C9B8398B9064ECDC443052568E3E764A790DDF73BA700DB84E77CA40AB08376C43AB8E7431A34DEA9DB3A4EEB6332F80234647011F4B36CC8F30F39C4EFA8F013B3A0EE9537ACE96835785FD1044FD7F06C9C5D8CD94F025EA7F2A70E5243899AFDD6C9EFC032D9C6C6A70413B0F670E165139272796EEAD274696B36007D723A5DB02CFA39CC5BB381E9A2EC00E5EE3730D287D22911B7D75923E7003675BE3DDEF9E8E9F6386913E7A174D2FA837ACEFDB7EAF4E3A77AD79CCB4135D1A14C95C91F2DC83EC4C1B2325AA516E5A81781F3A695141E84A95EC647A6428976CE56CE1D3763E044EE6EEB71E12CBDE5A98BEB54EAA96916E5AD7766DB2EA2062C70945982DD9DDC4A55C1D66E92A7A33C421CC1D1787794FFC2A49E0C5D76ECE66CBB9353FE4EA55C603A6BA8ED8B9DA817711A53C7D66BF104F63EF9F158D993146740EFDBF43D0FF6BCA523B9DAC4086D5047754E8310449FC527E41D6C1D769420C3E8FB3F580B364C0E308F920B8040F3059A419FB945FF6DA5B3EEE35E3F0E28CDBEF2484B9ECF66F0D06A3935A0C2EB991792C50A01E4C8D3B539320BECE7232317F85FD1FD3F99960176C2E11CE4F6D5B2720CBFA62030571410ABE71E539C75E90F8B07F77F812E204C53074B066468F7042C80343BF8DDD7D9D381873CA6664C22C14E91629ABC80773EECC9CE763CE7AE56AA915C50CBADF937306754CF58995333600E10EF76EAB2006B57C7D0BBA41215D2A24FFDCFC2A9A018C68C7ED2401635049672A39688A434DF984A61D672C4E39688533ADE0C3EDC473DCA605347FE809A13D1E85F47AACC0522C53B3708E1F51A60313C0F349BB188826C6602A1CFAB491EF26A310523473F345297FA6BA25E89DD13714CF990782FBE7281ADC2178D6AFCB7315CFBBAE0952D2C19239B364E7310C87F9DF4672A7C2ABEB729D9BECD5AD443155CFEB3989C92C028BF94B3725AD010CAAEA4C556BA3EEC4F76016E01BF47DBEF73427C4C195604EA2120C9D44C7D99E1A3D012F437A8423A7E02E028F3000D83FF23C12121F7438B56919D46089BA5BA26D8AE0D3A95162D456EBDE86542D37DB131204D0EBAE6612CCA062CE26FB2BCCF3C8D30EF52EBDE7D80D9F6122E4F2C1FEE7CFD0412153CA41079DE9603ADE4E5CED3342FA4F5B9B10EFE10EA0A07F0DBC21C44172DC2D047CB930010BE059B81F0F5BC3BA64586112D2AC7F9E1D4CF0CC31ED807D85B38B047BF35E033F59366AFF7C1813F6F298BD70F0340E18398B558B91A61EF7308ABCBCA320204F0E12747F0741E0C46E7F4353E424DDF809C5F3780E3121533799C72788C6007B902FC64280F022001EA4017AE87F5087A4E7FE3DD324ACF9A5691E56A62FE7F42C00335A76A4DD4BBD8B80F700A353CC3BEE9FDCF30F6DE173BCCFEF4123B8705C4BE81F46CB092A17F6C7FD5FF45CD89FA6BFBD07D383FBDF0E7EF57E020780BF0C66CF8217F6F2EAB363732C2F21FF34377FF2233FFD5EE02B0812F6EB401AF846E31318C0B8D6FCDDF2E66C049875A8B59783158DF6B7641A8B2C7E5C4EF2058B043FC90290BDEA7AE111A5C443E9FB2CC621F1517C4166D989A17FB0BF84513BC5FEE88604CAA67FDC9224AA7DB60B83E97EB3155325F62ED182BD3D268D1FF7FE437AACA5F87720AA5DD6D5C01791DF35FBCD90AFF2311A1DA5210C1ECDA21EF065256343E5374B6EB28BB562C4AF38C2940921C2B1BC4442D8430B10ACECBF40A95C5E15D4F2328BF7B0E425D69CC0053F8213C72B5FD2FA9D287909C3B76AB40EC735B993D7C9E987FAFC6B9EA2130B945B088515FA42616E88686E794571E290B7302EF53C44F80E52C42C0DE2DE5A65170B81CA5BC465134942D59005015BA9CE3570B366ABB04BE996F1CAAA1518E5DBA74B500AF55C81350151CC378A154855D52A8CEC7E4C154451A38750F4B90D47F3994EF1F704F198B68453D6AC42E0735B3609CB18559D0ECA399EF2E375325F470DD668A2834901F6EFD0A20DAFAC5E81754E69025BC7BC51AB8374879813A0928246ED0AA47CDD2261E4E53AD4AD4FD4A8D541926E4057434ACD566017D7264B6845C50AFA95BD32EC8F74BB593B60D162156271B1928C54D4AC4268DCFF22C334AA576035AEDD90A01AB51A48ADE255AFD4C0C98F9155C2E4757A28D541956D58558B15888D13FB24B446AD16527122590B5451AD85259EFCD1822936D3C3AE3EF06F83AD5AE821D6BE326D83AC35D1C3143E956BC3159A69620B5FFDB4820BEDF4D0B32F25DA30B35A3D2431B9BA0D536CA7879EA737B681E6D57A588D5CAC36C446233DDC966C8B360E2DCDF57829B69BDBF8289A6AF1C837CD5A60F35A01A9B6DC905DEBDA4A77546BA8F48FE5F5B0EE8AB87C98A63F2E2DAAB496BF35B0D655C0B8F9D08A5850B9CE2AEB0EC7B7DE1C86202F381CB3261E5CC40908B2284E517109160B9E355551E625A3DB05F0B887FEA7DBBDD1731860B62A9BC7F1E2C3784C5368BA1F222F22944CE37D265F63E093F1FB8383DFC6EFDE8DC30C63ECD1FA188BABC29213B3846C6A116AF9E2C087E9A521CCE906F780BB1F133F949AD556952D625730522F1CE51757086441C7FF2E02ECD53EED0D5C108A58DF5FF6FD7B79B129AFCA73B833F6B0DC40A7CF0DEB12B0128281F04D081029766399FE25216EDBD15D46FD39FD14A14E9F95E82334CE1AAC03352AF4F1F2FB94EA4879913E462D305BC7A9151B63658B3F059A6A55B80CAF884DD7A18A3219E5702C488E14BF9144560A833535C1484F1A618E7E944505DD4161D4306D2F81B71615A728D37F95EBA95EEA5367F1A3064855AC8FF515F990C858B5E24179DC294F319B5B529816381D2569256D1BE07AACB83EC8CB62C84B5E7F798F47E3DD97A506B3421180FB7237112687468D2162B64B26C165C5FA58BCFD591204F2B3366BF4116FF832D117DF4255BA35C25EF383ED8A7B1E55E92EF46D00FD58F3E2A72C02CD1A7DC4AB08CD100641BA15D88414AA0CDC3DF8A480AB4AF591BA198A0D0969B9AB614744DBE03484B39DB46DA0530A61908B320307A1BC28A2E11F94A50653701664932D67A3C2182FFF4A480198D718586312337F50C6AB971B28368C128CE2858CD7ACD147FC5B02F2DCD73A5A556AB0F642D4E377420A0BAFB2D41C49316C42958901F36104FDFB17D17895C57D397EDBECDA6ECA04E6BBB2962CA01A4DC700B651B6DABF8C40328155B1B1AD11B16AC51BB48383840BF5DD245CEDF6AD27E79D7DD115F42B649E91B5887D5EA3FF2E6D6A51E34A487161D772D1A4DED366E174F5F3AA43EDAB5125E96D541838BC710CBCF9190AA0ECE28B75BBA5AF3B1D6C29B27BECE87B0B9A86A6B752B6C61F320251876AC5463E2A2558B1F4AC959BCC6C3CEFB6BC8CA639B735AA4C31F34BB865C4BCC2207A930DD31D8A033180D3A83146545A21B1CE1C55D2C94685319E4A35852A134B995F2BDFB49279A18114121AF364515F94C25AB991FD5E00AC88A7342A064BEBCED2963990966C6D1B9E8EB56DA75D1941962C6EBDC2307EACC432B48CFC900459926AC58658D977231296EACCA3A5CF8715F25D161AE1C83D2A0B07FD75ABBFF5B4638B6ABC0456579B9742F4AD84694C4AC4290B0D8D823C65D58A0D161CC5459E8D954651A88F73413C20676754A566622E9B163355994881CF8961D0D3AE9BA17049CD9DD12165A58EB141F3567C0561D1B4B540EA9AB556F2BE4D9A626964BC26B29DDB65CF14E509E952E28C6BD557EC9774D961A2E298146566390872EE81D1DB41F84178336989E1F447B9B7E9CBAEA35067880AB1DF8259D6184A0F12F7FB8BC2C1683B33DAF5EFCDECD8EC25881A267B2975BBA5E55FB9F1B07222DA6DA1CAC47A7342359C19D2259D3541D202934CA445806419AF159B6181179590376B060D74AB81F9779A1635508DA8AB816DD4FD6B8BEDBD2D5B0BCB6C58A429BE566C2097C9FD3FA127248D94852631FD471849CBB9AAD4E557087676CF2701A12A03502FDF2DDBB421AB927DB96DC79E28B1342C490B5DDF9A9AA737896FBD566C88F539E147C428D08A0A83950678516501D48A0DFB26CB63AD7853197BDBA0773BED13D4CF4CB0A8C39DBDF2A5D47DEBF39039BB66E6AC2A44D2A819326795B2AB9C41CCAC974D7B3FE4278AF55DACAA786C8C45F3BA025AD7CEAE84E9DBE01607CEC81F3F55E51B33693615CAF27460DB59DC0655DD69372A3FD9C98E8AABC13494BA8DB05DFD787B59F98A52FD97949EDF202FED6BC5865BACD2AE58973CC4FC882085C26DEA4B823C21599DF9BC73B3EB4EAB6C2FB3F3DAF372D71939279075B92C7619A2B3A5C2C7899F9E9F538729CA3637FB5E47D979A91E1464BC51B1994CA29448994ED4AC314454EFE60B55437611FC4C144906BCD070BC5B3245C5BA2EA88A0C4DA1CE10F5B475BBFED47CBBBEA08BD5BD2C6B3611D4E961CA955F46A3E2B54EB9F931A396E75C35AAC9A4DB86E066FD6A730EB79DCE7514CA21B4A2CCF809552906B58AC10976A791F971BD9634518DA6A3816D94AD0B4EF05DD493BCC8C08300C5E5980D2FA22C350956F3D3C94455AB4A0DF40CD32731A853940D7AE14E2FEAE74F5B528E25903A1AB294BC75B06B54520043A8DB408466D86710EA0DC5B47EB6B91D295D82A821A44BA95B4D5E46209D2E55156F2EA7EBDAEAD7D6199572752E549962AAD7E7629D29AABCC4AE979BA2A972F0EB15A6788A4F711A15BB6541767ABAAC5D8D60CF0C75CE215946BCCC7064342ACB51D56CCE14D9DC62B9002AA8AAD4C05F0DF825BFCCBE3CC2CC013811ACB8A2DE64BBC4CE71059FD293279A304599C9A8613F0491F8E14C596A261B0A73582B36C08A0423981618BC414BDF9EAE1F8FB51115FE075AC801DDB2D0EC0D9D87D29197B562632C59E11A1583DBEC74BACAAEE0B1375B29F13427AB165A57338BBDA39BAF01A54F249252668A52B33EC91B7655A949CC71A6FA0669D6AF2336685D9BD695975559D5BD36547D0D6C47681BFFF54E914E8DBF6A7A31CB795BFB5360597C06CD70AC19F58BD7EC68C512440D8D584ADDAA0DBCB9A41245E126F66B339ACBF4123A355E55A78F9A3E923C5DD68A774BE6773AF0D0B867D0A6EAA821B575A78D7C9BA792E38422CC167DB26C376BDC2F2DED2DBC5FD722D5F6267F7ADB9A175F2B0E2911AA8C3155C9EA4295993C044C2255A0629DFB5DAD750332A7CFEC17E2598442576AE506683406F701A273E8FF1D0261B0A44AD3A4CAB69CCAE144F48D4C84C2E5B83627C4E5D0DA13E32A987E26C87E3C417BF923C711F24170091E60B2481331E959444261126E6963129D617F2F67D2D2449FC7EF2484F9CB15D4B959339806D7A6A1BCE0DAAA556843D53708ED083B650B12C47D64793E6C5498F4722676CDE828A7CF044B1045993ECA25C2D9D11A0D9CAAD400093CAB90CA52A33EC10804DFB8D89C632F487CE84BFD53B430E000718262180A46A7566CE0AAA2473821E48109F86DAC3A1051513FD846D7B6F1845FB608987DB26B1C5B61F5ADE312885D328FF96330F1962DA4586724FE51CC0651752C46B36A5029D72AC56AD93300842D5E45A603ADAF5A2B607649BDECAD440695DA6295E25FC05D45338011B51CEE5E816DA0542B707649AB065DD85E5DF884A696671515A2BEDCABA97749DAF913C8CE5955BADBAB46FE1C134263F9E9B2D241835D6BF0397E44D98A770222DFAE2E2FC7D6D7EA5538BBA4DFFC0914E1A9B2D468DB11CD141FC5D4CBCDFA256B66556A8EF40DC57336318B9F2B2BAA3761D306FB21D677B31F57F1DCB613AC84D4B7162DE4BB6424CE6318CACA5895BE4531DF463767B3AA773D273199456031B77519EF6A607D355C0AB24BCA587B1079E2962A0D7023F80DFA3EDF72981322E8BA54B9D9F5322320D171B641424FC08B74E29654FD164DD466CDC15D041E6100B07FE4792424BECD2B274D58E89B084DB85D32169643C0742AE586D4CB072573AD64B95166FD0DA0675FC156C2EB2B9706D42E29D615E6E9A4E9B336211B15062E3656609585836239562CF67F6237535289A8AD3E2DD4BBA431E923C81E6BAD581FEB8C10F198AFB4C42401DD7BB8032890CE5C2E8BF5B16E0811B382F22293C469C03DE10958004FFA1A41AA3488CA21DC0A2BD6192D7251988434EB97A7446F6B63B400E6082DF062A55116DD4582BDB91CD268D698E6D5B5804A95463D652F09C348D9D57A95695FDB60E5DADD087DB447A58B34A2A320204F6252A0A2DA20AB1904816CD0AA527DA46F688A9A2859895976E2138AE7F11C6242A62D898A720B134B4263803DC85DFD1020BC08800769801EC478FF92764386E44E79494565FA49164F9F159B94DCF392F2372D0AB83B0366F092F830A015DDAD378721489F9D32039ECEBC3E4C4F2D624F0AEE01855993BD111BA847C4B49EBDA117E67584FBBCC1FEEDF76012209EA25536B804184D218DEFC803C41FF7DE1FBC7BBF373A0A10A07C060DA67BA3E730C0F48397D0988400639209CEC7BD791C2F3E8CC734E548F743E445849269BCEF91700C7C3266583F8EDFBD1B433F1C8BE439AC16CAC16F050AA57EE31CAA9A6F994BC4911F227CC7CF0A0D09464038B5EAF0AFF0457CD58548DDC069CD0F1C0BEF5B243C54F88EBC1B1FF7EED12CDD0F4B5DD24F90A74F3349BC06313FBC893784F9AD5B9F932000F701239982804A722A72E0FF173CF02388BC3988FE2D04CFFF5E478AA3642550E383460B78F9117116906A36A039968643D5D0FE0C891764A79D9B75A9B06FC64F5737214612CB2465DE456A395D17C92DE8FA955E998329003F13201D1B1B92F695993E620DED6DCA6DE2A3F882CCBAC86A41DB455EEBB4FDCA6C756A930D2BC99339F99BFD723759F672B57A968265EE7286D445DA38E51923513DE2DE882D1B2E209EC5F38F7B3F7397C010FC862F11FCEA1D2981DFFFFCCB0A606369549D55B9CBB37EF173E54B5A3D9632F855C47B0D82AF2048EC48F967F8640FAC5DD3456FF2C339F6E1F3C7BDFF4A293F8CCEFFF38F8AF88751BAFEFD303A18FDB72D719B8028E6991C5D042DA5ED206C055DBF02571D0EB4D654D6B80ECA822C34AFE6CDCD27F450C85C7CB696617FD17451F2EE5736246CA9C8AACD8D56FD72CB9E585C6757F82E7A6552DDECDB7D76A8EEF4EDA993C22DBF3D71C9EF8FBF5FD735EBEC4F6DA1B7A86FE5B2BB143B19B98CB4939DAB48FB3575B55B27ED59287B16EF0D4B5C772FAE025843F472EA7EA5AF55CC3BAC52CA836ABBDBFBC6C8DB11BB02D2C272F6288E81373F4301B4B620DBB8526C62D17E8ABF27287AE9A259396917B5AA91F6BC5AAA5D2562C5A4F363EDCB63CBAC21E6E7D2DB882A64237B87E2C02AA04D3350405A50901CCAE2D4585E806001AB7ED7A91DF3B90058B9F21F0C9EB6C12BC26E9D4C5E41DCC9E8D589FB357B29ABF597ECD55DB86BBFD5E2FA5B2BE6C38AA831186B5D7ABB9A748EA7FC405E3913D540A13A2BD38A68F2BBF7BF760B0FACAD39B5DBC56D843D8B437D2D6055F795595A915A9ADA6AC1A96D9A722D3A66C3A6F8DAC686026EB3179B34347DCDD8F61C76DBD91C562D4676EDC1766966EFF17D6A69F0AC45122F107EB0B7874DB977E7DBF0C8381A5B0FDBC04A050DD959A33B36B8FD6E3F685BDC734A13D83DEE7A87BC0718F3885FD2C5EC0AE47D1B5FCE6C6DAFEF92CEACC8DB0D5C04C882BC711CF06267867F934E47AA029970745781EED2EF26A149D82AE8F85EEDAC9BB201B7B66196DCFF137AB11D2CF808235B8B147BF1688B71CF80D057622AB4F53BFB0CA6836697D26EAAD82D6A625BAFF32487B55F418A535CF6B216D23578B1B2B999F6C886943A48EDD9B8226C62CECC5E5067B771DB356BC88673910DD72F93211BAEA9356B1B285BC6FD4D6638A5AF80E60A7C03BF2790765A6D6CBBE5BC8174413055EC7E6EA119B225D096CDBC3D7F6CE3FAB109DFE4063E22F8D445B932CA2EDA5551F6AB5EE947BFD6169676539CB2EBE82C62ADAD987926624F73CDAB57A4F567AB9CB49B4695A4FDAAD4566AD371E2CF607F6EA7ED198BF56B0A237EAFAAA5DC41AB9915299ACDF48A1470C8B130DFC9FD4CEC8DBFB5BCB50AAD9E29B616DAA99DEDCD022BB6D02F4B210DCB1EA58D11773811666B9B6E3361B52E329F0ADBD654F6576F2D93AE6958C37276CA51D86B14267F6C7B62FDB6165CB7288667E07B17B560645D342227EB5719AA837F2D48F0DFB8805953074C9FAAD8C06E47D03622B0C97D659F3A486D9DBE8BF88AF4FDCAB1D555BED3D8AD014C8FA15B9E3EC1560FFC88FC4E87DE64A49DCEBCA948772543E4DAEEA778199CCDB55B866875F19641DA5B78A57016335F53BC21337D6D23D07DBFBBA2EE62069AD4BB6209EC86AA2F8045B0A3808F1233008F309B1C4FEC845E2C7E54FA29FD62D8D2D0613F04919D5C702E1FF64CD397C88E49B2394158B3E3F6627AFF400B6B7138FE02CFC399257F3047B3A6996F3237A0B4B95DA796D2607799595AACFD569FAA780D287D22913D19B6B6137203671B75685E811E9CE33B1422DCE984D1ED3CCD31B5926B1DD3634D3E07E1EC289CF9FE49FA656317C1E4849DA4B320EC57442D6D0F8937DEAC05963EBAB53963E3A2B689656BF63EC2F47DBC567BDAF13D1E271461B668B0B7AAB4798083CD35DB2B5FD1D8DE6C4C2FF0F0E26B7B9F74E788CD94CEB5E5835F9D6711D2E63681AD75FDE933FB85785E911D381AB3C688CEA1FF7708EC0C5B961B60CD3F7BC3BE153D8620E197EB6489A4AF66B6B2EA1359DD943E8E900F824BF00093457635ED597A356D4F6916D78CC38B336EBF9310E6B264479FDEB26A72B18B5ED59ADCAE5626883B93D66681AFD0CE1913D9058556A0AA9B09BB47312ECB3B09D7C0E057AB81E01B17C873EC05890FEDF82CFCCABFFC9E3F1B0E9AE2CABDC106AD6583F2EB27C92B5AC85A3542D5F59C36BDD1885F48DBEF77786F59A85939630B10EE7AE3C21B106CAB3EEF20D2BD8B34FF6AE12A9A018CE86B8A3A5A95E9410CFB16C34F683A185435181F1A6B3EC2B62C0CF8436597B00FCAB4FAAC49536D3AC78F285BC74C40E40F7AA504E343636FA71E5234B39749CDFB56570F2B60DF503C673318B6832A5A9261A5DC5159AFE2F9E078B5753786E1304D744E591075B4EB21BAC284AF0563AA06D7731293590416F34E375FBD0165A88D90B5798BE9D137E8FB3CF03927C4D2B9AC4E564B0C9D44C759D0969E809761DB68DD89E82E028F3000D83FF23C1212BFF30D32BBAD8B7A2E95ED20179D76DC5EDD3EA9DE8E0F4173A1CEADDB840401F4DEA640EB9D3A89798652DA452B72728EED61BD61A3CCFE4F86EC9A56308B27D39F1162676B7A42BC873B6B1773DE10626993FB1602EE954DC002786B9FB48B2D21B1150A0A9390667DF36C2082678E6803EA2B9C5D24D89BF7BA02CDB23EFAE7C398B0D7C634D9C1D338606435FC242E70D70C05163BFB4741409E2C25BCFC0E82C09AADFB86A6C85A1ACE138AE7F11C6242A6F632724E108D01F620F78A4380F022001EA4017AB0330043C24F6747E58852E2A174CC721647898FE20B32CB4E3DF883FD25382CA7D81FDD90A0D6B4E8CA2D0CA6FB55E16512C46811206EB8997DD813DD9C2B7C020318C3D151EACAF37518F5802F0F02EBBBBFAA0FF90111AA9E1455CDFEFC87C4E6263B483346FCE8454CE388496A2CFB66087B680102710C84864A37AE682CBB73FC294B68B1E6042EF8910438563FF3FA9C4B06C2B8AF1A91C3714D7E64FF37FDF682E70C96BE940FD3A32998FC827B209DE69751DDC2B8E8B41F227CC70FEF0A09467CBEA984B878C752935B6F0E43C0F4E29E1F7899E983D88A4AEF7E156BE62CCF35D867CD74BAC05B6A74A35426997559A56497D7EAB328B4A49551D16019BBF212FB154C27208AF96E80825D55A56254D46AB0C80EA05671286A940CCA73ABF5F05B874DA85FC24B77D04EF1F704F12895C4ABAC5171C92A11D46050DEDCAE6051D5299914D59A5CEAB75AB7306B3469E5596BA5C9BAB8E3B6856D59DDCA326FB19A5DFD8247995BA356C5ACD64093577E935E0BAFA2B69557D66035AFDCBB96B8E4E52AFCEC0E0E3DE4D6116BD4B672D11D31E5B5202D4CA566EDCFD86CB9BA1BF9950932E3A242C52AAB5B0DBEF2E9749ECBF489C4237B97702D5A2C659B35D2E09B9F85AAE057D428F964951AF8F5A32B154C1AD54A4EB516ABD9D5CF3E94B9356A55CC6A0DF478B5AA5DBDB28D93AED255E7EDA8F9E4756D6CD26A6D2EE56926ADBCAA164B38168D56F3AD1F5421F36CD4AAF8D51AE8F2CA8F1768635654B773CB5AE8B213BE136D632B366B67DF6CA9DD8DF29BB8D61E542D96302F1A69F3ADBE8369655C6BB28473D94A9B75F36B8556F642B3255D68B4D4EF4633C3BCBD1F42BB651D6934D5EE499A64DCCA3FAB5DC29537D0E625A460B67215DB2DE1DF6CAADD932CBFACB50379F512BE690B6D76F53C9E56A68D464B5857ED7456234BF3185AFBD2D27C49AF9414DADD9377A45BBBA668BAA45B526BDD2E659B8C6DBDC86BDB19A70D645EB5404F5BEC208D158E6A0D95010439A2D812532C9FAE5E28C5AEDA23810AFAA24A8C2F361F4E11362D235965DDE1381BC2BC80FD64C69C4DDC97C487014D4B0FC73709E6A1D9EC5796545C421C324C9CBDD90AB468C357B545104FE851D1448ADDC780892E388A6234E547A84484CDA7349D01BF8220E18BD7F01EFAE7F82A891749CC1E1986F7C14B7D3078207019FFC3B1D4E7C3ABCC9BB5F108AC9B8847B3AFF0718202BFECF799221DB105824718F30D6EFE2E63BED13D7B29913EA787A7EA00E5C3570646EF60B8087878E30ADF3273D1A56FCC9BBC8033E0BDB0F24794AE94DB4056BF88E6B01F9E20C0EC6A48738C8A9EFD6432EC87CF7FFE7FAEDFD4103A1D0200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607120757569_migrations_date_07122016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA9748DAA44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211AB7C93B0DF45E39846C104FD960C72FFCA9D381FCB877E48708DF41CADE01C16C40F6466DA61F2641C4099AE39DBD9DFD36F90F23B1D10FA5B03099E2FF7E184D92204E22F811C3248E38D575721F20EFAFF0E58E3C40FC11274150EF37EB39AB6B14B0A2EB882C6014BFDCC069FE34E7FEDE68DCA41BB7094BB21A4DF67CE738FEE5A7BDD167C61CDC07B0148BDA58DC3209839F20861188A17F0DE218469863C0746005EE2D5EFCFF821B9343A6597B6CC09E2F209EC5733EC0CF7BA333F40CFDA224EFC1178C982232A2384AE02A2627907A115A6402D333AFD310A0A0772E5F163E1FEEE397556F4A0BE684FD5700F1BFEF50B892F496BDFF845A7ED0C371A58E464ACAE46EBEA6A272880D2B2BEF4217852DE85C29ED6A5E2BE8433083D92BEB594FBE221F12279CDEBC46263E8A2FC86C9916DE45C07B80D129E603E29FDC33D72686CFF1FE84844C074BC5CC917E182D6F5F29E68FFBBFE829E64FD3DFDE83E9C1FD6F07BF7A3F8103D045498BEE7551D43AAD2B65650E5EE464963D7D641DE2C2FAE56E22CAAEA11EA4601CA3EC36735CF76BA586789CE88C91AC18899FDFBDD71A0943EE37D023915FBD7509E7F73FFF6285F367F08866A9E0B4FAC0C4EE04C6CC396126E2060669133A478B7C680BD1CCDAFC916AF25944C21B12D404B7AAFDE30E443318B32722CA26B72489BC750D4A8667CFAC64785B6A5CB6DD5D2F7EAE50235BC2DCE27E15A119C220F80A82A47F7BF6193EB961A43F2B18E8BA1D252F347889921776A093924F40149FC73034F4DD0BB20DFBEB69373A686C41E74A6BBF42EC93685DAFFD16468FC8838D49B92F95C8795D47C8ABFC60E8A190C763AE23F6571E93FB756F74EB01FE0CEFCD7D0236BC41BF2CAE619460142F7A65F2B704E46250BEDE1FCD514E10F54882E3DEBA5930E877C4AF221F46D0BF5F731DD6CB626AF3AB467DC3CCBC20C885C1CC2E67549B36CB592F3A59E68AD49571CE4DDDD2C58155A3EAC6800FFAC30569F5E245AD45C542651B7489F5650D75CAA95D6994B612AF0E9C300717E106508799B5F13EFBD789825D8710E2511C036F7E8602E82462F4D663A6A7F87B82A21743F390536DD830E4BDE862156AA4CEE2166C58087622D4B76CB105A3741BD0C99CCEB95DCF097610E0CDDEDB1D8A0367CC5C19CD825D071B92933AF278267C0915BDF4CEE79A50B63A9EB0F62E26AC05C0AB628AC3946365CA792C5D03B349A7A0DBF4B453F4A3D3C453277635F5A44CD78EBDC520EAE4D1A58459C3DE2D68277560644EBA37283E17433C25519867CE99EB7F8D7C1BCC406713B0D42F7BF7FED77EF6AE989FB6AE19487BEF649E3CF2FD08D2FEDD990BE2012779795CFB1CB832B530FC6B70CD1C2D2C869C49573300057CBE5D74B1FE39E92BB1FCFD3B7E6ED6C92E739B9D19EB3441F49518B7DE3798A98317E264CFE802E10737598A94AF8AFC2EAB154E0DB1DF8536156AD47F48D0C53CB70DBBE9DA13DF39A509ECB41357A3DCF0B47787BC0718F3AD9DA4CBE4D72277370572B6EBAE7A2EE9AC77A5B9818B00ADAF341C06BC74F30EDFBA7F9A2A5B26315DD434A3DC0A35EDAEA1AE3F0C10F7B73B489C95D046F60E9DA4A624F7FF845EDC3F1FF8082317F10037DB9A8EB6B7024277C37C6ADBB5543D0C2D5A4AB3615B56AAB5A929D3B407F62C599EF3B9EEAB4F613E27E13D7F5DEB005D83171B0948697FBAA88283C4E6B7EEAC64EFA6CB9AA2463928F8F001C36E7CC0D02F93E10386B672AD6B572DCD406F3D8B3B7D1734D7E51BF83D81D4746D2A8318ECBEA6DDBF81744130D5C8D7D9BCA1B4A4710EE7286BFEEE5B77066FE023824F86862123DAB029C83AD1C5165494AE8CC1198AA89BE41777C9DBA9B2BBE2B3AE6DCA3F2CD98C3FD0C121DC597BB296C3B155AE46DE8B6E06A6247565615E9571394EFCEC7C967EFC1D978E0AEBF31446107BD0C18720CE522C534EAEF22C536643B2E5F6275B7E266E64A1F3170515753D6FDF88FAB45B024D411B77E06B27826877A1D365FCB6C431C996E55D3D938C7AE3AE49155B30F74D74E3123663219AFED0F6E48B1E85BDC663F311B1A68F6F367E718B627806BE9BAA7346B56135663DE8A2C139992BE59D30AA1971F0D9EEDFB84638D16D4C9FAAB8E1ABD91AD83AD54CEE6BF6DA4C3F6BA41B56D27A57BA686B9BDE95DA3A0B046E769FCDF5B61ACF3C640BDF63421E0C65BA46B96191CE7BD1E914E88A74E7723DAFDD1DA492B1721520C9B8398B9064ECDC443052568E3E764A790DDF73BA700DB84E77CA40AB08376C43AB8E7431A34DEA9DB3A4EEB6332F80234647011F4B36CC8F30F39C4EFA8F013B3A0EE9537ACE96835785FD1044FD7F06C9C5D8CD94F025EA7F2A70E5243899AFDD6C9EFC032D9C6C6A70413B0F670E165139272796EEAD274696B36007D723A5DB02CFA39CC5BB381E9A2EC00E5EE3730D287D22911B7D75923E7003675BE3DDEF9E8E9F6386913E7A174D2FA837ACEFDB7EAF4E3A77AD79CCB4135D1A14C95C91F2DC83EC4C1B2325AA516E5A81781F3A695141E84A95EC647A6428976CE56CE1D3763E044EE6EEB71E12CBDE5A98BEB54EAA96916E5AD7766DB2EA2062C70945982DD9DDC4A55C1D66E92A7A33C421CC1D1787794FFC2A49E0C5D76ECE66CBB9353FE4EA55C603A6BA8ED8B9DA817711A53C7D66BF104F63EF9F158D993146740EFDBF43D0FF6BCA523B9DAC4086D5047754E8310449FC527E41D6C1D769420C3E8FB3F580B364C0E308F920B8040F3059A419FB945FF6DA5B3EEE35E3F0E28CDBEF2484B9ECF66F0D06A3935A0C2EB991792CB0453D981A77A626417C9DE56462FE0AFB3FA6F333C12ED85C229C9FDAD63723F0EC8811E2E2187CE32A788EBD20F161FF4EF525C4098A61E860E58D1EE1849007867E1BBBFBC6719812289BD709B373A45BBCAD221F26056793423EE6AC57AE166C51CCA0FB3D7F6750C7549F5839630310EE707BB70C6250CBD7B72C1C14D2A542F28FD6AFA219C08876DC946A610C2AE94C25074D71A8299FD0B4E38CC52907AD70A6157CB89D788EAF6F19CE876E42688FC732BD1E5BB214CBD4B89CE3479469D204F0DCD62E66A68931181C879E71E4BBC96E8414CDDC7CDDCA9FA96E097A67F40DC573E6C7E0FE393A33DBAFC8D8AD63DBAEE279D795454A3A58326796EC3C86E130FFDB4834DD75DFD054C9AFE72426B3082CE62FDD54BD063028BC3385AF8DBA130F86D9916FD0F7F93ED89C1007979C3989903074121D67FB7BF404BC0C091F8E5C8BBB083CC20060FFC8F348487CD0E11CAA65508325EA6E89B66937814E8D52BDB65AF736A46AB9D99E9020805E7735136006157336D95F619E199F76A877E93DC76EF80C1321970FF63F7F860E0A99520E3AE84C07D3F176E26A9F11D27F0ADD84780F770005FD6BE00D210E12F56E21E0CB85095800CFC28D7FD81AD625C30A939066FDF3EC6082678E6907EC2B9C5D24D89BF71A3ECAF26BFBE7C398B097C7EC8583A771C068D78351B29D902247F02808C8938364E1DF411038B1DBDFD01439497D7E42F13C9E434CC8D44D16F409A231C01EE48BB11020BC08800769801EFA1FD42101BB7FCF34096B7E699A1396E9CB393D0BC08C961D517BA97711F01E60748A79C7FD937BFEE9307C8EF7F9CD6E04178E6B09FDC3683941E5C2FEB8FF8B9E0BFBD3F4B7F7607A70FFDBC1AFDE4FE000F097C1EC59F0C25E5E7D766C8EE525E41F1BE74F7EE4A7DF2E7C0541C27E1D0803DF687C020318D79ABF5BDE9C8D00B30EB5F662B0A2D1FE964CE3368B1F97937CC16D829F4401C85E75BDF08852E2A1F47D16E390F828BE20B3EC0CD43FD85FAD513BC5FEE88604D2A67FDC9224AA7D880C83E97EB3155325F62ED182BD3D268D1FF7FE4378ACA5F87720AA5D3FD6C06F23BF6BF69B215FE563343A4A43183C9A453DE08B4AC686CA6F96DC645785C5885FDA842913428463718984B087162058D9FF16A5747955508BCB2CDEC39257BBE6042EF8A1A2385EF992D6EF44C9AB357CAB46EB705C933B719D9C1E3DC0BF2C2A3AB140B9859058A12F14E68688E696B72D4E1CF216C6A59E8708DF418A98A541DC5BABEC622150798BB86C2248A81CB220602BD5B9066ED66C157629DD225E59B502A37CFB74094AA19E2BB026208AF976B304A9AA5A8591DDF82983286AF4108A3EAB70349FE9147F4F108F690B3865CD2A043EB76593B08851D5E9A09CE3293F3028F375E4608D263A981460FF0E2D547865F50AAC734A13A81CF346AD0ED21D624E804C0A1AB52B90F2758B809197EB502B9FA851AB8324DCE92E87149AADC02E2E8216D08A8A15F42B7B65D81FE1BE363560D16215627155948854D4AC4268DC6823C234AA5760352E1211A01AB51A484AF1AA576AE0E407E34A61F23A3D94EAE84D1556D5620562E30C4201AD51AB85549CB1A6802AAAB5B0DA67992830DBCDF4B0AB230B54B0550B3DC4DA17AF2AC85A133DCCD6677B2ADC56334DECD617484AF0563B3DF4ECAB0D156656AB87D44ED15661B6DBE9A1E749922AD0BC5A0FAB918BA5426C34D2C355645BA838289AEBF1926C37ABF8489A6AF1C837CD14B0796D0BA9B6DC105DEBDA4A77546B28F58FC5F5B0EE8AB87C98A63F2E2CAAB496BF3530E52A60DC7C68492CA85C67957587E35B6F0E4390171C8E59130F2EE204045914A7A8B8048B05CF9AAA28F392D1ED0278DC43FFD3EDDEE8390C305B95CDE378F1613CA62934DD0F9117114AA6F13E93AF31F0C9F8FDC1C16FE377EFC6618631F6687D8CDBABC29213B3846C6A69D5F2C5810FD36B5098D30DEE01773F267E2834ABAD2A15625730922F1CC51757086441C7FF2E02ECD53EED0D5C108A58DF5FF6FD7B71B129AECA73B833F6B0DC40A7CF0DEB12B0128281F04D081049766399FE252156EDE82EA3FE9C7ED050A7CF4AF4111AA727D6811A15FA78F90D5175A4BC481FA31698ADE3D48A8DB1B2C59F044DB62A5C8657C4A6EB5045998872386E498E10BF11445608833535C1484F1A618E7E944506DD4161E430AA97C05BB715A728D37F95EBA95EEA5367F1A3064855AC8FF515F9908858B5E24179DC294F319B5B5218059C8E92284955035C8F15D70779590C79C9EB2F6F2669BCFBB2D460562802705FEE26ADC9A151638898ED92097059B13E166F7F960481F8ACCD1A7DC41BBE4CF4DB6FA12ADD1A61AFF9C176C53D8FAA74177A15403FD6BCF8298A40B3461FF12A42338441906E0536215B5506EE1E7C92C055A5FA48DD0CC58684B4DCD5B023A22A380DE15493AA063AA5680D725166E02094575F34FC83B2D4600ACE826CA2E56C5418E3E55F094900F31A036B4C62E60F8A78F57203C586518251BC10F19A35FA887F4B409EFB5A47AB4A0DD65E887AFC96CBD6C2AB2C3547920C5BABCAC480F93082FEFD4BDB7895C57D397EDBECDA6ECA04E6BBB2962CA01C4DC700AA2895F62F23104C60556C6C6BDA58B5E20DDAC141C25BF5DD245CEEF6AD27E79D7DD115F42B649E9129C43EAFD17F9736B5A871C9657B61A7B83A53EF69B370BAFC79E5A1F6D5A882F4362A0C1CDE3806DEFC0C055074F1DB75BBA5AF3B1D6C29B27BECE8BB024D43D39594CAF84346D0D6A15AB1918F4A09962C3D6BE526331BCFBB2DAFD769CE6D8D2A53CCFC5A711131AF3088DE64C37487E2A01DC069D418234AAD50BBCE1C55D0C94685319E4C355B5526969279F7D14BDB4AE68506524868CC9345FDB614D6CA8DECF70260493CA55131585A7796B6CC81B4646B55783AD6564DBB32822C58DC7A8561FC588A656819F92109A224D58A0DB1B2EF46042CD9C9494B9F0F4BE4BB2C34C2117B54160EFAEB567FEB69C716D57809ACAE362F85E85B09D398541BA72C34340AE294552B36587014579336561A45A13ECE05F180989D51959A89B9685ACC546522043E2786414FBB6E86C4253577468794953AC606CD5BF1158445D3A680D4356B4AF2BE4D9A646964BC26B29DDB65CF14E509E942E28C6BD597EC9774D961A2ED3129CACC7210C4DC03A3B783F043EBCDA42586D31FE5DEA62FBA8EAD3A4354887D05665963283DA8BDDF5F140E46DB99D1AE7F6F66C7662F41D430D94BA9D596967FE5C6C3CA49DB6EB7AA4CAC372794C399215DD25913242D30C9445A044894F15AB1191678910979B366D040B71A987FA7695103E588BA1AA8A2EE5F5B6CEF6DD95A5866C3224CF1B56203B94CEEFF09BD56D248596812D37F8491B09CAB4A5D7E856067F77C12102A3300F5F2DDB24D1BB22AD997DB76EC89144BC39228E8FAD6D43CBDA9FDD66BC586589F137E448C04ADA83058698017591640ADD8B06FA23CD68A3795B1B70D7AB7D33E41FDCC048B3ADCD92B5F4ADDB73E0F99B36B66CECA42248D9A2173562ABBD219C4CC7AD9B4F7437E62BBBE8B556D1F1B63D1BCAE80D6B5B32B61FA36B8C58133E2C74F55F9C64C9A4D85B23C1DD87616B7415577DA8DCA4F76B2A3E272300DA55611AAD58FB71795AF28D57F49E9F90DE2D2BE566CB8C52AEC8A75C943CC8F089228DCA6BE24C81392E599CF3B37BBEEB4CAF6323BAF3D2F779D9173025197CB6297213A5B2A7C9CF8E9F9397598A26C73B3EF75949D97EAC1968C372A369349941249D3899A358688F2DDFC56D5905D043F134992012F341C6F45A668BBAE0BAA2443B35567887AAADCAE3F35DFAE2FE862792FCB9A4D04757A9872C597D1A878AD536E7ECCA8E539578E6A32E9AA10DCAC5F6DCEE1B6D3B98E4231845694193FA12CC5A0563138C1EE34323FAED79226CAD174345045A95C7082EF6D3DC98B0C3C08505C8ED9F022CA529360353F9DACAD6A55A9819E61FAD40EEA1465835EB8D38BFAF9D396946309A48E862C25570E768D4A0860B4EA3610A119F6195AF586625A3FDBDC8E942E41D410D2A5D44A93971108A74B55C59BCBE9BAB6FAB57546255D9DB7AA4C31E5EBF3769D29AAB8C4AE979BA2C972F0EB15A678924F711A15BB6541767ABAAC5D8D60CF0C75CE215946BCCC70643432CB51D56CCE14D9DC62B90032A8AAD4C05F0DF825BFCCBE3CC2CC013869597149BDC976899DE30A3EA5274F34618A329351C37E08A2F6873365A9996C48CC61ADD8002B6A19C1B4C0E00D5AFAF674FD78AC8DA8F03FD0420CE89685666FE83C148EBCAC151B63890AD7A818DC66A7D35576058FBDD94A8AA7395929685DCD2CF68E6EBE06943E91484899294ACDFA246ED855A52631C799EC1BA459BF8ED8A0752AAD2B2FABB2AA7B2A547D0D5423A8C67FBD53A453E32F9B5ECC72DED6FE1458149F41331C6B46FDE2353B5AB10451432396522BB581371754A228DCC47E6D4673995E4227C7ABEAF451D34712A7CB5AF16EC9FC4E071E1AF70CDA541D39A4B6EEA8C8B7792A394E28C26CD127CA76B3C6FDD2D2DEC2FB752D526D6FF2A7B7AD79F1B5E49092569531A62C59BD5565260F0193481968BBCEFDAED6BA0199D367F60BF12CC256576AE506683406F701A273E8FF1D82D6600995A64995AA9CCAE144F48D4C84ADCB716D4E88CBA1B527C65530FD4C90FD7882F6F2478E23E483E0123CC064912662D2B38884AD4958D1C6243AC3FE5ECE44D1449FC7EF2484F9CB6DA973B366300DAE4D4379C1B555ABA042D537086A849DB20509E23EB2381F362A4C7A396B77CDE828A7CF040B1045993ECA25C2D9D11A0D9CAAD400093CCB90CA52A33EC10804DFB8D89C632F487CE80BFD93B430E00071826218B68C4EADD8C055458F7042C80313F0DB587620A2A47EB08DAE6DE309BF6C1130FB64D7382A61F5ADE312885D328FF96330F1162D64BBCE48FCA3980DA2EC588C66D5A052AE558AD5B26700085BBC8A4C075A5FB556C0EC927AD95B890C2AB5C52AC5BF80BB8A6600236A39DCBD02DB40A956E0EC92560DBAB0BDBAF0094D2DCF2A32447DB99753EF92B4F327109DB3AA74B7578DFC392684C6E2D365A58306BBD6E073FC88B215EF0444BE5D5D5E8EADAFD5AB707649BFF91348C25365A9D1B6239A493E8AA9979BF54BD4CCAAD41CE91B8AE76C626E7FAE2CA9DE844D1BEC47BBBE9BFDB88AE7B69D6029A4BEB55090EF9291388F61282A6355FA16C57C1BDD9CCDAADEF59CC4641681C5DCD665BCAB81F5D57029C82E2963ED41C4895BA834C08DE037E8FB7CCB614E484BD785CACDAE971901898EB30D127A025E8413B784EAB768A2366B0EEE22F0080380FD23CF2321F16D5E3969C242DF4468C2ED92B1B01C02A6532137A45E3E28996B25CB8D32EB6F003DFB0AB6125E5FB934A07649B1AE304F274D9FB509D9A83070B1B104AB2C1C14CBB162B1FF13BB999252446DF55150EF92C6A48F207AACB5627DAC3342DAC77CA5252609E8DEC31D408170E67259AC8F7543483B2B282F32499C06DC139E8005F084AF11844A83A81CC24AD8769DD12217854948B37E795274551BA305304750C0B72B8DB2E82E12ECCDC59046B3C634AF4E012A541AF594BD240C236957EB55A67D55C18AB5BB11FA5047A58B34A2A320204FEDA44049B54156330802D1A055A5FA48DFD0143551B212B3ECC42714CFE339C4844C15898A620B134B4263803DC85DFD1020BC08800769801EDAF1FE25ED860CC99DF2928ACAF4932C9E3EDB6E5272CF4BCADFB428E0EE0C98C14BE2C3805674B7DE1C86207D76CA0C783AF3FA303DB5883D29B80714664DF6466CA01E11D37AF6865E98D711EEF306FBB7DF834980788A56D9E01260348534BE230F107FDC7B7FF0EEFDDEE8284080F2193498EE8D9EC300D30F5E426312028C4926381FF7E671BCF8301ED39423DD0F9117114AA6F1BE47C231F0C99861FD387EF76E0CFD70DC26CF61B5500E7E2B5028F51BE750D57CCB5C228EFC10E13B7E5668483002AD53AB0EFF0A5FDAAFBA10A91B38ADF981E3D6FB6E131E4A7C47DE8D8F7BF76896EE87A52EE927C8D3A799245E83981FDEC41BC2FCD6ADCF491080FB80914C414005396D73E0FF173CF02388BC3988FE2D04CFFF5E478AA3642550E383460B78F9117116906A36A039968643D5D0FE0C891764A79D9B75A9B06FC64F5737214612CB2465DE456A395D17C92DE8FA955E918329003F13201D1B1B92F695993E620DED6DCA6DE2A3F882CCBAC86A41DB455EEBB4FDCA6C756A930D2BC99339F99BFD723759F672B57A968265EE7286D445DA38E51923913DE2DE882D1B2E209EC5F38F7B3F7397C010FC862F11FCEA1D4981DFFFFCCB0A606369949D55B9CBB37EF173E54B5A3D9622F855C47B0D82AF2048EC48F967F8640F4CADE96D6FF2C339F6E1F3C7BDFF4A293F8CCEFFF38F8AF88751BAFEFD303A18FDB72D719B8028E6991C5D042DA5ED206C055DBF02571D0EB4D654D6B80ECA822C34AFE6CDCD27F450C85C7CB696617FD17451F2EE5736246CA9C8AACD8D56FD72CB9E585C6757F82E7A6552DDECDB7D76A8EEF4EDA993AD5B7E7BE292DF1F7FBFAE6BD6D99FDA426F51DFCA6577297632721969273B5791F66BEA6AB74EDAB350F62CDE1B96B8EE5E5C05B086E8E5D4FD4A9F52CC3BAC52CA836ABBDBFBC6C8DB11BB02D2C272F6288E81373F4301B4B620DBB8526C62D17E8ABF27287AE9A259396917B5AA91F6BC5AAA5D2562C5A4F363EDCB63CBAC21E6E7D2DB882A64237B87E2C02AA04D3350405A50901CCAE2D4585E806001AB7ED7A91DF3B90058BAF21F0C9EB6C12BC26E9D4C5E41DCC9E8D589FB357B29ABF597ECD55DB86BBFD5E2FA5B2BE6C38AA831186B5D7ABB9A748EA7FC405E3113D540A13A2BD38A68F2BBF7BF760B0FACAD39B5DBC56D843D8B437D2D6055F795595A915A9ADA6AC1A96D9A722D3A66C3A6F8DAC686026EB3179B34347DCDD8F61C76DBD91C562D4676EDC1766966EFF17D6A69F0AC45122F107EB0B7874DB977E7DBF0C8381A5B0FDBC04A050DD959A33B36B8FD6E3F685BDC734A13D83DEE7A87BC0718F3885FD2C5ECB6C8FB36BE9CD9DA5EDF259D5991B71BB808900579E338E0C5CE0CFF269D8E540532E1E8AE02DDA5DF4D42536BABA0E37BB5B36ECA06DCDA865972FF4FE8C576B0E0238C6C2D52ECC5A32DC63D03425F89A9D0D6EFEC33980E9A5D4ABBA9622BD4C4B65EE7490E6BBF8214A7B8EC652DA46BF062657333ED910D297590DAB37145D8C49C99BDA0CE6EE3B66BD6900DE7221BAE5F2643365C536BD63650B68CFB9BCC704A5F01CD15F8067E4F20EDB4DAD876CB7903E982602AD9FDDC4233644BA02D9B797BFED8C6F56313BEC90D7C44F0A98B7265945DB4ABA2EC57BDD28F7EAD2D2CEDA63865D7D159C45A5B31F34CC49EE69A57AF48EBCF563969378D2A49FB55A9ADD4A6E3C49FC1FEDC4EDB3316EBD71446FC5E554BB98356332B52349BE91529E0906361BE93FB99D81B7F6B796B155A3D536C2DB4533BDB9B05566CA15F96421A963D4A1B23EE7022CCD636DD66C26A5D643E15AAD654F6576F8A49D734AC61393BE528EC350A933FB63DB17E5B0BAE5B14C333F0BD8B5A30B22E1A9193F5AB0CD5C1BF1624F86F5CC0ACA903A64F556C60B723681B11D8E4BEB24F1DA4B64EDF457CDBF4FDCAB1D555BED3D8AD014C8FA15B9E3EC1560FFC88FC4E87DE64A49DCEBCA948772543E4DAEEA778199CCDB55B866875F19641DA5B78A57016335F53BC21337D6D23D07DBFBBA2EE62069AD4BB6209EC86AA2F8045B0A3808F1233008F309B1C4FEC845E2C7E54FA29FD62D8D2D0613F04919D5C702E1FF64CD397C88E49B2394158B3E3F6627AFF400B6B7138FE02CFC399257F3047B3A6996F3237A0B4B95DA796D26077995914D67EAB4F55BC06943E91C89E0C5BDB09B981B38D3A34AF400FCEF11D0A11EE74C2E8769EE6985AC9B58EE9B1269F83707614CE7CFF24FDB2B18B6072C24ED25910F62BA296B687DA37DEAC05963EBAB53963E3A2B689656BF63EC2F47DBC567BDAF13D1E271461B668B0B7AAB4798083CD35DB2B5FD1D8DE6C4C2FF0F0E26B7B9F74E788CD94CEB5E5835F9D6711D2E63681AD75FDE933FB85785E911D381AB3C688CEA1FF7708EC0C5B961B60CD3F7BC3BE153D8620E197EB6489A4AF66B6B2EA1359DD943E8E900F824BF00093457635ED597A356D4F6916D78CC38B336EBF9310E6B264479FDEB26A72B18B5ED59ADCAE5626883B93D66681AFD0CE1913D9058556A0AA9B096D80959713DAE919138AE01B17D173EC05890FED7831FC12C0FCE63F1B2E9BE412BEC12AAD6595F20B29C92B5ADA5A354BD5859D36FDD3885F51DBEF97796F59A85939630B10EE7A07C31B106CAB5EF020D2BD8B34FF8EE12A9A018CE86B8A435A95E9410CFB16C34F683A185439181F1A6B3EC2F62E15F8636617B50FEAB5FA3C4A53FD3AC78F285BD94C40E40F9A2605E343636F371F5234B3976DCDFB56570F2B60DF503C67731AB6836AD5B6ECAEB6AE3F195EC5F3C11553753786E1304D744E6BD896F9DF5425AEE72426B3082CE69D6ECA7A038A511B216B7318D3A96FD0F77958744E88A5735C9DACA5183A898EB3902E3D012FC336D3BA1A781781471800EC1F791E0989DFF9C699DDD6453DF7CA76088C4E3B6EC76E9F546FC787A3B950E7D66D4282007A6F53A0F54EA9C43CA329EDA2153939C7F6B0DEB05166FF2743368E12CCE249F66784D8D9B89E10EFE1CEDA459E378458DA02BF85807B6513B000DEDA27F3624B486CB582C224A459DF3C1B88E09923DA80FA0A671709F6E6BDAE46B32C91FEF93026ECB5314D76F0340E186DCB325716162CF6FD8F82803C594A87F91D0481355BF70D4D91B5249D2714CFE339C4844CEDE5EB9C201A03EC41EE158700E145003C4803F46067008674A0CE8ECA11A5C443E998E52C8E121FC51764969D92F007FBABE5B09C627F7443825AD3A22BB73098EE5785974910A34580B8E166F661AFEDE65CE11318C0188E8E52579EAFC3A8077C711058DFFD557DC80F9490F5A4A86AF6E73F043637D9C19B31E24735621A474C5263D13743D8430B10B4C7A0D550EAC6158D45778E3F6509DDAE39810B7E84018EE5CFBC3EE792416BDC578DC8E1B8263FA2FF9B7EABC1330A4B5FCA87E951164C7EC13D104EFFCBA86E615C74DA0F11BEE3877D8504233EDF54425CBC63A1C9AD378721607A71CF0FC8CCF4A1DD8A0AEF7E156BE62CCF35D867CD74BAC05B6A74A35426917559256597D7EAB328B444C9A868B08C5D79E9FD0AA61310C57C6740C2AEAA92312A6A3558640756CB3814355206E539D77AF8CA616BD52FE1A53B68A7F87B8278944AE055D6C8B86495086A30286F7A97B0A8EAA44C8A6A4D2EF55BB015CC1A4D943C6BAD34591777E22AD896D54A96798BD5ECEA17428ADC1AB53266B5069ABCF29BF714BC8A5A25AFACC16A5EB9772D70C9CB65F8D99D1D7AC8CA116BD42AB9E88E98F41A110553A199FA199B2D577723BF6241645C54C8586575ABC1573E9DCE73993E51FB88DF255C8B164BD9668D34F8E667A74AF81535523E59A5067EFDA84B099346B59453ADC56A76F5B312456E8D5A19B35A033D5E4AB5AB57AA38E92A5D753E8F9C4F5EA76293566B73294F3F51F2AA5A2CE158345ACDB77EB085C8B3512BE3576BA0CB2B3F8E40C5ACA85673CB5AE8B26B7D57AA62DB6EA666DF6CA9DD8DF21B3A650FAA164B98178DB4F9565FC92819D79A2CE15CB6D266DDFC9641C9BED56C49171A2DF5BBD1CC3F57F7A3D56E59471A4DB57B92A6202BF967B54BB8F206DABC5AE9984AAEED764BF8379B6AF724CB35537620AF5EC2376DA1CDAE9EC7A364DA68B48475D54E6735B2348F41D91745F325BD925268774FDC9156764DD27449B784D6BA5DCA361955BDC86BD58CD30622AF5AA047153B486385A35A436900418C282A628AE5D3D50B85D8953A1228A12FAADAF1C5E6C349C2A66524ABAC3B1C67439817B09FCC98B389FB92F830A069E9E1F826C13C349BFDCA128C4B88438689B3375B81166DF8AAB608E2B57A54341162F73160A20B8EA2184DF9912B1161F3294D67C0AF2048F8E235BC87FE39BE4AE24512B34786E17DF0521F0C1E085CC6FF702CF4F9F02AF3666D3C02EB26E2D1EC2B7C9CA0C02FFB7D2649A75740F00863BEC1CDDF65CC37BA672F25D2E7F4B0551DA07CF8CAC0E81D0C17010F6F5CE15B662EBAF48D7993177006BC1756FE88D295B20A64F58B680EFBE10902CCAE8634C7A8E8D94F26C37EF8FCE7FF0765CE242B3C1E0200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607121025295_migrations_date_07122016_2', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA9748DAA44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211AB7C93B0DF45E39846C104FD960C72FFCA9D381FCB877E48708DF41CADE01C16C40F6466DA61F2641C4099AE39DBD9DFD36F90F23B1D10FA5B03099E2FF7E184D92204E22F811C3248E38D575721F20EFAFF0E58E3C40FC11274150EF37EB39AB6B14B0A2EB882C6014BFDCC069FE34E7FEDE68DCA41BB7094BB21A4DF67CE738FEE5A7BDD167C61CDC07B0148BDA58DC3209839F20861188A17F0DE218469863C0746005EE2D5EFCFF821B9343A6597B6CC09E2F209EC5733EC0CF7BA333F40CFDA224EFC1178C982232A2384AE02A2627907A115A6402D333AFD310A0A0772E5F163E1FEEE397556F4A0BE684FD5700F1BFEF50B892F496BDFF845A7ED0C371A58E464ACAE46EBEA6A272880D2B2BEF4217852DE85C29ED6A5E2BE8433083D92BEB594FBE221F12279CDEBC46263E8A2FC86C9916DE45C07B80D129E603E29FDC33D72686CFF1FE84844C074BC5CC917E182D6F5F29E68FFBBFE829E64FD3DFDE83E9C1FD6F07BF7A3F8103D045498BEE7551D43AAD2B65650E5EE464963D7D641DE2C2FAE56E22CAAEA11EA4601CA3EC36735CF76BA586789CE88C91AC18899FDFBDD71A0943EE37D023915FBD7509E7F73FFF6285F367F08866A9E0B4FAC0C4EE04C6CC396126E2060669133A478B7C680BD1CCDAFC916AF25944C21B12D404B7AAFDE30E443318B32722CA26B72489BC750D4A8667CFAC64785B6A5CB6DD5D2F7EAE50235BC2DCE27E15A119C220F80A82A47F7BF6193EB961A43F2B18E8BA1D252F347889921776A093924F40149FC73034F4DD0BB20DFBEB69373A686C41E74A6BBF42EC93685DAFFD16468FC8838D49B92F95C8795D47C8ABFC60E8A190C763AE23F6571E93FB756F74EB01FE0CEFCD7D0236BC41BF2CAE619460142F7A65F2B704E46250BEDE1FCD514E10F54882E3DEBA5930E877C4AF221F46D0BF5F731DD6CB626AF3AB467DC3CCBC20C885C1CC2E67549B36CB592F3A59E68AD49571CE4DDDD2C58155A3EAC6800FFAC30569F5E245AD45C542651B7489F5650D75CAA95D6994B612AF0E9C300717E106508799B5F13EFBD789825D8710E2511C036F7E8602E82462F4D663A6A7F87B82A21743F390536DD830E4BDE862156AA4CEE2166C58087622D4B76CB105A3741BD0C99CCEB95DCF097610E0CDDEDB1D8A0367CC5C19CD825D071B92933AF278267C0915BDF4CEE79A50B63A9EB0F62E26AC05C0AB628AC3946365CA792C5D03B349A7A0DBF4B453F4A3D3C453277635F5A44CD78EBDC520EAE4D1A58459C3DE2D68277560644EBA37283E17433C25519867CE99EB7F8D7C1BCC406713B0D42F7BF7FED77EF6AE989FB6AE19487BEF649E3CF2FD08D2FEDD990BE2012779795CFB1CB832B530FC6B70CD1C2D2C869C49573300057CBE5D74B1FE39E92BB1FCFD3B7E6ED6C92E739B9D19EB3441F49518B7DE3798A98317E264CFE802E10737598A94AF8AFC2EAB154E0DB1DF8536156AD47F48D0C53CB70DBBE9DA13DF39A509ECB41357A3DCF0B47787BC0718F3AD9DA4CBE4D72277370572B6EBAE7A2EE9AC77A5B9818B00ADAF341C06BC74F30EDFBA7F9A2A5B26315DD434A3DC0A35EDAEA1AE3F0C10F7B73B489C95D046F60E9DA4A624F7FF845EDC3F1FF8082317F10037DB9A8EB6B7024277C37C6ADBB5543D0C2D5A4AB3615B56AAB5A929D3B407F62C599EF3B9EEAB4F613E27E13D7F5DEB005D83171B0948697FBAA88283C4E6B7EEAC64EFA6CB9AA2463928F8F001C36E7CC0D02F93E10386B672AD6B572DCD406F3D8B3B7D1734D7E51BF83D81D4746D2A8318ECBEA6DDBF81744130D5C8D7D9BCA1B4A4710EE7286BFEEE5B77066FE023824F86862123DAB029C83AD1C5165494AE8CC1198AA89BE41777C9DBA9B2BBE2B3AE6DCA3F2CD98C3FD0C121DC597BB296C3B155AE46DE8B6E06A6247565615E9571394EFCEC7C967EFC1D978E0AEBF31446107BD0C18720CE522C534EAEF22C536643B2E5F6275B7E266E64A1F3170515753D6FDF88FAB45B024D411B77E06B27826877A1D365FC1C45647A30EBE6DE4FB6F6EFEAFE64D41BF77FAA0086B903A41BFCB01970D174BAB62729F528EC35E89B8F8835A57FB341925B14C333F0DD549D33AA0DAB31EB41170DCEC95C29EF8451CD88836F83FFC635C2896E63FA5405275FCDFEC3D6A966725FB3D766FA5923DDB092D6BBD2455BDBF4AED4D659B471B39B79AEF7EE787A235B5D1F13F26028D335CA0D8B74DE8B4E474D57A43B97507AEDEEB4968C95AB284CC6CD59182663E7264C92B272F44555CA6BF868D4856BC075BA539A5B45B8611B5A75A48B196D52EF9C2575B7677A011C313A0AF858B2617E8499E774D27FA0D9D1994B9FD2C3BC1CBC2AEC8720EAFF5B4B2EC66EA6842F51FF53812B27C1C97CED6687E61F68E164E7840BDA793873B088CA3939B1746F3DFBB29C053BB81E29DD16781EE52CDEC5F1D0740176F0AEA06B40E91389DCE8AB931C851B38DB1AEF7EF774FC1C338CF4D1BB687A41BD617DDFF6CB7BD2B96BCDB3AC9DE8D2A048E68A9427386407E71829518D72D30AC4FBD0498B0A4257AA64279D2443B9642B670BDFCFF321703277BFF59058F6D6C2F4AD7552B58C74D3BAB66B935507113B4E28C26CC9EE262EE5EAC44C57D19B210E61EEB838CC7BE2F755022FBE7673005CCEADF9B558AF321E30D575C4CED50EBC8B28E5E933FB8578AE7CFFAC68CC8C31A273E8FF1D82FE5F5396DAE9640532AC26B8A3428F2148E297F233B50EBE4E1362F0799CAD079C25031E47C807C1257880C922FD2C80F21B657BCBC7BD661C5E9C71FB9D843097DDFEADC16074528BC12537328F05B6A80753E3CED42488AFB39C4CCC5F61FF67817E26D8059B4B84F3A3E1FA66049E1D31425C1C836F5C05CFB117243EECDFA9BE843841310C1DACBCD1239C10F2C0D06F63771F520E530265F33A61768E748BB755E4C3A4E06C52C8C79CF5CAD5822D8A1974BF87FC0CEA98EA132B676C00C21DAE0897410C6AF9FA96858342BA5448FE65FC55340318D18E9B522D8C41259DA9E4A0290E35E5139A769CB138E5A015CEB4820FB713CFF1F52DC3F9D04D08EDF1ECA7D7634B9662991A9773FC88324D9A009EDBDAC5CC34310683E3D0338E7C37D98D90A2999BAF5BF933D52D41EF8CBEA178CEFC18DC3F476766FB1519BB756CDB553CEFBAB24849074BE6CC929DC7301CE67F1B89A6BBEE1B9A2AF9F59CC4641681C5FCA59BAAD700068577A6F0B55177E2C1303BF20DFA3EDF079B13E2E02635271112864EA2E36C7F8F9E809721E1C3916B711781471800EC1F791E09890F3A9C43B50C6AB044DD2DD136ED26D0A951AAD756EBDE86542D37DB131204D0EBAE6602CCA062CE26FB2BCC33E3D30EF52EBDE7D80D9F6122E4F2C1FEE7CFD0412153CA41079DE9603ADE4E5CED3342FA4FA19B10EFE10EA0A07F0DBC21C441A2DE2D047CB930010BE059B856105BC3BA64586112D2AC7F9E1D4CF0CC31ED807D85B38B047BF35EC347597E6DFF7C1813F6F298BD70F0340E18ED7A304AB61352E4081E05017972902CFC3B08022776FB1B9A2227A9CF4F289EC773880999BAC9823E413406D8837C311602841701F0200DD043FF833A2460F7EF992661CD2F4D73C2327D39A7670198D1B2236A2FF52E02DE038C4E31EFB87F72CF3F1D86CFF13EBF3E8EE0C2712DA17F182D27A85CD81FF77FD173617F9AFEF61E4C0FEE7F3BF8D5FB091C00FE32983D0B5ED8CBABCF8ECDB1BC84FC63E3FCC98FFCF4DB85AF2048D8AF0361E01B8D4F6000E35AF377CB9BB31160D6A1D65E0C5634DADF9269DC66F1E372922FB84DF0932800D9ABAE171E514A3C94BECF621C121FC51764969D81FA07FBAB356AA7D81FDD9040DAF48F5B9244B50F916130DD6FB662AAC4DE255AB0B7C7A4F1E3DE7F088FB514FF0E44B53BCE1AF86DE477CD7E33E4AB7C8C464769088347B3A8077C51C9D850F9CD929BEC3EB218F19BA130654288702C2E9110F6D002042BFBDFA2942EAF0A6A7199C57B58F26AD79CC0053F5414C72B5FD2FA9D2879B5866FD5681D8E6B7227AE93D3A307F8974545271628B710122BF485C2DC10D1DCF2B6C58943DEC2B8D4F310E13B4811B334887B6B955D2C042A6F11974D0409954316046CA53AD7C0CD9AADC22EA55BC42BAB5660946F9F2E4129D47305D6044431DF6E96205555AB30B26B456510458D1E42D167158EE6339DE2EF09E2316D01A7AC5985C0E7B66C121631AA3A1D94733CE5070665BE8E1CACD144079302ECDFA1850AAFAC5E81754E69029563DEA8D541BA43CC09904941A3760552BE6E1130F2721D6AE513356A7590848BE3E59042B315D8C56DD3025A51B1827E65AF0CFB23DCD7A6062C5AAC422CAE8A12918A9A55088D1B6D449846F50AACC645220254A3560349295EF54A0D9CFC605C294C5EA787521DBDA9C2AA5AAC406C9C4128A0356AB5908A33D6145045B51656FB2C130566BB991E767564810AB66AA18758FBE25505596BA287D9FA6C4F85DB6AA689DDFA024909DE6AA7879E7DB5A1C2CC6AF590DA29DA2ACC763B3DF43C4952059A57EB613572B154888D467AB88A6C0B150745733D5E92ED66151F49532D1EF9A6990236AF6D21D5961BA26B5D5BE98E6A0DA5FEB1B81ED65D11970FD3F4C7854595D6F2B706A65C058C9B0F2D890595EBACB2EE707CEBCD6108F282C3316BE2C1459C80208BE214159760B1E0595315655E32BA5D008F7BE87FBADD1B3D870166ABB2791C2F3E8CC73485A6FB21F22242C934DE67F235063E19BF3F38F86DFCEEDD38CC30C61EAD8F717B5558726296904D2DAD5ABE38F0617A0D0A73BAC13DE0EEC7C40F8566B555A542EC0A46F285A3F8E20A812CE8F8DF4580BDDAA7BD810B4211EBFBCBBE7F2F2E36C555790E77C61E961BE8F4B9615D0256423010BE090122C96E2CD3BF24C4AA1DDD65D49FD30F1AEAF459893E42E3F4C43A50A3421F2FBF21AA8E9417E963D402B3759C5AB13156B6F893A0C95685CBF08AD8741DAA2813510EC72DC911E23782C80A61B0A62618E94923CCD18FB2C8A03B288C1C46F51278EBB6E21465FAAF723DD54B7DEA2C7ED400A98AF5B1BE221F1211AB563C288F3BE52966734B0AA380D3511225A96A80EBB1E2FA202F8B212F79FDE5CD248D775F961ACC0A4500EECBDDA43539346A0C11B35D32012E2BD6C7E2EDCF9220109FB559A38F78C397897EFB2D54A55B23EC353FD8AEB8E75195EE42AF02E8C79A173F451168D6E8235E4568863008D2ADC02664ABCAC0DD834F12B8AA541FA99BA1D8909096BB1A76445405A7219C6A52D540A714AD412ECA0C1C84F2EA8B867F50961A4CC159904DB49C8D0A63BCFC2B2109605E63608D49CCFC4111AF5E6EA0D8304A308A17225EB3461FF16F09C8735FEB6855A9C1DA0B518FDF72D95A7895A5E64892616B559918301F46D0BF7F691BAFB2B82FC76F9B5DDB4D99C07C57D6920594A3E9184015A5D2FE65048209AC8A8D6D4D1BAB56BC413B384878ABBE9B84CBDDBEF5E4BCB32FBA827E85CC333285D8E735FAEFD2A616352EB96C2FEC145767EA3D6D164E973FAF3CD4BE1A5590DE468581C31BC7C09B9FA1008A2E7EBB6EB7F475A7832D45768F1D7D57A06968BA9252197FC808DA3A542B36F25129C192A567ADDC6466E379B7E5F53ACDB9AD51658A995F2B2E22E61506D19B6C98EE501CB403388D1A6344A9156AD799A30A3AD9A830C693A966ABCAC45232EF3E7A695BC9BCD0400A098D79B2A8DF96C25AB991FD5E002C89A7342A064BEBCED2963990966CAD0A4FC7DAAA69574690058B5BAF308C1F4BB10C2D233F244194A45AB12156F6DD8880253B3969E9F361897C97854638628FCAC2417FDDEA6F3DEDD8A21A2F81D5D5E6A5107D2B611A936AE394858646419CB26AC5060B8EE26AD2C64AA328D4C7B9201E10B333AA523331174D8B99AA4C84C0E7C430E869D7CD90B8A4E6CEE890B252C7D8A0792BBE82B068DA1490BA664D49DEB749932C8D8CD744B673BBEC99A23C215D489C71ADFA92FD922E3B4CB43D264599590E82987B60F476107E68BD99B4C470FAA3DCDBF445D7B15567880AB1AFC02C6B0CA507B5F7FB8BC2C1683B33DAF5EFCDECD8EC25881A267B29B5DAD2F2AFDC78583969DBED569589F5E684723833A44B3A6B82A4052699488B0089325E2B36C3022F32216FD60C1AE85603F3EF342D6AA01C51570355D4FD6B8BEDBD2D5B0BCB6C588429BE566C2097C9FD3FA1D74A1A290B4D62FA8F3012967355A9CBAF10ECEC9E4F02426506A05EBE5BB669435625FB72DB8E3D9162695812055DDF9A9AA737B5DF7AADD810EB73C28F8891A01515062B0DF022CB02A8151BF64D94C75AF1A632F6B641EF76DA27A89F996051873B7BE54BA9FBD6E7217376CDCC595988A4513364CE4A65573A8398592F9BF67EC84F6CD777B1AAED63632C9AD715D0BA7676254CDF06B7387046FCF8A92ADF9849B3A95096A703DBCEE236A8EA4EBB51F9C94E76545C0EA6A1D42A42B5FAF1F6A2F215A5FA2F293DBF415CDAD78A0DB758855DB12E7988F911411285DBD497047942B23CF379E766D79D56D95E66E7B5E7E5AE33724E20EA7259EC3244674B858F133F3D3FA70E53946D6EF6BD8EB2F3523DD892F146C56632895222693A51B3C61051BE9BDFAA1AB28BE067224932E08586E3ADC8146DD77541956468B6EA0C514F95DBF5A7E6DBF5055D2CEF6559B389A04E0F53AEF8321A15AE97ECFA89259B9EB4F3834A2DCFDA725493695B85E066056CD30BB09D1076148A41B8A2CCF80965490AB58AC18D76A791F981BF9634518EA6A3812A4AE592157C6FEB495E64E08380E27ACD861F52969A84BBF9F9666D55AB4A0DF40CD3A77658A8281BF4C29D5ED44FB0B6A41C4B2075346429B972B06B544208A455B78118CFB053D1AA3714D3FAE9E876A47409A286902EA5569ABC8C40389FAA2ADE5C56D8B5D5EFB5332AE9FABE55658A295FE1B7EB4C51C5457ABDDC144D96C55FAF30C5937CCCD3A8D82D0BB2D3D365ED72057B66A87316CA32E2658623A391598EAA6673A6C8E626CD05904155A506FE6AC0AF0966F6E511660EC049CB8A4BEA4D365CEC1C78F0293DBBA2095394998C1AF64310B53FBD294BCD6443620E6BC5065851CB08A605066FD0D2D7ABEB47746DC495FF81166248B82C347B43E7A1706866ADD8184B54B846C5E0363B9DAEB24B7CECCD56523CCDC94A41EB6A66B177F8F335A0F4894442D24D516AD627319E5D959AC41C67B2AF9866FD3A6283D6A9B4AEBCEECAAAEEA950F535508DA01AFFF5CEA14E8DBF6C7A31CB9A5BFB6362517C06CD70AC19F5ABDBEC68C512440D8D584AADD406DE5C5089A270133BBE19CD657A8D9D1CAFAAD3474D1F499C2E6BC5BB25F33B1D7868DC54685375E490DABAA322DFE6A9E438A108B3459F28DBCD1AF74B4B7B0BEFD7B548B5BDC99FDED7E6C5D792634E5A55C698B274F75695993C044C2265A0ED3AF7BB5AEB06644E9FD92FC4F3105B5DA9951BA0D118DC0788CEA1FF77085A8325549AA665AAB2328733D5373211B6AED7B539212E87D69E1857C1F43341F6E309DACB1F398E900F824BF00093459ACA49CF2212B62661451B93E80CFB7B391345137D1EBF9310E62FB7A5CECD9AC134B8360DE515D956AD820A55DF20A81176CA162488FBC8E27CD8A830E9E5ACDD35A3C3A03E132C401465FA2897086787733470AA520324F02C432A4B8DFA0423107CE362738EBD20F1A12FF44FD2C28003C4098A61D8323AB5620357153DC209210F4CC06F63D9918A92FAC136BAB68D27FCBA46C0EC935DE3A884D5B78E4B2076C93CE68FC1C45BB490ED3A23F18F623688B283359A55834AB9562956CB9E01206CF132331D687DD55A01B34BEA656F2532A8D416AB14FF86EE2A9A018CA8E570F70A6C03A55A81B34B5A35E8C2F6EAC22734B53CABC810F5E55E4EBD4BD2CE9F4074CEAAD2DD5E35F2E798101A8B4F97950E1AEC5A83CFF123CA56BC1310F976757939B6BE56AFC2D925FDE64F20094F95A546DB8E6826F928A65E6ED62F5133AB5273A46F289EB389B9FDB9B2A47A13366DB01FEDFA6EF6E32A9EDB7682A590FAD64241BE4B46E23C86A1A88C55E95B14F36D747336AB7AD7731293590416735BD7F9AE06D657C3A520BBA48CB50711276EA1D2003782DFA0EFF32D8739212D5D172A37BB5E6604243ACE3648E8097811CEEC12AADFA289DAAC39B88BC0230C00F68F3C8F84C4B77969A5090B7D13A109B74BC6C27208984E85DC907AF9A064AE952C37CAACBF01F4EC2BD84A787DE5D280DA25C5BAC23C9D347DD62664A3C2C0C5C612ACB270502CC78AC5FE4FEC664A4A11B5D54741BD4B1A933E82E8B1D68AF5B1CE08691FF395969824A07B0F770005C2A9CD65B13ED60D21EDACA0BCC824711A704F780216C013BE46102A0DA272082B61DB75468B5C142621CDFAE549D1556D8C16C01C4101DFAE34CAA2BB48B03717431ACD1AD3BC3A05A85069D453F692308CA45DAD5799F655052BD6EE46E8431D952ED2888E82803CB5930225D50659CD200844835695EA237D4353D444C94ACCB2139F503C8FE710133255242A8A2D4C2C098D01F62077F54380F022001EA4017A68C7FB97B41B322477CA4B2A2AD34FB278FA6CBB49C93D2F297FD3A280BB3360062F890F035AD1DD7A731882F4D92933E0E9CCEBC3F4D422F6A4E01E509835D91BB1817A444CEBD91B7A615E47B8CF1BECDF7E0F2601E2295A65834B80D114D2F88E3C40FC71EFFDC1BBF77BA3A30001CA67D060BA377A0E034C3F78098D4908302699E07CDC9BC7F1E2C3784C538E743F445E442899C6FB1E09C7C0276386F5E3F8DDBB31F4C3719B3C87D54239F8AD40A1D46F9C4355F32D738938F24384EFF859A121C108B44EAD3AFC2B7C69BFEA42A46EE0B4E6078E5BEFBB4D7828F11D79373EEEDDA359BA1F96BAA49F204F9F6692780D627E78136F08F37BBB3E274100EE034632050115E4B4CD81FF5FF0C08F20F2E620FAB7103CFF7B1D298E9295408D0F1A2DE0E547C45940AAD980E6581A0E5543FB33245E909D976ED6A5C2BE193F5DDD8418492C93947917A9E5745D24B7A0EB577A450EA600FC4C80746C6C48DA5766FA8835B4B729B7898FE20B32EB22AB056D1779ADD3F62BB3D5A94D36AC244FE6E46FF6CBDD64D9CBD5EA590A96B9CB19521769E394678C44F6887B23B66CB8807816CF3FEEFDCC5D0243F01BBE44F0AB7724057EFFF32F2B808DA5517656E52ECFFAC5CF952F69F5588AE05711EF3508BE8220B123E59FE1933D30B5A6B7BDC90FE7D887CF1FF7FE2BA5FC303AFFCF3F2AE21F46E9FAF7C3E860F4DFB6C46D02A29867727411B494B683B01574FD0A5C7538D05A5359E342290BB2D0BCDC37379FD0432173F1D95A86FD45D345C9BB5FD990B0A522AB36375AF5EB317B62719D5D02BCE89549753770F7D9A1BA15B8A74EB6EE09EE894B7E03FDFDBAAE59677F6A0BBD457D2B97DDC6D8C9C865A49DEC5C45DAAFA9ABDD5B69CF42D9B3786F58E2BA7B7115C01AA29753F72B7D4A31EFB04A290FAAED6EEF1B236F47EC0A480BCBD9A33806DEFC0C05D0DA826CE34AB18945FB29FE9EA0E8A58B66E5A45DD4AA46DAF36AA97695881593CE8FB52F8F2DB386989F4B6F23AA908DEC1D8A03AB8036CD400169414172288B536379018205ACFA6DA976CCE70260E9CA7F3078DA06AF08BB753279057127A35727EED7ECA5ACD65FB257B7E9AEFD568B0B74AD980F2BA2C660AC75E9ED6AD2399EF20379C54C540385EAAC4C2BA2C9EFDEFFDA2D3CB0B6E6D4EE27B711F62C0EF5B58055DD576669456A696AAB05A7B669CAB5E8980D9BE26B1B1B0AB8CD5E6CD2D0F43563DB73D86D677358B518D9B507DBA599BDC7F7A9A5C1B31649BC40F8C1DE1E36E5DE9D6FC323E3686C3D6C032B153464678DEED8E0F6BBFDA06D71CF294D60F7B8EB1DF21E60CC237E4917B3DB22EFDBF872666B7B7D97746645DE6EE0224016E48DE380173B33FC9B743A5215C884A3BB0A74977E37094DADAD828EEFD5CEBA291B706B1B66C9FD3FA117DBC1828F30B2B548B1178FB618F70C087D25A6425BBFB3CF603A687629EDA68AAD5013DB7A9D2739ACFD0A529CE2B297B590AEC18B95CDCDB44736A4D4416ACFC61561137366F6823ABB8DDBAE5943369C8B6CB87E990CD9704DAD59DB40D932EE6F32C3297D053457E01BF83D81B4D36A63DB2DE70DA40B82A964F7730BCD902D81B66CE6EDF9631BD78F4DF82637F011C1A72ECA955176D1AE8AB25FF54A3FFAB5B6B0B49BE2945D4767116B6DC5CC33117B9A6B5EBD22AD3F5BE5A4DD34AA24ED57A5B6529B8E137F06FB733B6DCF58AC5F5318F17B552DE50E5ACDAC48D16CA657A480438E85F94EEE67626FFCADE5AD5568F54CB1B5D04EED6C6F1658B1857E590A6958F6286D8CB8C5F5644783683EA3668BA46E536AB5C0329F53558B33FBCB40C5EC6D1A1FB19CE67214F61ACEC91FDB9E7EBCAD95DB2D8AE119F8DE452D1859178DC8C9FA5586EA04610B12FC372E60D6D401D3A72AC8B0DBA1B88D086C725FD9A70E525BA7EF22BE6DFA7EE5D86AB8C06910D800A6C71830CFC360CB107ED67EA7D37332D24E87E754A4BB926A726DF79BBE0CCEE6223043B4BA0ACC20EDADE052388B29B429DE90E2BEB611E8BE715E517731034DEA5DB1047663DE17C022D851C04789198047984D8E2776623816BF4EFD947E7A6C69E8B01F82C84E5239970F7BA6E94B64C724D99C20ACD9717BC1C17FA085B5801E7F81E7E1CC923F98A359D3CC37996450DADCAE534B69B0BBCC2C0A6BBFD5C7335E034A9F48644F86AD6DA9DCC0D9461D9A57A007E7F80E8508773AAA743B8F854CADE45AE7FD5893CF41383B0A67BE11937E22D94530396127E92C08FB15514BFB4CEDAB73D6024B1FDDDA9CB17151DBC4B2357B1F61FA3E5EAB3DEDF81E8F138A305B34D85B55DA3C09C2E69AED95AF686C6F36A6378178F1B5BD6FC373C4666EE8DAF2C1EFE0B30869739BC0D6BAFEF499FD423C41C90E1C8D596344E7D0FF3B0476862DCB0DB0E69FBD61DF8A1E4390F05B7AB28CD457335B59F589AC6E4A1F47C807C1257880C922BBE3F62CBDE3B6A7348B6BC6E1C519B7DF49087359B2A34F6F5935B9D845AF6A4D6E572B13C49D496BB3C05768E7B08AECA6432B50D5158736C0CA5B0EEDF48C0945F08D8BE839F682C48776BC187E9B607E85A00D974D729BDF6095D6B24AF9CD96E4152D6DAD9AA5EAE64F9BFE69C4EFBAEDF713BFB72CD4AC9CB1050877BDCCE10D08B6552F7810E9DE459A7F107115CD0046F435C521ADCAF420867D8BE127341D0CAA1C8C0F8D351F617B970AFC31B31BDF07F55A7DB0A5A97E9DE34794AD6C2620F2074D9382F1A1B1B79B0F299AD9CBB6E67DABAB8715B06F289EB3390DDB41B56A5B76575BD79F0CAFE2F9E08AA9BA1BC37098263AA7356CCBFC6FAA12D7731293590416F34E576EBD01C5A88D90B5398CE9D437E8FB3C2C3A27C4D281B04ED6520C9D44C75948979E8097619B695D0DBC8BC0230C00F68F3C8F84C4EF7C75CD6EEBA29E7B653B0446A71DB763B74FAAB7E3C3D15CA873EB36214100BDB729D07AC75D629ED19476D18A9C9C637B586FD828B3FF93211B470966F148FC3342EC6C5C4F88F77067ED46D01B422C6D81DF42C0BDB20958006FED237EB12524B65A416112D2AC6F9E0D44F0CC116D407D85B38B047BF35E57A3599648FF7C1813F6DA98263B781A078CB665992B0B0B16FBFE4741409E2CA5C3FC0E82C09AADFB86A6C85A92CE138AE7F11C6242A6F6F2754E108D01F620F78A4380F022001EA4017AB03300433A506747E58852E2A174CC721647898FE20B32CB4E49F883FDD572584EB13FBA2141AD69D1955B184CF7ABC2CB2488D12240DC7033FBB0D77673AEF0090C600C4747A92BCFD761D403BE3808ACEFFEAA3EE4074AC87A525435FBF31F029B9BEC04CF18F1331F318D2326A9B1E89B21ECA10508DA63D06A2875E38AC6A23BC79FB2846ED79CC0053FC200C7F2675E9F73C9A035EEAB46E4705C931FD1FF4DBFD5E01985A52FE5C3F4280B26BFE01E08A7FF6554B7302E3AED8708DFF1C3BE4282119F6F2A212EDEB1D0E4D69BC31030BDB8E7276D66FAD06E458577BF8A357396E71AECB3663A5DE02D35BA512A93C8BAAC92B2CB6BF559145AA264543458C62E6BB39AE9044431DF1990B0ABAA648C8A5A0D16D9C9D7320E458D94417960B61EBE72D85AF54B78E90EDA29FE9E201EA512789535322E5925821A0CCA2BE3252CAA3A2993A25A934BFD3A6D05B3461325CF5A2B4DD6C5E5BA0AB665B59265DE6235BBFACD9222B746AD8C59AD8126AFFC0A3F05AFA256C92B6BB09A57EE5D0B5CF272197E76F9871EB272C41AB54A2EBA2326BD8F44C15468A67EC666CBD5DDC8EF6A10191715325659DD6AF0954FA7F35CA64FD43EE27709D7A2C552B659230DBEF9D9A9127E458D944F56A9815F3FEA52C2A4512DE5546BB19A5DFDAC44915BA356C6ACD6408F9752EDEA952A4EBA4A579DCF23E793D7A9D8A4D5DA5CCAD34F94BCAA164B38168D56F3AD1F6C21F26CD4CAF8D51AE8F2CA8F2350312BAAD5DCB216BAEC5ADF95AAD8B69BA9D9375B6A77A3FC864ED983AAC512E645236DBED557324AC6B5264B3897ADB45937BF6550B26F355BD285464BFD6E34F3CFD5FD68B55BD6914653ED9EA429C84AFE59ED12AEBC8136AF563AA6926BBBDD12FECDA6DA3DC972CD941DC8AB97F04D5B68B3ABE7F12899361A2D615DB5D3598D2CCD6350F645D17C49AFA414DADD1377A4955D93345DD22DA1B56E97B24D46552FF25A35E3B481C8AB16E851C50ED258E1A8D6501A4010238A8A9862F974F5422176A58E044AE88BAA767CB1F97092B06919C92AEB0EC7D910E605EC2733E66CE2BE243E0C685A7A38BE49300FCD66BFB204E312E29061E2ECCD56A0451BBEAA2D8278AD1E154D84D87D0C98E882A32846537EE44A44D87C4AD319F02B0812BE780DEFA17F8EAF927891C4EC9161781FBCD40783070297F13F1C0B7D3EBCCABC591B8FC0BA897834FB0A1F2728F0CB7E9F49D2E915103CC2986F70F37719F38DEED94B89F4393D6C5507281FBE32307A07C345C0C31B57F896998B2E7D63DEE4059C01EF85953FA274A5AC0259FD229AC37E788200B3AB21CD312A7AF693C9B01F3EFFF9FF01DAD0782F2C1F0200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607140548581_migrations_date_07142016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA9748DAA44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211AB7C93B0DF45E39846C104FD960C72FFCA9D381FCB877E48708DF41CADE01C16C40F6466DA61F2641C4099AE39DBD9DFD36F90F23B1D10FA5B03099E2FF7E184D92204E22F811C3248E38D575721F20EFAFF0E58E3C40FC11274150EF37EB39AB6B14B0A2EB882C6014BFDCC069FE34E7FEDE68DCA41BB7094BB21A4DF67CE738FEE5A7BDD167C61CDC07B0148BDA58DC3209839F20861188A17F0DE218469863C0746005EE2D5EFCFF821B9343A6597B6CC09E2F209EC5733EC0CF7BA333F40CFDA224EFC1178C982232A2384AE02A2627907A115A6402D333AFD310A0A0772E5F163E1FEEE397556F4A0BE684FD5700F1BFEF50B892F496BDFF845A7ED0C371A58E464ACAE46EBEA6A272880D2B2BEF4217852DE85C29ED6A5E2BE8433083D92BEB594FBE221F12279CDEBC46263E8A2FC86C9916DE45C07B80D129E603E29FDC33D72686CFF1FE84844C074BC5CC917E182D6F5F29E68FFBBFE829E64FD3DFDE83E9C1FD6F07BF7A3F8103D045498BEE7551D43AAD2B65650E5EE464963D7D641DE2C2FAE56E22CAAEA11EA4601CA3EC36735CF76BA586789CE88C91AC18899FDFBDD71A0943EE37D023915FBD7509E7F73FFF6285F367F08866A9E0B4FAC0C4EE04C6CC396126E2060669133A478B7C680BD1CCDAFC916AF25944C21B12D404B7AAFDE30E443318B32722CA26B72489BC750D4A8667CFAC64785B6A5CB6DD5D2F7EAE50235BC2DCE27E15A119C220F80A82A47F7BF6193EB961A43F2B18E8BA1D252F347889921776A093924F40149FC73034F4DD0BB20DFBEB69373A686C41E74A6BBF42EC93685DAFFD16468FC8838D49B92F95C8795D47C8ABFC60E8A190C763AE23F6571E93FB756F74EB01FE0CEFCD7D0236BC41BF2CAE619460142F7A65F2B704E46250BEDE1FCD514E10F54882E3DEBA5930E877C4AF221F46D0BF5F731DD6CB626AF3AB467DC3CCBC20C885C1CC2E67549B36CB592F3A59E68AD49571CE4DDDD2C58155A3EAC6800FFAC30569F5E245AD45C542651B7489F5650D75CAA95D6994B612AF0E9C300717E106508799B5F13EFBD789825D8710E2511C036F7E8602E82462F4D663A6A7F87B82A21743F390536DD830E4BDE862156AA4CEE2166C58087622D4B76CB105A3741BD0C99CCEB95DCF097610E0CDDEDB1D8A0367CC5C19CD825D071B92933AF278267C0915BDF4CEE79A50B63A9EB0F62E26AC05C0AB628AC3946365CA792C5D03B349A7A0DBF4B453F4A3D3C453277635F5A44CD78EBDC520EAE4D1A58459C3DE2D68277560644EBA37283E17433C25519867CE99EB7F8D7C1BCC406713B0D42F7BF7FED77EF6AE989FB6AE19487BEF649E3CF2FD08D2FEDD990BE2012779795CFB1CB832B530FC6B70CD1C2D2C869C49573300057CBE5D74B1FE39E92BB1FCFD3B7E6ED6C92E739B9D19EB3441F49518B7DE3798A98317E264CFE802E10737598A94AF8AFC2EAB154E0DB1DF8536156AD47F48D0C53CB70DBBE9DA13DF39A509ECB41357A3DCF0B47787BC0718F3AD9DA4CBE4D72277370572B6EBAE7A2EE9AC77A5B9818B00ADAF341C06BC74F30EDFBA7F9A2A5B26315DD434A3DC0A35EDAEA1AE3F0C10F7B73B489C95D046F60E9DA4A624F7FF845EDC3F1FF8082317F10037DB9A8EB6B7024277C37C6ADBB5543D0C2D5A4AB3615B56AAB5A929D3B407F62C599EF3B9EEAB4F613E27E13D7F5DEB005D83171B0948697FBAA88283C4E6B7EEAC64EFA6CB9AA2463928F8F001C36E7CC0D02F93E10386B672AD6B572DCD406F3D8B3B7D1734D7E51BF83D81D4746D2A8318ECBEA6DDBF81744130D5C8D7D9BCA1B4A4710EE7286BFEEE5B77066FE023824F86862123DAB029C83AD1C5165494AE8CC1198AA89BE41777C9DBA9B2BBE2B3AE6DCA3F2CD98C3FD0C121DC597BB296C3B155AE46DE8B6E06A6247565615E9571394EFCEC7C967EFC1D978E0AEBF31446107BD0C18720CE522C534EAEF22C536643B2E5F6275B7E266E64A1F3170515753D6FDF88FAB45B024D411B77E06B27826877A1D365FC1C45647A30EBE6DE4FB6F6EFEAFE64D41BF77FAA0086B903A41BFCB01970D174BAB62729F528EC35E89B8F8835A57FB341925B14C333F0DD549D33AA0DAB31EB41170DCEC95C29EF8451CD88836F83FFC635C2896E63FA5405275FCDFEC3D6A966725FB3D766FA5923DDB092D6BBD2455BDBF4AED4D659B471B39B79AEF7EE787A235B5D1F13F26028D335CA0D8B74DE8B4E474D57A43B97507AEDEEB4968C95AB284CC6CD59182663E7264C92B272F44555CA6BF868D4856BC075BA539A5B45B8611B5A75A48B196D52EF9C2575B7677A011C313A0AF858B2617E8499E774D27FA0D9D1994B9FD2C3BC1CBC2AEC8720EAFF5B4B2EC66EA6842F51FF53812B27C1C97CED6687E61F68E164E7840BDA793873B088CA3939B1746F3DFBB29C053BB81E29DD16781EE52CDEC5F1D0740176F0AEA06B40E91389DCE8AB931C851B38DB1AEF7EF774FC1C338CF4D1BB687A41BD617DDFF6CB7BD2B96BCDB3AC9DE8D2A048E68A9427386407E71829518D72D30AC4FBD0498B0A4257AA64279D2443B9642B670BDFCFF321703277BFF59058F6D6C2F4AD7552B58C74D3BAB66B935507113B4E28C26CC9EE262EE5EAC44C57D19B210E61EEB838CC7BE2F755022FBE7673005CCEADF9B558AF321E30D575C4CED50EBC8B28E5E933FB8578AE7CFFAC68CC8C31A273E8FF1D82FE5F5396DAE9640532AC26B8A3428F2148E297F233B50EBE4E1362F0799CAD079C25031E47C807C1257880C922FD2C80F21B657BCBC7BD661C5E9C71FB9D843097DDFEADC16074528BC12537328F05B6A80753E3CED42488AFB39C4CCC5FE1AC3765FF4C709FF09708E747C1F53C460CC51123C4C52FF8C655EE1C7B41E2C3FE9DE84B881314C3D0C14A1B3DC209210F0CFD3676F7E1E4300550A67B84D935D22DBE56910F9380B349201F73D62B570BB42866D0FD1EEA33A863AA4FAC9CB1010877B8125C0631A8E5EB5B060E0AE95221F997F057D10C60443B6E42B530069574A69283A638D4944F68DA71C6E294835638D30A3EDC4E3CC7D7B70CE7433721B4C7B39E5E8F2D598A656A5CCEF123CA346902782E6B1733D3C4180C8E43CF38F2DD6433428A666EBE66E5CF54B704BD33FA86E239F36370FF1C9D99ED5764ECD6B16D57F1BCEBCA22251D2C99334B761EC37098FF6D2496EEBA6F68AAE4D7731293590416F3976EAA5E031814DE99C2D746DD8907C3ECC837E8FB7C1F6C4E88839BD39C4448183A898EB3FD3D7A025E86040F47AEC55D041E6100B07FE47924243EE870EED432A8C11275B744DBB49B40A746A95D5BAD7B1B52B5DC6C4F481040AFBB9A0930838A399BECAF30CF844F3BD4BBF49E63377C868990CB07FB9F3F4307854C29071D74A683E9783B71B5CF08E93F856E42BC873B8082FE35F0861007897AB710F0E5C2042C8067E11A416C0DEB9261854948B3FE797630C133C7B403F615CE2E12ECCD7B0D1F6579B5FDF3614CD8CB63F6C2C1D33860B4EBC128D94E489123781404E4C941B2F0EF20089CD8ED6F688A9CA43E3FA1781ECF212664EA260BFA04D118600FF2C55808105E04C08334400FFD0FEA9080DDBF679A8435BF34CD09CBF4E59C9E056046CB8EA8BDD4BB08780F303AC5BCE3FEC93DFF54183EC7FBFCBA38820BC7B584FE61B49CA072617FDCFF45CF85FD69FADB7B303DB8FFEDE057EF277000F8CB60F62C78612FAF3E3B36C7F212F28F8BF3273FF2D36F17BE822061BF0E84816F343E81018C6BCDDF2D6FCE468059875A7B3158D1687F4BA6719BC58FCB49BEE036C14FA20064AFBA5E784429F150FA3E8B71487C145F905976E6E91FECAFD6A89D627F74430269D33F6E4912D53E3C86C174BFD98AA9127B9768C1DE1E93C68F7BFF213CD652FC3B10D5EE346BE0B791DF35FBCD90AFF2311A1DA5210C1ECDA21EF045256343E5374B6EB2FBC762C46F82C2940921C2B1B84442D8430B10ACEC7F8B52BABC2AA8C56516EF61C9AB5D730217FC10511CAF7C49EB77A2E4D51ABE55A37538AEC99DB84E4E8F1AE05F16159D58A0DC4248ACD0170A73434473CBDB16270E790BE352CF4384EF2045CCD220EEAD5576B110A8BC455C361124540E5910B095EA5C03376BB60ABB946E11AFAC5A8151BE7DBA04A550CF15581310C57CBB59825455ADC2C8AE11954114357A08459F55389ACF748ABF2788C7B4059CB26615029FDBB24958C4A8EA7450CEF1941F1094F93A72B046131D4C0AB07F87162ABCB27A05D639A509548E79A35607E90E31274026058DDA1548F9BA45C0C8CB75A8954FD4A8D541122E8A97430ACD566017B74B0B6845C50AFA95BD32EC8F703F9B1AB068B10AB1B81A4A442A6A5621346EB011611AD52BB01A178708508D5A0D24A578D52B3570F28370A530799D1E4A75D4A60AAB6AB102B171E6A080D6A8D5422ACE54534015D55A58EDB34B1498ED667AD8D511052AD8AA851E62ED8B571564AD891E66EBB33D156EAB992676EB0B242578AB9D1E7AF6D5860A33ABD5436AA768AB30DBEDF4D0F3244915685EAD87D5C8C55221361AE9E12AB22D541C14CDF57849B69B557C244DB578E49B660AD8BCB685545B6E88AE756DA53BAA3594FAC7E27A5877455C3E4CD31F1716555ACBDF1A987215306E3EB4241654AEB3CABAC3F1AD378721C80B0EC7AC8907177102822C8A53545C82C582674D559479C9E876013CEEA1FFE9766FF41C0698ADCAE671BCF8301ED3149AEE87C88B0825D3789FC9D718F864FCFEE0E0B7F1BB77E330C3187BB43EC6ED5561C989594236B5B46AF9E2C087E9B527CCE906F780BB1F133F149AD556950AB12B18C9178EE28B2B04B2A0E37F1701F66A9FF6062E0845ACEF2FFBFEBDB8D81457E539DC197B586EA0D3E78675095809C140F826048824BBB14CFF9210AB767497517F4E3F68A8D36725FA088DD312EB408D0A7DBCFC46A83A525EA48F510BCCD6716AC5C658D9E24F82265B152EC32B62D375A8A24C44391CB7244788DF08222B84C19A9A60A4278D30473FCA2283EEA0307218D54BE0ADDB8A5394E9BFCAF5542FF5A9B3F85103A42AD6C7FA8A7C4844AC5AF1A03CEE94A798CD2D298C024E474994A4AA01AEC78AEB83BC2C86BCE4F597379134DE7D596A302B1401B82F7793D6E4D0A83144CC76C904B8AC581F8BB73F4B82407CD6668D3EE20D5F26FAEDB750956E8DB0D7FC60BBE29E4755BA0BBD0AA01F6B5EFC1445A059A38F7815A119C22048B7029B90AD2A03770F3E49E0AA527DA46E866243425AEE6AD81151159C8670AA4955039D52B406B928337010CAAB2E1AFE41596A3005674136D172362A8CF1F2AF842480798D81352631F30745BC7AB98162C328C1285E8878CD1A7DC4BF2520CF7DADA355A5066B2F443D7EAB656BE155969A234986AD556562C07C1841FFFEA56DBCCAE2BE1CBF6D766D376502F35D594B16508EA6630055944AFB97110826B02A36B6356DAC5AF106EDE020E1ADFA6E122E77FBD693F3CEBEE80AFA1532CFC814629FD7E8BF4B9B5AD4B8D4B2BDB0535C95A9F7B459385DFEBCF250FB6A54417A1B15060E6F1C036F7E860228BAF8EDBADDD2D79D0EB614D93D76F45D81A6A1E94A4A65FC212368EB50ADD8C847A5044B969EB57293998DE7DD96D7E934E7B6469529667E8DB888985718446FB261BA4371D00EE0346A8C11A556A85D678E2AE864A3C2184FA69AAD2A134BC9BCFBE8A56D25F34203292434E6C9A27E5B0A6BE546F67B01B0249ED2A8182CAD3B4B5BE6405AB2B52A3C1D6BABA65D1941162C6EBDC2307E2CC532B48CFC900451926AC58658D977230296ECE4A4A5CF8725F25D161AE1883D2A0B07FD75ABBFF5B4638B6ABC0456579B9742F4AD84694CAA8D53161A1A0571CAAA151B2C388AAB481B2B8DA2501FE7827840CCCEA84ACDC45C342D66AA3211029F13C3A0A75D3743E2929A3BA343CA4A1D6383E6ADF80AC2A2695340EA9A352579DF264DB234325E13D9CEEDB2678AF284742171C6B5EA4BF64BBAEC30D1F698146566390862EE81D1DB41F8A1F566D212C3E98F726FD3175DC7569D212AC4BE02B3AC31941ED4DEEF2F0A07A3EDCC68D7BF37B363B397206A98ECA5D46A4BCBBF72E361E5A46DB75B5526D69B13CAE1CC902EE9AC0992169864222D0224CA78ADD80C0BBCC884BC593368A05B0DCCBFD3B4A88172445D0D5451F7AF2DB6F7B66C2D2CB36111A6F85AB1815C26F7FF845E2B69A42C3489E93FC24858CE55A52EBF42B0B37B3E09089519807AF96ED9A60D5995ECCB6D3BF6448AA5614914747D6B6A9EDED47EEBB56243ACCF093F224682565418AC34C08B2C0BA0566CD837511E6BC59BCAD8DB06BDDB699FA07E6682451DEEEC952FA5EE5B9F87CCD935336765219246CD90392B955DE90C6266BD6CDAFB213FB15DDFC5AAB68F8DB1685E5740EBDAD995307D1BDCE2C019F1E3A7AA7C6326CDA642599E0E6C3B8BDBA0AA3BED46E5273BD9517139988652AB08D5EAC7DB8BCA5794EABFA4F4FC0671695F2B36DC621576C5BAE421E6470449146E535F12E409C9F2CCE79D9B5D775A657B999DD79E97BBCEC83981A8CB65B1CB109D2D153E4EFCF4FC9C3A4C51B6B9D9F73ACACE4BF5604BC61B159BC9244A89A4E944CD1A4344F96E7EAB6AC82E829F8924C980171A8EB72253B45DD7055592A1D9AA33443D556ED79F9A6FD71774B1BC9765CD26823A3D4CB9E2CB6854B85EB2EB27966C7AD2CE0F2AB53C6BCB514DA66D15829B15B04D2FC07642D8512806E18A32E327942529D42A0637DA9D46E607FE5AD244399A8E06AA28954B56F0BDAD277991810F028AEB351B7E48596A12EEE6E79BB555AD2A35D0334C9FDA61A1A26CD00B777A513FC1DA92722C81D4D190A5E4CAC1AE5109219056DD06623CC34E45ABDE504CEBA7A3DB91D225881A42BA945A69F23202E17CAAAA78735961D756BFD7CEA8A4EBFB569529A67C85DFAE33451517E9F572533459167FBDC2144FF2314FA362B72CC84E4F97B5CB15EC99A1CE5928CB8897198E8C466639AA9ACD99229B9B3417400655951AF8AB01BF2698D99747983900272D2B2EA937D970B173E0C1A7F4EC8A264C5166326AD80F41D4FEF4A62C35930D8939AC151B60452D23981618BC414B5FAFAE1FD1B51157FE075A8821E1B2D0EC0D9D87C2A199B562632C51E11A1583DBEC74BACA2EF1B1375B49F134272B05ADAB99C5DEE1CFD780D2271209493745A9599FC47876556A12739CC9BE629AF5EB880D5AA7D2BAF2BA2BABBAA742D5D74035826AFCD73B873A35FEB2E9C52C6B6EED8F8945F11934C3B166D4AF6EB3A3154B1035346229B5521B787341258AC24DECF8663497E9357672BCAA4E1F357D2471BAAC15EF96CCEF74E0A17153A14DD591436AEB8E8A7C9BA792E38422CC167DA26C376BDC2F2DED2DBC5FD722D5F6267F7A5F9B175F4B8E3969551963CAD2DD5B5566F21030899481B6EBDCEF6AAD1B90397D66BF10CF436C75A5566E804663701F203A87FEDF21680D9650699A96A9CACA1CCE54DFC844D8BA5ED7E684B81C5A7B625C05D3CF04D98F27682F7FE438423E082EC1034C16692A273D8B48D89A84156D4CA233ECEFE54C144DF479FC4E4298BFDC963A376B06D3E0DA349457645BB50A2A547D83A046D8295B9020EE238BF361A3C2A497B376D78C0E83FA4CB0005194E9A35C229C1DCED1C0A94A0D90C0B30CA92C35EA138C40F08D8BCD39F682C487BED03F490B030E1027288661CBE8D48A0D5C55F40827843C3001BF8D65472A4AEA07DBE8DA369EF0EB1A01B34F768DA31256DF3A2E81D825F3983F06136FD142B6EB8CC43F8AD920CA0ED668560D2AE55AA5582D7B0680B0C5CBCC74A0F5556B05CC2EA997BD95C8A0525BAC52FC1BBAAB680630A296C3DD2BB00D946A05CE2E69D5A00BDBAB0B9FD0D4F2AC2243D4977B39F52E493B7F02D139AB4A777BD5C89F6342682C3E5D563A68B06B0D3EC78F285BF14E40E4DBD5E5E5D8FA5ABD0A6797F49B3F81243C55961A6D3BA299E4A3987AB959BF44CDAC4ACD91BEA178CE26E6F6E7CA92EA4DD8B4C17EB4EBBBD98FAB786EDB099642EA5B0B05F92E1989F31886A23256A56F51CCB7D1CDD9ACEA5DCF494C661158CC6D5DE7BB1A585F0D9782EC9232D61E449CB8854A03DC087E83BECFB71CE684B4745DA8DCEC7A991190E838DB20A127E04538B34BA87E8B266AB3E6E02E028F3000D83FF23C1212DFE6A595262CF44D8426DC2E190BCB21603A157243EAE58392B956B2DC28B3FE06D0B3AF602BE1F5954B036A9714EB0AF374D2F4599B908D0A03171B4BB0CAC241B11C2B16FB3FB19B292945D4561F05F52E694CFA08A2C75A2BD6C73A23A47DCC575A629280EE3DDC011408A73697C5FA583784B4B382F22293C469C03DE10958004FF81A41A83488CA21AC846DD7192D7251988434EB97274557B5315A007304057CBBD2288BEE22C1DE5C0C69346B4CF3EA14A042A5514FD94BC2309276B55E65DA5715AC58BB1BA10F7554BA48233A0A02F2D44E0A94541B64358320100D5A55AA8FF40D4D5113252B31CB4E7C42F13C9E434CC85491A828B630B1243406D883DCD50F01C28B00789006E8A11DEF5FD26EC890DC292FA9A84C3FC9E2E9B3ED2625F7BCA4FC4D8B02EECE8019BC243E0C684577EBCD6108D267A7CC80A733AF0FD3538BD893827B4061D6646FC406EA1131AD676FE885791DE13E6FB07FFB3D980488A768950D2E01465348E33BF200F1C7BDF707EFDEEF8D8E0204289F4183E9DEE8390C30FDE025342621C0986482F3716F1EC78B0FE3314D39D2FD107911A1641AEF7B241C039F8C19D68FE377EFC6D00FC76DF21C560BE5E0B7028552BF710E55CDB7CC25E2C80F11BEE36785860423D03AB5EAF0AFF0A5FDAA0B91BA81D39A1F386EBDEF36E1A1C477E4DDF8B8778F66E97E58EA927E823C7D9A49E23588F9E14DBC21CCEFEDFA9C0401B80F18C914045490D33607FE7FC1033F82C89B83E8DF42F0FCEF75A4384A5602353E68B480971F116701A966039A636938540DEDCF907841765EBA59970AFB66FC7475136224B14C52E65DA496D37591DC82AE5FE915399802F03301D2B1B121695F99E923D6D0DEA6DC263E8A2FC8AC8BAC16B45DE4B54EDBAFCC56A736D9B0923C9993BFD92F7793652F57AB672958E62E67485DA48D539E3112D923EE8DD8B2E102E2593CFFB8F73377090CC16FF812C1AFDE9114F8FDCFBFAC00369646D95995BB3CEB173F57BEA4D56329825F45BCD720F80A82C48E947F864FF6C0D49ADEF6263F9C631F3E7FDCFBAF94F2C3E8FC3FFFA8887F18A5EBDF0FA383D17FDB12B70988629EC9D145D052DA0EC256D0F52B70D5E1406B4D658D0BA52CC842F372DFDC7C420F85CCC5676B19F6174D1725EF7E6543C2968AACDADC68D5AFC7EC89C5757609F0A25726D5DDC0DD6787EA56E09E3AD9BA27B8272EF90DF4F7EBBA669DFDA92DF416F5AD5C761B632723979176B2731569BFA6AE766FA53D0B65CFE2BD6189EBEEC555006B885E4EDDAFF429C5BCC32AA53CA8B6BBBD6F8CBC1DB12B202D2C678FE21878F33314406B0BB28D2BC52616EDA7F87B82A2972E9A95937651AB1A69CFABA5DA5522564C3A3FD6BE3CB6CC1A627E2EBD8DA84236B277280EAC02DA340305A40505C9A12C4E8DE5050816B0EAB7A5DA319F0B80A52BFFC1E0691BBC22ECD6C9E415C49D8C5E9DB85FB397B25A7FC95EDDA6BBF65B2D2ED0B5623EAC881A83B1D6A5B7AB49E778CA0FE41533510D14AAB332AD8826BF7BFF6BB7F0C0DA9A53BB9FDC46D8B338D4D70256755F99A515A9A5A9AD169CDAA629D7A263366C8AAF6D6C28E0367BB14943D3D78C6DCF61B79DCD61D56264D71E6C9766F61EDFA79606CF5A24F102E1077B7BD8947B77BE0D8F8CA3B1F5B00DAC54D0909D35BA6383DBEFF683B6C53DA73481DDE3AE77C87B80318FF8255DCC6E8BBC6FE3CB99ADEDF55DD2991579BB818B005990378E035EECCCF06FD2E9485520138EEE2AD05DFADD2434B5B60A3ABE573BEBA66CC0AD6D9825F7FF845E6C070B3EC2C8D622C55E3CDA62DC3320F495980A6DFDCE3E83E9A0D9A5B49B2AB6424D6CEB759EE4B0F62B48718ACB5ED642BA062F563637D31ED9905207A93D1B57844DCC99D90BEAEC366EBB660DD9702EB2E1FA653264C335B5666D0365CBB8BFC90CA7F415D05C816FE0F704D24EAB8D6DB79C37902E08A692DDCF2D3443B604DAB299B7E78F6D5C3F36E19BDCC047049FBA285746D945BB2ACA7ED52BFDE8D7DAC2D26E8A53761D9D45ACB51533CF44EC69AE79F58AB4FE6C959376D3A892B45F95DA4A6D3A4EFC19ECCFEDB43D63B17E4D61C4EF55B5943B6835B32245B3995E91020E3916E63BB99F89BDF1B796B756A1D533C5D6423BB5B3BD5960C516FA6529A461D9A3B431E216D7931D0DA2F98C9A2D92BA4DA9D502CB7C4E552DCEEC2F0315B3B7697CC4729ACB51D86B38277F6C7BFAF1B6566EB7288667E07B17B560645D342227EB5719AA13842D48F0DFB8805953074C9FAA20C36E87E23622B0C97D659F3A486D9DBE8BF8B6E9FB9563ABE102A7416003981E63C03C0F832D43F859FB9D4ECFC9483B1D9E5391EE4AAAC9B5DD6FFA32389B8BC00CD1EA2A3083B4B7824BE12CA6D0A678438AFBDA46A0FBC67945DDC50C34A977C512D88D795F008B6047011F2566001E6136399ED889E158FC3AF553FAE9B1A5A1C37E08223B49E55C3EEC99A62F911D93647382B066C7ED0507FF8116D6027AFC059E87334BFE608E664D33DF6492416973BB4E2DA5C1EE32B328ACFD561FCF780D287D22913D19B6B6A57203671B75685E811E9CE33B1422DCE9A8D2ED3C1632B5926B9DF7634D3E07E1EC289CF9464CFA896417C1E4849DA4B320EC57442DED33B5AFCE590B2C7D746B73C6C6456D13CBD6EC7D84E9FB78ADF6B4E37B3C4E28C26CD1606F5569F324089B6BB657BEA2B1BDD998DE04E2C5D7F6BE0DCF119BB9A16BCB07BF83CF22A4CD6D025BEBFAD367F60BF104253B7034668D119D43FFEF10D819B62C37C09A7FF6867D2B7A0C41C26FE9C932525FCD6C65D527B2BA297D1C211F0497E001268BEC8EDBB3F48EDB9ED22CAE19871767DC7E2721CC65C98E3EBD65D5E46217BDAA35B95DAD4C107726ADCD025FE1AC37BDC86E3FEC0DBEBA0AD1C2385C96B721DA00E3B7BB81E01B17E573EC05890FED783BFCD6C1FCAA411BAE9DE4D6BFC17AAD65BDF21B30C92B5A025B355FD50DA136FDD888DF89DBEFA7806F59A85939630B10EE7AE9C31B106CABDEF220D2BD8B34FF70E22A9A018CE86B8A575A95E9410CFB16C34F683A185439181F1A6B3EC2F62E15F8636637C30FEAB5FA004C53FD3AC78F285BD94C40E40F9A2605E343636FD71F5234B39795CDFB56570F2B60DF503C67731AB6836AD5B6ECAEB6AE3F195EC5F3C11553753786E1304D744E7FD896F9DF5425AEE72426B3082CE69DAEE67A038A511B216B7318D3A96FD0F77958744E88A583639DACA5183A898EB3902E3D012FC376D4BA1A781781471800EC1F791E0989DFF98A9BDDD6453DF7CA76088C4E3B6EDB6E9F546FC707A6B950E7D66D4282007A6F53A0F58EC5C43CF329EDA2153939C7F6B0DEB05166FF2743D68E12CCE2D1F96784D8D9B89E10EFE1CEDACDA1378458DA02BF85807B6513B000DEDA4701634B486CB582C224A459DF3C1B88E09923DA80FA0A671709F6E6BDAE46B3CC91FEF93026ECB5314D76F0340E186DCB325716162CF6FD8F82803C594A87F91D0481355BF70D4D91B5249D2714CFE339C4844CEDE5EB9C201A03EC41EE158700E145003C4803F46067008674A0CE8ECA11A5C443E998E52C8E121FC51764969DA6F007FBABE5B09C627F7443825AD3A22BB73098EE5785974910A34580B8E166F661AFEDE65CE11318C0188E8E52579EAFC3A8077C711058DFFD557DC80F9E90F5A4A86AF6E73F043637D9499F31E26743621A474C5263D13743D8430B10B4C7A0D550EAC6158D45778E3F6509DDAE39810B7ED4018EE5CFBC3EE792416BDC578DC8E1B8263FA2FF9B7ED3C1330A4B5FCA87E991174C7EC13D104E09CCA86E615C74DA0F11BEE387828504233EDF54425CBC63A1C9AD378721607A71CF4FE4CCF4A1DD8A0AEF7E156BE62CCF35D867CD74BAC05B6A74A35426917559256597D7EAB328B444C9A868B08C5DD66635D3098862BE3320615755C91815B51A2CB213B2651C8A1A2983F2606D3D7CE5B0B5EA97F0D21DB453FC3D413C4A25F02A6B645CB24A0435189457CB4B585475522645B52697FAB5DB0A668D264A9EB5569AAC8B4B78156CCB6A25CBBCC56A76F51B28456E8D5A19B35A034D5EF9557F0A5E45AD9257D66035AFDCBB16B8E4E532FCEC92103D64E588356A955C74474C7A6F8982A9D04CFD8CCD96ABBB91DFE920322E2A64ACB2BAD5E02B9F4EE7B94C9FA87D14F012AE458BA56CB3461A7CF3335625FC8A1A299FAC5203BF7E24A68449A35ACAA9D66235BBFA998A22B746AD8C59AD811E2FA5DAD52B559C7495AE3AC747CE27AF53B149ABB5B994A7A42879552D96702C1AADE65B3F0043E4D9A895F1AB35D0E5951F5BA0625654ABB9652D74D9B5BE3F55B16D3753B36FB6D4EE46F9AD9DB207558B25CC8B46DA7CABAF64948C6B4D96702E5B69B36E7ECBA064DF6AB6A40B8D96FADD68E69FABFBD16AB7AC238DA6DA3D49539095FCB3DA255C79036D5EAD744C25D776BB25FC9B4DB57B92E59A293B90572FE19BB6D06657CFE351326D345AC2BA6AA7B31A599AC7A0EC8BA2F9925E4929B4BB27EE482BBB2669BAA45B426BDD2E659B8CAA5EE4B56AC6690391572DD0A38A1DA4B1C251ADA134802046141531C5F2E9EA8542EC4A1D0994D01755EDF862F3E12461D3329255D61D8EB321CC0BD84F66CCD9C47D497C18D0B4F4707C93601E9ACD7E6509C625C421C3C4D99BAD408B367C555B04F15A3D2A9A08B1FB1830D10547518CA6FC689688B0F994A633E05710247CF11ADE43FF1C5F25F12289D923C3F03E78A90F060F042EE37F3816FA7C789579B3361E817513F168F6153E4E50E097FD3E93A4D32B20788431DFE0E6EF32E61BDDB39712E9737A28AB0E503E7C6560F40E868B808737AEF02D33175DFAC6BCC90B3803DE0B2B7F44E94A5905B2FA453487FDF004016657439A6354F4EC2793613F7CFEF3FF03C6EA8184441F0200, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607140556514_migrations_date_07142016', N'MaaAahwanam.Repository.db.ApiContext', 0x1F8B0800000000000400ED5DDD6EE33A92BE5F60DFC1C8D5EEE24C9CEEF383731AE919244ED22798A49349D2DD3B7373C048B4CD8944BA45293F58EC93EDC53ED2BEC292FA9748DAA44CD1762234D08849D6571455552C164BE4FFFDCFFF1EFEE5390C468F30A288E08F7BEFF60FF646107BC44778F6712F89A77FFA75EF2F7FFED77F393CF5C3E7D1D7A2DD8FBC1DA3C4F4E3DE3C8E171FC663EACD6108E87E88BC8850328DF73D128E814FC6EF0F0E7E1BBF7B37860C628F618D468737098E5108D31FECE784600F2EE2040497C48701CDCB59CD6D8A3AFA0C424817C0831FF72E013802F3278041B87F031784A298442FFBFEFDDEE828408075E81606D3BD11C098C42066DDFDF085C2DB38227876BB600520B87B5940D66E0A020AF3C7F85035D77DA283F7FC89C6156101E5253426A121E0BB1FF3211AB7C93B0DF45E39846C104FD960C72FFCA9D381FCB877E48708DF41CADE01C16C40F6466DA61F2641C4099AE39DBD9DFD36F90F23B1D10FA5B03099E2FF7E184D92204E22F811C3248E38D575721F20EFAFF0E58E3C40FC11274150EF37EB39AB6B14B0A2EB882C6014BFDCC069FE34E7FEDE68DCA41BB7094BB21A4DF67CE738FEE5A7BDD167C61CDC07B0148BDA58DC3209839F20861188A17F0DE218469863C0746005EE2D5EFCFF821B9343A6597B6CC09E2F209EC5733EC0CF7BA333F40CFDA224EFC1178C982232A2384AE02A2627907A115A6402D333AFD310A0A0772E5F163E1FEEE397556F4A0BE684FD5700F1BFEF50B892F496BDFF845A7ED0C371A58E464ACAE46EBEA6A272880D2B2BEF4217852DE85C29ED6A5E2BE8433083D92BEB594FBE221F12279CDEBC46263E8A2FC86C9916DE45C07B80D129E603E29FDC33D72686CFF1FE84844C074BC5CC917E182D6F5F29E68FFBBFE829E64FD3DFDE83E9C1FD6F07BF7A3F8103D045498BEE7551D43AAD2B65650E5EE464963D7D641DE2C2FAE56E22CAAEA11EA4601CA3EC36735CF76BA586789CE88C91AC18899FDFBDD71A0943EE37D023915FBD7509E7F73FFF6285F367F08866A9E0B4FAC0C4EE04C6CC396126E2060669133A478B7C680BD1CCDAFC916AF25944C21B12D404B7AAFDE30E443318B32722CA26B72489BC750D4A8667CFAC64785B6A5CB6DD5D2F7EAE50235BC2DCE27E15A119C220F80A82A47F7BF6193EB961A43F2B18E8BA1D252F347889921776A093924F40149FC73034F4DD0BB20DFBEB69373A686C41E74A6BBF42EC93685DAFFD16468FC8838D49B92F95C8795D47C8ABFC60E8A190C763AE23F6571E93FB756F74EB01FE0CEFCD7D0236BC41BF2CAE619460142F7A65F2B704E46250BEDE1FCD514E10F54882E3DEBA5930E877C4AF221F46D0BF5F731DD6CB626AF3AB467DC3CCBC20C885C1CC2E67549B36CB592F3A59E68AD49571CE4DDDD2C58155A3EAC6800FFAC30569F5E245AD45C542651B7489F5650D75CAA95D6994B612AF0E9C300717E106508799B5F13EFBD789825D8710E2511C036F7E8602E82462F4D663A6A7F87B82A21743F390536DD830E4BDE862156AA4CEE2166C58087622D4B76CB105A3741BD0C99CCEB95DCF097610E0CDDEDB1D8A0367CC5C19CD825D071B92933AF278267C0915BDF4CEE79A50B63A9EB0F62E26AC05C0AB628AC3946365CA792C5D03B349A7A0DBF4B453F4A3D3C453277635F5A44CD78EBDC520EAE4D1A58459C3DE2D68277560644EBA37283E17433C25519867CE99EB7F8D7C1BCC406713B0D42F7BF7FED77EF6AE989FB6AE19487BEF649E3CF2FD08D2FEDD990BE2012779795CFB1CB832B530FC6B70CD1C2D2C869C49573300057CBE5D74B1FE39E92BB1FCFD3B7E6ED6C92E739B9D19EB3441F49518B7DE3798A98317E264CFE802E10737598A94AF8AFC2EAB154E0DB1DF8536156AD47F48D0C53CB70DBBE9DA13DF39A509ECB41357A3DCF0B47787BC0718F3AD9DA4CBE4D72277370572B6EBAE7A2EE9AC77A5B9818B00ADAF341C06BC74F30EDFBA7F9A2A5B26315DD434A3DC0A35EDAEA1AE3F0C10F7B73B489C95D046F60E9DA4A624F7FF845EDC3F1FF8082317F10037DB9A8EB6B7024277C37C6ADBB5543D0C2D5A4AB3615B56AAB5A929D3B407F62C599EF3B9EEAB4F613E27E13D7F5DEB005D83171B0948697FBAA88283C4E6B7EEAC64EFA6CB9AA2463928F8F001C36E7CC0D02F93E10386B672AD6B572DCD406F3D8B3B7D1734D7E51BF83D81D4746D2A8318ECBEA6DDBF81744130D5C8D7D9BCA1B4A4710EE7286BFEEE5B77066FE023824F86862123DAB029C83AD1C5165494AE8CC1198AA89BE41777C9DBA9B2BBE2B3AE6DCA3F2CD98C3FD0C121DC597BB296C3B155AE46DE8B6E06A6247565615E9571394EFCEC7C967EFC1D978E0AEBF31446107BD0C18720CE522C534EAEF22C536643B2E5F6275B7E266E64A1F3170515753D6FDF88FAB45B024D411B77E06B27826877A1D365FC1C45647A30EBE6DE4FB6F6EFEAFE64D41BF77FAA0086B903A41BFCB01970D174BAB62729F528EC35E89B8F8835A57FB341925B14C333F0DD549D33AA0DAB31EB41170DCEC95C29EF8451CD88836F83FFC635C2896E63FA5405275FCDFEC3D6A966725FB3D766FA5923DDB092D6BBD2455BDBF4AED4D659B471B39B79AEF7EE787A235B5D1F13F26028D335CA0D8B74DE8B4E474D57A43B97507AEDEEB4968C95AB284CC6CD59182663E7264C92B272F44555CA6BF868D4856BC075BA539A5B45B8611B5A75A48B196D52EF9C2575B7677A011C313A0AF858B2617E8499E774D27FA0D9D1994B9FD2C3BC1CBC2AEC8720EAFF5B4B2EC66EA6842F51FF53812B27C1C97CED6687E61F68E164E7840BDA793873B088CA3939B1746F3DFBB29C053BB81E29DD16781EE52CDEC5F1D0740176F0AEA06B40E91389DCE8AB931C851B38DB1AEF7EF774FC1C338CF4D1BB687A41BD617DDFF6CB7BD2B96BCDB3AC9DE8D2A048E68A9427386407E71829518D72D30AC4FBD0498B0A4257AA64279D2443B9642B670BDFCFF321703277BFF59058F6D6C2F4AD7552B58C74D3BAB66B935507113B4E28C26CC9EE262EE5EAC44C57D19B210E61EEB838CC7BE2F755022FBE7673005CCEADF9B558AF321E30D575C4CED50EBC8B28E5E933FB8578AE7CFFAC68CC8C31A273E8FF1D82FE5F5396DAE9640532AC26B8A3428F2148E297F233B50EBE4E1362F0799CAD079C25031E47C807C1257880C922FD2C80F21B657BCBC7BD661C5E9C71FB9D843097DDFEADC16074528BC12537328F05B6A80753E3CED42488AFB39C4CCC5FE1AC3765FF4C709FF09708E747C1F53C460CC51123C4C52FF8C655EE1C7B41E2C3FE9DE84B881314C3D0C14A1B3DC209210F0CFD3676F7E1E4300550A67B84D935D22DBE56910F9380B349201F73D62B570BB42866D0FD1EEA33A863AA4FAC9CB1010877B8125C0631A8E5EB5B060E0AE95221F997F057D10C60443B6E42B530069574A69283A638D4944F68DA71C6E294835638D30A3EDC4E3CC7D7B70CE7433721B4C7B39E5E8F2D598A656A5CCEF123CA346902782E6B1733D3C4180C8E43CF38F2DD6433428A666EBE66E5CFD4AB2528187C43F19CF92F3D9EBBE2CC4CBF22E3B68E2DBB8AE75D571229E960B99C59AEF31886C37C6F239174D77D415325BF9E9398CC22B098BF7453F51AC0A0F0CE14BE36EA4E3C166647BE41DFE7FB5E73421CDC94E62422C2D049749CEDE7D113F032247438722DEE22F0080380FD23CF2321F1418773A696410D96A8BB25DAA6DD033A354AE5DA6ADDDB90AAE5667B4282007ADDD54C801954CCD9647F8579E67BDAA1DEA5F71CBBE1334C845C3ED8FFFC193A28644A39E8A0331D4CC7DB89AB7D4648FF297313E23DDC0114F4AF8137843848CCBB85802F172660013C0BD706626B58970C2B4C429AF5CFB383099E39A61DB0AF707691606FDE6BF828CBA3ED9F0F63C25E1EB3170E9EC601A35D0F46C9763E8A9CC0A320204F0E92837F0741E0C46E7F4353E424D5F909C5F3780E3121533759CF2788C6007B902FC64280F022001EA4017AE87F508784EBFE3DD324ACF9A5690E58A62FE7F42C00335A7644EDA5DE45C07B80D129E61DF74FEEF9A7C1F039DEE7D7C3115C38AE25F40FA3E504950BFBE3FE2F7A2EEC4FD3DFDE83E9C1FD6F07BF7A3F8103C05F06B367C10B7B79F5D9B1399697907F4C9C3FF9919F7EABF0150409FB75200C7CA3F1090C605C6BFE6E79733602CC3AD4DA8BC18A46FB5B328DDB2C7E5C4EF205B7097E1205207BD5F5C2234A8987D2F7598C43E2A3F882CCB2334EFF607FB546ED14FBA31B12489BFE714B92A8F6A1310CA6FBCD564C95D8BB440BF6F698347EDCFB0FE1B196E2DF81A876875903BF8DFCAED96F867C958FD1E8280D61F06816F5802F2A191B2ABF597293DD3716237EF313A64C08118EC52512C21E5A806065FF5B94D2E555412D2EB3780F4B5EED9A13B8E08786E278E54B5ABF1325AFD6F0AD1AADC3714DEEC475727AB400FF92A8E8C402E516426285BE50981B229A5BDEB63871C85B18977A1E227C0729629606716FADB28B8540E52DE2B28920A172C88280AD54E71AB859B355D8A5748B7865D50A8CF2EDD32528857AAEC09A8028E6DBCD12A4AA6A1546766DA80CA2A8D14328FAACC2D17CA653FC3D413CA62DE09435AB10F8DC964DC2224655A783728EA7FC40A0CCD79183359AE8605280FD3BB450E195D52BB0CE294DA072CC1BB53A4877883901322968D4AE40CAD72D02465EAE43AD7CA246AD0E927031BC1C5268B602BBB84D5A402B2A56D0AFEC95617F84FBD8D480458B5588C55550225251B30AA171638D08D3A85E81D5B82844806AD46A2029C5AB5EA981931F7C2B85C9EBF450AAA3355558558B15888D330605B446AD165271869A02AAA8D6C26A9F55A2C06C37D3C3AE8E2450C1562DF4106B5FB8AA206B4DF4305B9FE9A9705BCD34B15B5F1C29C15BEDF4D0B3AF34549859AD1E523B255B85D96EA7879E2749AA40F36A3DAC462E960AB1D1480F57916DA1E2A068AEC74BB2DDACE22369AAC523DF3453C0E6B52DA4DA724374AD6B2BDD51ADA1D43F16D7C3BA2BE2F2619AFEB8B0A8D25AFED6C094AB8071F3A125B1A0729D55D61D8E6FBD390C415E7038664D3CB888131064519CA2E2122C163C6BAAA2CC4B46B70BE0710FFD4FB77BA3E730C06C55368FE3C587F198A6D0743F445E442899C6FB4CBEC6C027E3F70707BF8DDFBD1B8719C6D8A3F5316EAF0A4B4ECC12B2A9A555CB17073E4CAF39614E37B807DCFD98F8A1D0ACB6AA54885DC148BE70145F5C2190051DFFBB08B057FBB437704128627D7FD9F7EFC5C5A6B82ACFE1CED8C372039D3E37AC4BC04A0806C237214024D98D65FA978458B5A3BB8CFA73FA01439D3E2BD147689C8E58076A54E8E3E53740D591F2227D8C5A60B68E532B36C6CA167F1234D9AA70195E119BAE43156522CAE1B8253942FC461059210CD6D404233D698439FA51161974078591C3A85E026FDD569CA24CFF55AEA77AA94F9DC58F1A2055B13ED657E4432262D58A07E571A73CC56C6E496114703A4AA224550D703D565C1FE46531E425AFBFBC79A4F1EECB528359A108C07DB99BB42687468D2162B64B26C065C5FA58BCFD591204E2B3366BF4116FF832D16FBF85AA746B84BDE607DB15F73CAAD25DE85500FD58F3E2A72802CD1A7DC4AB08CD100641BA15D8846C5519B87BF049025795EA237533141B12D27257C38E88AAE03484534DAA1AE894A235C845998183505E6DD1F00FCA528329380BB28996B351618C977F252401CC6B0CAC3189993F28E2D5CB0D141B460946F142C46BD6E823FE2D0179EE6B1DAD2A35587B21EAF15B2C5B0BAFB2D41C49326CAD2A1303E6C308FAF72F6DE35516F7E5F86DB36BBB291398EFCA5AB28072341D03A8A254DABF8C40308155B1B1AD6963D58A37680707096FD5779370B9DBB79E9C77F64557D0AF907946A610FBBC46FF5DDAD4A2C62596ED859DE26A4CBDA7CDC2E9F2E79587DA57A30AD2DBA8307078E31878F3331440D1C56FD7ED96BEEE74B0A5C8EEB1A3EF0A340D4D57522AE30F19415B876AC5463E2A2558B2F4AC959BCC6C3CEFB6BC3EA739B735AA4C31F36BC345C4BCC2207A930DD31D8A837600A751638C28B542ED3A735441271B15C67832D56C5599584AE6DD472F6D2B99171A4821A1314F16F5DB52582B37B2DF0B8025F19446C56069DD59DA3207D292AD55E1E9585B35EDCA08B26071EB1586F1632996A165E487248892542B36C4CABE1B11B06427272D7D3E2C91EFB2D00847EC515938E8AF5BFDADA71D5B54E325B0BADABC14A26F254C63526D9CB2D0D028885356ADD860C1515C3DDA58691485FA3817C403627646556A26E6A2693153958910F89C18063DEDBA191297D4DC191D5256EA181B346FC55710164D9B0252D7AC29C9FB366992A591F19AC8766E973D539427A40B8933AE555FB25FD2658789B6C7A42833CB4110730F8CDE0EC20FAD379396184E7F947B9BBEE83AB6EA0C5121F61598658DA1F4A0F67E7F5138186D6746BBFEBD991D9BBD0451C3642FA5565B5AFE951B0F2B276DBBDDAA32B1DE9C500E67867449674D90B4C0241369112051C66BC56658E04526E4CD9A4103DD6A60FE9DA6450D9423EA6AA08ABA7F6DB1BDB7656B61990D8B30C5D78A0DE432B9FF27F45A492365A1494CFF1146C272AE2A75F915829DDDF34940A8CC00D4CB77CB366DC8AA645F6EDBB127522C0D4BA2A0EB5B53F3F4A6F65BAF151B627D4EF8113112B4A2C260A5015E645900B562C3BE89F2582BDE54C6DE36E8DD4EFB04F533132CEA7067AF7C2975DFFA3C64CEAE99392B0B91346A86CC59A9EC4A671033EB65D3DE0FF989EDFA2E56B57D6C8C45F3BA025AD7CEAE84E9DBE01607CE881F3F55E51B33693615CAF27460DB59DC0655DD69372A3FD9C98E8ACBC134945A45A8563FDE5E54BEA254FF25A5E737884BFB5AB1E116ABB02BD6250F313F2248A2709BFA92204F4896673EEFDCECBAD32ADBCBECBCF6BCDC7546CE09445D2E8B5D86E86CA9F071E2A7E7E7D4618AB2CDCDBED751765EAA075B32DEA8D84C26514A244D276AD61822CA77F35B55437611FC4C244906BCD070BC1599A2EDBA2EA8920CCD569D21EAA972BBFED47CBBBEA08BE5BD2C6B3611D4E961CA155F46A3C2F5925D3FB164D393767E50A9E5595B8E6A326DAB10DCAC806D7A01B613C28E4231085794193FA12C49A15631B8D1EE34323FF0D79226CAD174345045A95CB282EF6D3DC98B0C7C10505CAFD9F043CA529370373FDFACAD6A55A9819E61FAD40E0B1565835EB8D38BFA09D696946309A48E862C25570E768D4A0881B4EA3610E319762A5AF586625A3F1DDD8E942E41D410D2A5D44A93971108E75355C59BCB0ABBB6FABD7646255DDFB7AA4C31E52BFC769D29AAB848AF979BA2C9B2F8EB15A678928F791A15BB6541767ABAAC5DAE60CF0C75CE425946BCCC70643432CB51D56CCE14D9DCA4B90032A8AAD4C05F0DF835C1CCBE3CC2CC013869597149BDC9868B9D030F3EA5675734618A329351C37E08A2F6A73765A9996C48CC61ADD8002B6A19C1B4C0E00D5AFA7A75FD88AE8DB8F23FD0420C099785666FE83C140ECDAC151B63890AD7A818DC66A7D35576898FBDD94A8AA7395929685DCD2CF60E7FBE06943E914848BA294ACDFA24C6B3AB529398E34CF615D3AC5F476CD03A95D695D75D59D53D15AABE06AA1154E3BFDE39D4A9F1974D2F6659736B7F4C2C8ACFA0198E35A37E759B1DAD5882A8A1114BA995DAC09B0B2A51146E62C737A3B94CAFB193E35575FAA8E92389D365AD78B7647EA7030F8D9B0A6DAA8E1C525B7754E4DB3C951C271461B6E81365BB59E37E69696FE1FDBA16A9B637F9D3FBDABCF85A72CC49ABCA185396EEDEAA3293878049A40CB45DE77E576BDD80CCE933FB85781E62AB2BB57203341A83FB00D139F4FF0E416BB0844AD3B44C5556E670A6FA4626C2D6F5BA3627C4E5D0DA13E32A987E26C87E3C417BF923C711F24170091E60B2485339E95944C2D624AC6863129D617F2F67A268A2CFE37712C2FCE5B6D4B959339806D7A6A1BC22DBAA5550A1EA1B0435C24ED98204711F599C0F1B1526BD9CB5BB667418D467820588A24C1FE512E1EC708E064E556A80049E654865A9519F6004826F5C6CCEB117243EF485FE495A1870803841310C5B46A7566CE0AAA2473821E48109F86D2C3B5251523FD846D7B6F1845FD708987DB26B1C95B0FAD67109C42E99C7FC3198788B16B25D6724FE51CC065176B046B36A5029D72AC56AD93300842D5E66A603ADAF5A2B607649BDECAD440695DA6295E2DFD05D45338011B51CEE5E816DA0542B707649AB065DD85E5DF884A696671519A2BEDCCBA97749DAF91388CE5955BADBAB46FE1C134263F1E9B2D241835D6BF0397E44D98A770222DFAE2E2FC7D6D7EA5538BBA4DFFC0924E1A9B2D468DB11CD241FC5D4CBCDFA256A66556A8EF40DC5733631B73F5796546FC2A60DF6A35DDFCD7E5CC573DB4EB01452DF5A28C877C9489CC7301495B12A7D8B62BE8D6ECE6655EF7A4E62328BC0626EEB3ADFD5C0FA6AB814649794B1F620E2C42D541AE046F01BF47DBEE53027A4A5EB42E566D7CB8C8044C7D906093D012FC2995D42F55B34519B35077711788401C0FE91E79190F8362FAD3461A16F2234E176C958580E01D3A9901B522F1F94CCB592E54699F537809E7D055B09AFAF5C1A50BBA4585798A793A6CFDA846C5418B8D8588255160E8AE558B1D8FF89DD4C4929A2B6FA28A8774963D247103DD65AB13ED61921ED63BED212930474EFE10EA04038B5B92CD6C7BA21A49D15941799244E03EE094FC00278C2D70842A541540E61256CBBCE68918BC224A459BF3C29BAAA8DD102982328E0DB954659741709F6E66248A359639A57A700152A8D7ACA5E128691B4ABF52AD3BEAA60C5DADD087DA8A3D2451AD1511090A77652A0A4DA20AB19048168D0AA527DA46F688A9A2859895976E2138AE7F11C6242A68A4445B1858925A131C01EE4AE7E08105E04C08334400FED78FF92764386E44E79494565FA49164F9F6D3729B9E725E56F5A14707706CCE025F161402BBA5B6F0E43903E3B65063C9D797D989E5AC49E14DC030AB3267B2336508F88693D7B432FCCEB08F77983FDDBEFC124403C45AB6C7009309A421ADF9107883FEEBD3F78F77E6F74142040F90C1A4CF746CF6180E9072FA1310901C624139C8F7BF3385E7C188F69CA91EE87C88B0825D378DF23E118F864CCB07E1CBF7B37867E386E93E7B05A2807BF152894FA8D73A86ABE652E11477E88F01D3F2B34241881D6A955877F852FED575D88D40D9CD6FCC071EB7DB7090F25BE23EFC6C7BD7B344BF7C35297F413E4E9D34C12AF41CC0F6FE20D617E6FD7E72408C07DC048A620A0829CB639F0FF0B1EF81144DE1C44FF1682E77FAF23C551B212A8F141A305BCFC88380B48351BD01C4BC3A16A687F86C40BB2F3D2CDBA54D837E3A7AB9B102389659232EF22B59CAE8BE41674FD4AAFC8C114809F09908E8D0D49FBCA4C1FB186F636E536F1517C41665D64B5A0ED22AF75DA7E65B63AB5C98695E4C99CFCCD7EB99B2C7BB95A3D4BC132773943EA226D9CF28C91C81E716FC4960D1710CFE2F9C7BD9FB94B60087EC397087EF58EA4C0EF7FFE6505B0B134CACEAADCE559BFF8B9F225AD1E4B11FC2AE2BD06C157102476A4FC337CB207A6D6F4B637F9E11CFBF0F9E3DE7FA5941F46E7FFF94745FCC3285DFF7E181D8CFEDB96B84D4014F34C8E2E8296D27610B682AE5F81AB0E075A6B2A6B5C286541169A97FBE6E6137A28642E3E5BCBB0BF68BA2879F72B1B12B65464D5E646AB7E3D664F2CAEB34B8017BD32A9EE06EE3E3B54B702F7D4C9D63DC13D71C96FA0BF5FD735EBEC4F6DA1B7A86FE5B2DB183B19B98CB4939DAB48FB3575B57B2BED59287B16EF0D4B5C772FAE025843F472EA7EA54F29E61D5629E541B5DDED7D63E4ED885D016961397B14C7C09B9FA1005A5B906D5C2936B1683FC5DF1314BD74D1AC9CB48B5AD5487B5E2DD5AE12B162D2F9B1F6E5B165D610F373E96D4415B291BD43716015D0A61928202D28480E65716A2C2F40B08055BF2DD58EF95C002C5DF90F064FDBE01561B74E26AF20EE64F4EAC4FD9ABD94D5FA4BF6EA36DDB5DF6A7181AE15F36145D4188CB52EBD5D4D3AC7537E20AF98896AA0509D95694534F9DDFB5FBB8507D6D69CDAFDE436C29EC5A1BE16B0AAFBCA2CAD482D4D6DB5E0D4364DB9161DB361537C6D634301B7D98B4D1A9ABE666C7B0EBBED6C0EAB1623BBF660BB34B3F7F83EB53478D6228917083FD8DBC3A6DCBBF36D78641C8DAD876D60A58286ECACD11D1BDC7EB71FB42DEE39A509EC1E77BD43DE038C79C42FE962765BE47D1B5FCE6C6DAFEF92CEACC8DB0D5C04C882BC711CF06267867F934E47AA029970745781EED2EF26A1A9B555D0F1BDDA593765036E6DC32CB9FF27F4623B58F01146B61629F6E2D116E39E01A1AFC45468EB77F6194C07CD2EA5DD54B1156A625BAFF32487B55F418A535CF6B216D23578B1B2B999F6C886943A48EDD9B8226C62CECC5E5067B771DB356BC88673910DD72F93211BAEA9356B1B285BC6FD4D6638A5AF80E60A7C03BF2790765A6D6CBBE5BC8174413095EC7E6EA119B225D096CDBC3D7F6CE3FAB109DFE4063E22F8D445B932CA2EDA5551F6AB5EE947BFD6169676539CB2EBE82C62ADAD987926624F73CDAB57A4F567AB9CB49B4695A4FDAAD4566AD371E2CF607F6EA7ED198BF56B0A237EAFAAA5DC41AB9915299ACDF48A1470C8B130DFC9FD4CEC8DBFB5BCB50AAD9E29B616DAA99DEDCD022BB6D02F4B210DCB1EA58D11B7B89EEC6810CD67D46C91D46D4AAD1658E673AA6A71667F19A898BD4DE32396D35C8EC25EC339F963DBD38FB7B572BB45313C03DFBBA80523EBA2113959BFCA509D206C4182FFC605CC9A3A60FA540519763B14B711814DEE2BFBD4416AEBF45DC4B74DDFAF1C5B0D17380D021BC0F41803E679186C19C2CFDAEF747A4E46DAE9F09C8A7457524DAEED7ED397C1D95C04668856578119A4BD155C0A67318536C51B52DCD73602DD37CE2BEA2E66A049BD2B96C06ECCFB0258043B0AF8283103F008B3C9F1C44E0CC7E2D7A99FD24F8F2D0D1DF64310D9492AE7F261CF347D89EC98249B1384353B6E2F38F80FB4B016D0E32FF03C9C59F20773346B9AF926930C4A9BDB756A290D7697994561EDB7FA78C66B40E91389ECC9B0B52D951B38DBA843F30AF4E01CDFA110E14E47956EE7B190A9955CEBBC1F6BF239086747E1CC3762D24F24BB082627EC249D0561BF226A699FA97D75CE5A60E9A35B9B33362E6A9B58B666EF234CDFC76BB5A71DDFE3714211668B067BAB4A9B2741D85CB3BDF2158DEDCDC6F426102FBEB6F76D788ED8CC0D5D5B3EF81D7C16216D6E13D85AD79F3EB35F882728D981A3316B8CE81CFA7F87C0CEB065B901D6FCB337EC5BD16308127E4B4F9691FA6A662BAB3E91D54DE9E308F920B8040F30596477DC9EA577DCF6946671CD38BC38E3F63B09612E4B76F4E92DAB2617BBE855ADC9ED6A6582B833696D16F80A67BDE94576FB616FF0D5558816C6E1B2BC0DD10618BFDD0D04DFB8289F632F487C68C7DBE1B70EE6570DDA70ED24B7FE0DD66B2DEB95DF80495ED112D8AAF9AA6E08B5E9C746FC4EDC7E3F057CCB42CDCA195B8070D74B1FDE80605BF5960791EE5DA4F9871357D10C60445F53BCD2AA4C0F62D8B7187E42D3C1A0CAC1F8D058F311B677A9C01F33BB197E50AFD507609AEAD7397E44D9CA6602227FD03429181F1A7BBBFE90A299BDAC6CDEB75ED5A360F00DC57336CFF5F8E997551BB4BB5ABDFEA47915CF07974DD5DD1886C374D2394D625BFC045395B89E9398CC22B09877BAC2EB0D28466D84ACCD754CA7BE41DFE7E1D33921960E9875B2E662E8243ACE42BFF404BC0CDB56EB6AE05D041E6100B07FE47924247EE7AB70765B17F57C3ADBA1323AEDB8BDBB7D52BD1D1FA2E6429D5BB7090902E8BD4D81D63B3E13F30CA9B48B56E4E41CDBC37AC34699FD9F0CD93D4A308B47EC9F116267837B42BC873B6B378CDE106269ABFC1602EE954DC002786B1F198C2D21B1D50A0A9390667DF36C2082678E6803EA2B9C5D24D89BF7BA1ACD324CFAE7C398B0D7C634D9C1D33860B42DCB5C59F8B0C80F380A02F264296DE6771004D66CDD373445D692799E503C8FE7101332B597D77382680CB007B9571C02841701F0200DD0839D0118D2863A3B2A4794120FA56396B3384A7C145F905976EAC21FECAF96C3728AFDD10D096A4D8BAEDCC260BA5F155E26418C1601E2869BD987BDB69B73854F600063383A4A5D79BE0EA31EF0C541607DF757F5213FA042D693A2AAD99FFF10D8DC642782C6889F2189691C31498D45DF0C610F2D40D01E835643A91B573416DD39FE942574BBE6042EF8910838963FF3FA9C4B06AD715F352287E39AFC88FE6FFAED07CF3C2C7D291FA6476330F905F740384D30A3BA8571D1693F44F88E1F1E16128CF87C530971F18E8526B7DE1C8680E9C53D3FB933D387762B2ABCFB55AC99B33CD7609F35D3E9026FA9D18D529944D66595945D5EABCFA2D01225A3A2C13276599BD54C27208AF9CE80845D55256354D46AB0C84ED29671286AA40CCA03B8F5F095C3D6AA5FC24B77D04EF1F704F12895C0ABAC9171C92A11D460505E412F6151D5499914D59A5CEAD7732B98359A2879D65A69B22E2EEB55B02DAB952CF316ABD9D56FAA14B9356A65CC6A0D3479E557022A7815B54A5E5983D5BC72EF5AE09297CBF0B3CB44F4909523D6A85572D11D31E9FD260AA64233F533365BAEEE467EF783C8B8A890B1CAEA5683AF7C3A9DE7327DA2F691C14BB8162D96B2CD1A69F0CDCF6295F02B6AA47CB24A0DFCFAD19912268D6A29A75A8BD5ECEA672F8ADC1AB53266B5067ABC946A57AF5471D255BAEABC1F399FBC4EC526ADD6E6529EA6A2E455B558C2B168B49A6FFDA00C9167A356C6AFD64097577EBC818A5951ADE696B5D065D7FA4E55C5B6DD4CCDBED952BB1BE53779CA1E542D96302F1A69F3ADBEA65132AE3559C2B96CA5CDBAF9CD83927DABD9922E345AEA77A399A7AEEE47ABDDB28E349A6AF7244D5556F2CF6A9770E50DB479B5D236955CDBED96F06F36D5EE49966BA6EC405EBD846FDA429B5D3D8F47C9B4D16809EBAA9DCE6A64691E83B22F8AE64B7A25A5D0EE9EB823ADEC9AA4E9926E09AD75BB946D32AA7A91D7AA19A70D445EB5408F2A7690C60A47B586D20082185154C414CBA7AB170AB12B752450425F54B5E38BCD8793844DCB4856597738CE86302F603F99316713F725F16140D3D2C3F14D82796836FB9525229710870C13676FB6022DDAF0556D11C46BF5A86822C4EE63C044171C45319AF2235C22C2E6539ACE805F4190F0C56B780FFD737C95C48B24668F0CC3FBE0A53E183C10B88CFFE158E8F3E155E6CDDA7804D64DC4A3D957F83841815FF6FB4C9276AF80E011C67C839BBFCB986F74CF5E4AA4CFE9E1AD3A40F9F09581D13B182E021EDEB8C2B7CC5C74E91BF3262FE00C782FACFC11A52B6515C8EA17D11CF6C31304985D0D698E51D1B39F4C86FDF0F9CFFF0FB68A52105C1F0200, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Enquiries] ON 

INSERT [dbo].[Enquiries] ([EnquiryId], [PersonName], [SenderEmailId], [SenderPhone], [EnquiryTitle], [EnquiryDetails], [EnquiryDate], [EnquiryStatus], [Country], [PostalCode], [CompanyName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, N'Sai KRishna', N'saikrishna@xsilica.com', N'7842211359', NULL, N'Regarding the issue in the page A', NULL, NULL, N'India', N'505469', N'xsilica solutions', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Enquiries] OFF
INSERT [dbo].[EventInformations] ([EventId], [OrderId], [EventName], [Address], [Location], [State], [City], [PostalCode], [Phone], [Email], [UpdatedBy], [UpdatedDate], [Status]) VALUES (N'23', 1, N'2', N'2', N'2', N'22', N'2', N'2', N'2', N'2', 2, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'w')
SET IDENTITY_INSERT [dbo].[IssueTickets] ON 

INSERT [dbo].[IssueTickets] ([TicketId], [UserLoginId], [OrderId], [IssueType], [Subject], [Severity], [Name], [Status], [ClosedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 1, N'1', N'Order', N'Low', N'Santosh', N'Active', CAST(N'2010-10-10 00:00:00.000' AS DateTime), 32, CAST(N'2010-10-10 00:00:00.000' AS DateTime))
INSERT [dbo].[IssueTickets] ([TicketId], [UserLoginId], [OrderId], [IssueType], [Subject], [Severity], [Name], [Status], [ClosedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 2, 2, N'General', N'SUbject_Test', N'High_test', N'Sai KRishna', N'Suspend', CAST(N'2010-10-10 00:00:00.000' AS DateTime), 32, CAST(N'2010-10-10 00:00:00.000' AS DateTime))
INSERT [dbo].[IssueTickets] ([TicketId], [UserLoginId], [OrderId], [IssueType], [Subject], [Severity], [Name], [Status], [ClosedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 0, 0, N'Information On Site', N'I want to know the security policy of the site', N'Medium', N'Omkar', NULL, NULL, 0, CAST(N'2010-10-10 00:00:00.000' AS DateTime))
INSERT [dbo].[IssueTickets] ([TicketId], [UserLoginId], [OrderId], [IssueType], [Subject], [Severity], [Name], [Status], [ClosedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 0, 0, N'Information On Site', N'Want to contact with the executive of maa-aahwanam', N'High', N'Pavan', NULL, NULL, 1, CAST(N'2016-06-27 13:01:51.347' AS DateTime))
INSERT [dbo].[IssueTickets] ([TicketId], [UserLoginId], [OrderId], [IssueType], [Subject], [Severity], [Name], [Status], [ClosedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 0, 0, N'Service Execution', N'Sub_test', N'Urgent', N'Ram', NULL, NULL, 1, CAST(N'2016-06-27 13:39:08.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[IssueTickets] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, N'saikrishna', N'sai@xsilica.com', NULL, 0, N'review1', 1, CAST(N'2016-07-14 13:22:07.570' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (2, N'sai2', N'sai2@xsilica.com', N'Venue', 2, N'review2', 1, CAST(N'2016-07-14 13:36:22.070' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (3, N'sai3', N'sai3@xsilica.com', N'Venue', 2, N'review3', 1, CAST(N'2016-07-14 13:50:15.353' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (4, N'SAI', N'SAI@GMAIL.COM', N'Other', 29, N'REVIEW FOR V29', 1, CAST(N'2016-07-14 15:43:29.217' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (5, N'A', N'DAS', N'Venue', 3, N'SAD', 1, CAST(N'2016-07-14 15:45:07.877' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (6, N'RET', N'RET', N'Venue', 3, N'RETR', 1, CAST(N'2016-07-14 15:45:23.987' AS DateTime), N'Active')
INSERT [dbo].[Reviews] ([ReviewId], [FirstName], [EmailId], [Service], [ServiceId], [Comments], [UpdatedBy], [UpdatedDate], [Status]) VALUES (7, N'TRTT', N'TTT', N'Venue', 28, N'TTT', 1, CAST(N'2016-07-14 15:45:57.073' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[ServiceRequests] ON 

INSERT [dbo].[ServiceRequests] ([RequestId], [Name], [EmailId], [Budget], [ServiceType], [Preferences], [EventName], [EventAddress], [EventLocation], [State], [City], [PostalCode], [PhoneNo], [EventStartDate], [EventStartTime], [EventEnddate], [EventEndtime], [VendorId], [UpdatedBy], [UpdatedTime], [Status], [Type]) VALUES (10017, N'SAI_Test Quotation', N'saikrishna@xsilica.com', CAST(10000.00 AS Decimal(18, 2)), N'Event organizers', N'need a,b,c', NULL, N'sr nagar', N'ameerpet', N'Telangana', N'hyderabad', N'500032', N'783748327487', CAST(N'2016-07-12 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:15:00.000' AS DateTime), CAST(N'2016-07-10 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:15:00.000' AS DateTime), 0, 0, NULL, NULL, N'Quoatation')
INSERT [dbo].[ServiceRequests] ([RequestId], [Name], [EmailId], [Budget], [ServiceType], [Preferences], [EventName], [EventAddress], [EventLocation], [State], [City], [PostalCode], [PhoneNo], [EventStartDate], [EventStartTime], [EventEnddate], [EventEndtime], [VendorId], [UpdatedBy], [UpdatedTime], [Status], [Type]) VALUES (10018, NULL, N'saikrishna2@xsilica.com', CAST(0.00 AS Decimal(18, 2)), N'Religious priest', N'need d,e,f', N'SAI_Test bidding', N'22B', N'ramnagar', N'Telangana', N'hyderabad', N'500023', N'73984732847', CAST(N'2016-07-08 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:20:00.000' AS DateTime), CAST(N'2016-06-27 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:15:00.000' AS DateTime), 0, 0, NULL, NULL, N'Bidding')
INSERT [dbo].[ServiceRequests] ([RequestId], [Name], [EmailId], [Budget], [ServiceType], [Preferences], [EventName], [EventAddress], [EventLocation], [State], [City], [PostalCode], [PhoneNo], [EventStartDate], [EventStartTime], [EventEnddate], [EventEndtime], [VendorId], [UpdatedBy], [UpdatedTime], [Status], [Type]) VALUES (10019, N'Sai_text Quotation', N'saikrishna3@gmail.com', CAST(2000.00 AS Decimal(18, 2)), N'Event organizers', N'need f,h,i', NULL, N'55b', N'ameerpet', N'Telangana', N'hyderabad', N'5839258', N'82734892374', CAST(N'2016-07-08 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:15:00.000' AS DateTime), CAST(N'2016-07-18 00:00:00.000' AS DateTime), CAST(N'2016-07-12 16:20:00.000' AS DateTime), 100, 0, NULL, NULL, N'ReverseBidding')
SET IDENTITY_INSERT [dbo].[ServiceRequests] OFF
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([SubscriptionId], [EmailId], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, N'saikrishan@xsilica.com', NULL, NULL, NULL)
INSERT [dbo].[Subscriptions] ([SubscriptionId], [EmailId], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, N'sai@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Subscriptions] ([SubscriptionId], [EmailId], [Status], [UpdatedBy], [UpdatedDate]) VALUES (3, N'sai@gmail.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
SET IDENTITY_INSERT [dbo].[UserAddBooks] ON 

INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, 1, N'Sai Krishna', N'srnagar', N'hyderabad', N'7842211359', N'7842211359', N'saikrishna@xsilica.com', 1, CAST(N'2016-06-28 12:18:31.290' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (2, 1, N'santosh', N'panjagutta', N'pune', N'Ameerpet', N'98939473988', N'santosh@xilica.com', 1, CAST(N'2016-06-28 12:22:48.003' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (3, 1, N'venu', N'mg road', N'central ', N'chennai', N'827183127873', N'venu@xsilica.com', 1, CAST(N'2016-06-28 12:25:07.340' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (4, 1, N'pavan', N'JBS', N'secundrabad', N'hyderabad', N'22259289', N'pavan@xsilica.com', 1, CAST(N'2016-06-28 12:32:06.687' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (5, 1, N'anandh', N'51b', N'ameerpet', N'hyderabad', N'89738478327', N'anadh@xsilica.com', 1, CAST(N'2016-06-28 12:33:51.603' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (6, 1, N'Naresh', N'autonagar', N'old city', N'karimnagar', N'9872873182', N'naresh@xsilica.com', 1, CAST(N'2016-06-28 12:41:17.567' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (7, 1, N'ramesh', N'72B', N'Tarnaka', N'87328473248', N'8772837821', N'ramesh@xsilica.com', 1, CAST(N'2016-06-28 12:42:24.107' AS DateTime), NULL)
INSERT [dbo].[UserAddBooks] ([AddBookId], [UserLoginId], [PersonName], [PersonAddress], [PersonLocation], [PersonCity], [PersonPhone], [PersonEmail], [UpdatedBy], [UpdatedDate], [Status]) VALUES (8, 1, N'sad', N'sad', N'sad', N'sad', N'sad', N'sad', 1, CAST(N'2016-06-28 13:58:22.270' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserAddBooks] OFF
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([UserDetailId], [UserLoginId], [FirstName], [LastName], [UserPhone], [Url], [Address], [City], [State], [ZipCode], [UserImgId], [UserImgName], [Status], [UpdatedBy], [UpdatedDate], [AlternativeEmailID], [Country], [Gender], [Landmark]) VALUES (1, 1, N'sai ', N'krishna', N'78427837482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([UserDetailId], [UserLoginId], [FirstName], [LastName], [UserPhone], [Url], [Address], [City], [State], [ZipCode], [UserImgId], [UserImgName], [Status], [UpdatedBy], [UpdatedDate], [AlternativeEmailID], [Country], [Gender], [Landmark]) VALUES (2, 2, N'santosh Vempati', N'reddy', N'7842211359', N'www.abcsite.com', N'51B,Ameerpet', N'Hyderabad2', N'Telangana', N'50000322', NULL, NULL, NULL, 0, NULL, N'santosh@xsilica.com', N'USA', N'Male', N'Opp to SBI Bank')
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
SET IDENTITY_INSERT [dbo].[UserLogins] ON 

INSERT [dbo].[UserLogins] ([UserLoginId], [UserName], [Password], [UserType], [RegDate], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, N'saikrishna@xsilica.com', N'sa@12345', N'User', CAST(N'2016-06-20 11:18:09.613' AS DateTime), N'Active', 0, CAST(N'2016-06-20 11:18:09.613' AS DateTime))
INSERT [dbo].[UserLogins] ([UserLoginId], [UserName], [Password], [UserType], [RegDate], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, N'santhosh@gmail.com', N'sa@12345', N'User', CAST(N'2016-06-24 12:13:23.013' AS DateTime), N'Active', 0, CAST(N'2016-06-24 12:13:23.013' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserLogins] OFF
SET IDENTITY_INSERT [dbo].[VendorImages] ON 

INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, 1, 1, N'Others_1_1.jpg', 2, CAST(N'2016-07-08 16:08:14.253' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (2, 1, 1, N'Others_1_2.jpg', 2, CAST(N'2016-07-08 16:08:14.297' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (3, 1, 1, N'Others_1_3.jpg', 2, CAST(N'2016-07-08 16:08:14.313' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (4, 1, 1, N'Others_1_4.jpg', 2, CAST(N'2016-07-08 16:08:14.330' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (5, 2, 3, N'Venue_3_1.jpg', 2, CAST(N'2016-07-08 16:15:06.773' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (6, 2, 3, N'Venue_3_2.jpg', 2, CAST(N'2016-07-08 16:15:06.797' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (7, 2, 3, N'Venue_3_3.jpg', 2, CAST(N'2016-07-08 16:15:06.817' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (8, 2, 4, N'Others_4_1.jpg', 2, CAST(N'2016-07-08 16:19:03.610' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (9, 2, 4, N'Others_4_2.jpg', 2, CAST(N'2016-07-08 16:19:03.640' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (10, 2, 4, N'Others_4_3.jpg', 2, CAST(N'2016-07-08 16:19:03.663' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (11, 2, 4, N'Others_4_4.jpg', 2, CAST(N'2016-07-08 16:19:03.683' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (12, 1, 5, N'/vendorimages/WeddingCollection_5_1.jpg', 2, CAST(N'2016-07-08 18:24:17.077' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (13, 1, 6, N'/vendorimages/TravelandAccomodation6_1.jpg', 2, CAST(N'2016-07-08 18:25:27.957' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (14, 1, 7, N'/vendorimages/Photography7_0.jpg', 2, CAST(N'2016-07-08 18:29:34.613' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (15, 1, 7, N'/vendorimages/Photography7_1.jpg', 2, CAST(N'2016-07-08 18:29:34.637' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (16, 1, 7, N'/vendorimages/Photography7_2.jpg', 2, CAST(N'2016-07-08 18:29:34.670' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (17, 1, 8, N'/vendorimages/InvitationCard8_1.jpg', 2, CAST(N'2016-07-08 18:33:37.020' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (18, 1, 8, N'/vendorimages/InvitationCard8_2.jpg', 2, CAST(N'2016-07-08 18:33:37.043' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (19, 1, 9, N'/vendorimages/Gift_9_1.jpg', 2, CAST(N'2016-07-11 11:43:40.420' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (20, 1, 9, N'/vendorimages/Gift_9_2.jpg', 2, CAST(N'2016-07-11 11:43:40.460' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (21, 1, 9, N'/vendorimages/Gift_9_3.jpg', 2, CAST(N'2016-07-11 11:43:40.480' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (22, 1, 9, N'/vendorimages/Gift_9_4.jpg', 2, CAST(N'2016-07-11 11:43:40.523' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (23, 1, 10, N'/vendorimages/EventOrganisers_10_1.jpg', 2, CAST(N'2016-07-11 11:45:42.430' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (24, 1, 10, N'/vendorimages/EventOrganisers_10_2.jpg', 2, CAST(N'2016-07-11 11:45:42.477' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (25, 1, 10, N'/vendorimages/EventOrganisers_10_3.jpg', 2, CAST(N'2016-07-11 11:45:42.497' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (26, 1, 10, N'/vendorimages/EventOrganisers_10_4.jpg', 2, CAST(N'2016-07-11 11:45:42.517' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (27, 1, 10, N'/vendorimages/EventOrganisers_10_5.jpg', 2, CAST(N'2016-07-11 11:45:42.537' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (28, 1, 10, N'/vendorimages/EventOrganisers_10_6.jpg', 2, CAST(N'2016-07-11 11:45:42.557' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (29, 1, 11, N'/vendorimages/Entertainment_11_1.jpg', 2, CAST(N'2016-07-11 11:47:19.663' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (30, 1, 11, N'/vendorimages/Entertainment_11_2.jpg', 2, CAST(N'2016-07-11 11:47:19.683' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (31, 1, 11, N'/vendorimages/Entertainment_11_3.jpg', 2, CAST(N'2016-07-11 11:47:19.703' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (32, 1, 11, N'/vendorimages/Entertainment_11_4.jpg', 2, CAST(N'2016-07-11 11:47:19.747' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (33, 1, 12, N'/vendorimages/Decorator_12_1.jpg', 2, CAST(N'2016-07-11 11:48:51.827' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (34, 1, 12, N'/vendorimages/Decorator_12_2.jpg', 2, CAST(N'2016-07-11 11:48:51.847' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (35, 1, 12, N'/vendorimages/Decorator_12_3.jpg', 2, CAST(N'2016-07-11 11:48:51.867' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (36, 1, 12, N'/vendorimages/Decorator_12_4.jpg', 2, CAST(N'2016-07-11 11:48:51.907' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (37, 1, 12, N'/vendorimages/Decorator_12_5.jpg', 2, CAST(N'2016-07-11 11:48:51.927' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (38, 1, 13, N'/vendorimages/Catering_13_1.jpg', 2, CAST(N'2016-07-11 11:50:42.140' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (39, 1, 13, N'/vendorimages/Catering_13_2.jpg', 2, CAST(N'2016-07-11 11:50:42.160' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (40, 1, 13, N'/vendorimages/Catering_13_3.jpg', 2, CAST(N'2016-07-11 11:50:42.200' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (41, 1, 13, N'/vendorimages/Catering_13_4.jpg', 2, CAST(N'2016-07-11 11:50:42.217' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (42, 1, 13, N'/vendorimages/Catering_13_5.jpg', 2, CAST(N'2016-07-11 11:50:42.237' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (43, 1, 13, N'/vendorimages/Catering_13_6.jpg', 2, CAST(N'2016-07-11 11:50:42.257' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (44, 1, 13, N'/vendorimages/Catering_13_7.jpg', 2, CAST(N'2016-07-11 11:50:42.277' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (45, 1, 13, N'/vendorimages/Catering_13_8.jpg', 2, CAST(N'2016-07-11 11:50:42.290' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (46, 4, 17, N'/BeautyService_17_1.jpg', 2, CAST(N'2016-07-11 12:09:18.967' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (47, 4, 17, N'/BeautyService_17_2.jpg', 2, CAST(N'2016-07-11 12:09:29.113' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (48, 4, 17, N'/BeautyService_17_3.jpg', 2, CAST(N'2016-07-11 12:09:34.563' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (49, 4, 17, N'/BeautyService_17_4.jpg', 2, CAST(N'2016-07-11 12:09:35.390' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (50, 5, 18, N'/BeautyService_18_1.jpg', 2, CAST(N'2016-07-11 13:22:00.427' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (51, 5, 18, N'/BeautyService_18_2.jpg', 2, CAST(N'2016-07-11 13:22:29.870' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (52, 5, 18, N'/BeautyService_18_3.jpg', 2, CAST(N'2016-07-11 13:22:32.663' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (53, 5, 18, N'/BeautyService_18_4.jpg', 2, CAST(N'2016-07-11 13:25:35.717' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (54, 2, 19, N'/Catering_19_1.jpg', 2, CAST(N'2016-07-11 13:35:15.133' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (55, 2, 19, N'/Catering_19_2.jpg', 2, CAST(N'2016-07-11 13:35:33.373' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (56, 2, 19, N'/Catering_19_3.jpg', 2, CAST(N'2016-07-11 13:36:01.413' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (57, 2, 20, N'/Decorator_20_1.jpg', 2, CAST(N'2016-07-11 13:45:59.550' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (58, 2, 20, N'/Decorator_20_2.jpg', 2, CAST(N'2016-07-11 13:50:16.363' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (59, 2, 20, N'/Decorator_20_3.jpg', 2, CAST(N'2016-07-11 13:50:28.827' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (60, 2, 20, N'/Decorator_20_4.jpg', 2, CAST(N'2016-07-11 13:50:44.917' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (61, 2, 21, N'/Entertainment_21_1.jpg', 2, CAST(N'2016-07-11 13:54:27.787' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (62, 2, 21, N'/Entertainment_21_2.jpg', 2, CAST(N'2016-07-11 13:54:34.857' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (63, 2, 21, N'/Entertainment_21_3.jpg', 2, CAST(N'2016-07-11 13:54:43.157' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (64, 2, 22, N'/EventOrganisers_22_1.jpg', 2, CAST(N'2016-07-11 14:01:18.060' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (65, 2, 22, N'/EventOrganisers_22_2.jpg', 2, CAST(N'2016-07-11 14:01:20.943' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (66, 2, 22, N'/EventOrganisers_22_3.jpg', 2, CAST(N'2016-07-11 14:01:28.187' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (67, 2, 22, N'/EventOrganisers_22_4.jpg', 2, CAST(N'2016-07-11 14:01:32.210' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (68, 2, 23, N'/Gift_23_1.jpg', 2, CAST(N'2016-07-11 14:11:52.193' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (69, 2, 23, N'/Gift_23_2.jpg', 2, CAST(N'2016-07-11 14:11:53.323' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (70, 2, 23, N'/Gift_23_3.jpg', 2, CAST(N'2016-07-11 14:11:53.980' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (71, 2, 23, N'/Gift_23_4.jpg', 2, CAST(N'2016-07-11 14:11:54.640' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (72, 2, 23, N'/Gift_23_5.jpg', 2, CAST(N'2016-07-11 14:11:55.300' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (73, 2, 23, N'/Gift_23_6.jpg', 2, CAST(N'2016-07-11 14:11:55.933' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (74, 2, 23, N'/Gift_23_7.jpg', 2, CAST(N'2016-07-11 14:11:56.587' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (75, 2, 23, N'/Gift_23_8.jpg', 2, CAST(N'2016-07-11 14:11:59.957' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (76, 2, 24, N'/InvitationCard_24_1.jpg', 2, CAST(N'2016-07-11 14:20:56.457' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (77, 2, 24, N'/InvitationCard_24_2.jpg', 2, CAST(N'2016-07-11 14:20:59.330' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (78, 2, 24, N'/InvitationCard_24_3.jpg', 2, CAST(N'2016-07-11 14:21:02.137' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (79, 2, 24, N'/InvitationCard_24_4.jpg', 2, CAST(N'2016-07-11 14:21:13.410' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (80, 2, 25, N'/Photography_25_1.jpg', 2, CAST(N'2016-07-11 14:36:23.733' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (81, 2, 25, N'/Photography_25_2.jpg', 2, CAST(N'2016-07-11 14:36:24.850' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (82, 2, 25, N'/Photography_25_3.jpg', 2, CAST(N'2016-07-11 14:36:25.480' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (83, 2, 25, N'/Photography_25_4.jpg', 2, CAST(N'2016-07-11 14:36:26.107' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (84, 2, 25, N'/Photography_25_5.jpg', 2, CAST(N'2016-07-11 14:36:26.733' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (85, 2, 25, N'/Photography_25_6.jpg', 2, CAST(N'2016-07-11 14:36:29.363' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (86, 2, 26, N'/TravelandAccomodation_26_1.jpg', 2, CAST(N'2016-07-11 14:38:37.803' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (87, 2, 26, N'/TravelandAccomodation_26_2.jpg', 2, CAST(N'2016-07-11 14:38:38.427' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (88, 2, 26, N'/TravelandAccomodation_26_3.jpg', 2, CAST(N'2016-07-11 14:38:39.123' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (89, 2, 26, N'/TravelandAccomodation_26_4.jpg', 2, CAST(N'2016-07-11 14:38:40.097' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (90, 2, 26, N'/TravelandAccomodation_26_5.jpg', 2, CAST(N'2016-07-11 14:38:40.117' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (91, 2, 26, N'/TravelandAccomodation_26_6.jpg', 2, CAST(N'2016-07-11 14:38:40.137' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (92, 2, 26, N'/TravelandAccomodation_26_7.jpg', 2, CAST(N'2016-07-11 14:38:40.157' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (93, 2, 26, N'/TravelandAccomodation_26_8.jpg', 2, CAST(N'2016-07-11 14:38:40.177' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (94, 2, 26, N'/TravelandAccomodation_26_9.jpg', 2, CAST(N'2016-07-11 14:38:40.197' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (95, 2, 26, N'/TravelandAccomodation_26_10.jpg', 2, CAST(N'2016-07-11 14:38:40.213' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (96, 2, 27, N'/WeddingCollection_27_1.jpg', 2, CAST(N'2016-07-11 15:23:09.307' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (97, 2, 27, N'/WeddingCollection_27_2.jpg', 2, CAST(N'2016-07-11 15:23:09.333' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (98, 2, 27, N'/WeddingCollection_27_3.jpg', 2, CAST(N'2016-07-11 15:23:09.397' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (99, 2, 27, N'/WeddingCollection_27_4.jpg', 2, CAST(N'2016-07-11 15:23:09.427' AS DateTime), N'Active')
GO
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (100, 2, 27, N'/WeddingCollection_27_5.jpg', 2, CAST(N'2016-07-11 15:23:09.450' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (101, 2, 27, N'/WeddingCollection_27_6.jpg', 2, CAST(N'2016-07-11 15:23:09.473' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (102, 2, 27, N'/WeddingCollection_27_7.jpg', 2, CAST(N'2016-07-11 15:23:09.497' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (103, 2, 27, N'/WeddingCollection_27_8.jpg', 2, CAST(N'2016-07-11 15:23:09.517' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (104, 3, 28, N'/Venue_28_1.jpg', 2, CAST(N'2016-07-11 15:26:10.073' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (105, 3, 28, N'/Venue_28_2.jpg', 2, CAST(N'2016-07-11 15:26:10.103' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (106, 3, 28, N'/Venue_28_3.jpg', 2, CAST(N'2016-07-11 15:26:10.147' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (107, 3, 28, N'/Venue_28_4.jpg', 2, CAST(N'2016-07-11 15:26:10.167' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (108, 3, 29, N'/Others_29_1.jpg', 2, CAST(N'2016-07-11 15:27:33.057' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (109, 4, 30, N'/Others_30_1.jpg', 2, CAST(N'2016-07-11 15:27:33.057' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (110, 4, 30, N'/Others_30_2.jpg', 2, CAST(N'2016-07-11 15:27:33.110' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (111, 3, 29, N'/Others_29_2.jpg', 2, CAST(N'2016-07-11 15:27:33.110' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (112, 4, 30, N'/Others_30_3.jpg', 2, CAST(N'2016-07-11 15:27:33.147' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (113, 3, 29, N'/Others_29_3.jpg', 2, CAST(N'2016-07-11 15:27:33.147' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (114, 4, 30, N'/Others_30_4.jpg', 2, CAST(N'2016-07-11 15:27:33.180' AS DateTime), N'Active')
INSERT [dbo].[VendorImages] ([ImageId], [VendorId], [VendorMasterId], [ImageName], [UpdatedBy], [UpdatedDate], [Status]) VALUES (115, 3, 29, N'/Others_29_4.jpg', 2, CAST(N'2016-07-11 15:27:33.180' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[VendorImages] OFF
SET IDENTITY_INSERT [dbo].[Vendormasters] ON 

INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 0, N'Srinivas', N'Alwal', N'scb', N'Hyd', N'Telangana', N'50000', N'Books Merchant', N'srinivas', N'9876543210', N'04011001100', N'srinivas@gmail.com', N'www.srinivas.com', N'6', N'2010', N'Other', N'Active', 2, CAST(N'2016-07-08 16:08:12.410' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 0, N'Suresh', N'Masab tank', N'MLA colony', N'Hyd', N'Telangana', N'50001', N'Broker', N'Suresh', N'9632587410', N'04055005500', N'suresh@gmail.com', N'www.suresh.com', N'16', N'2000', N'Venue', N'Active', 2, CAST(N'2016-07-08 16:10:20.860' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (3, 0, N'Satya', N'Banjara hills', N'MLA colony', N'Hyd', N'Telangana', N'50010', N'Venue Broker', N'Satyam Shiva', N'7894561230', N'04044004400', N'satya@gmail.com', N'www.satya.com', N'11', N'2005', N'Venue', N'Active', 2, CAST(N'2016-07-08 16:15:06.607' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (4, 0, N'Kapil', N'Tarnaka', N'scb', N'Hyd', N'Telangana', N'54123', N'Others', N'kapil sharma', N'951234678', N'04099009900', N'kapil@gmail.com', N'www.kapil.com', N'12', N'2004', N'Other', N'Active', 2, CAST(N'2016-07-08 16:19:03.530' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (5, 0, N'satyam', N'MLA COlony', N'MLA colony', N'Hyd', N'Telangana', N'50000', N'Wedding Collection', N'satyam', N'7894561230', N'04055005500', N'satyam@gmail.com', N'www.satyam.com', N'6', N'2010', N'WeddingCollection', N'Active', 2, CAST(N'2016-07-08 18:24:16.843' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (6, 0, N'Lenovo', N'hyd', N'scb', N'Hyd', N'Telangana', N'50000', N'Travel', N'lenovo', N'9999999999', N'04066660000', N'lenovo@gmail.com', N'www.lenovo.com', N'26', N'1990', N'Travel&Accomadation', N'Active', 2, CAST(N'2016-07-08 18:25:27.860' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (7, 0, N'Balaji', N'Ameerpet', N'maithrivanam', N'Hyd', N'Telangana', N'50001', N'Photo Studio', N'Satyam Shiva', N'912345678', N'04066660000', N'satyam@gmail.com', N'www.satyam.com', N'11', N'2005', N'Photography', N'Active', 2, CAST(N'2016-07-08 18:29:32.787' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (8, 0, N'Swathi', N'hyd', N'scb', N'Hyd', N'Telangana', N'54123', N'Invitation Cards Vendor', N'satya', N'9999999999', N'04099009900', N'satyam@gmail.com', N'www.satyam.com', N'6', N'2010', N'InvitationCard', N'Active', 2, CAST(N'2016-07-08 18:33:35.140' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (9, 0, N'Venu', N'Hyd', N'scb', N'Hyd', N'Telangana', N'563210', N'Gifts Merchant', N'Venu', N'9999999999', N'04044004400', N'venu@gmail.com', N'www.venu.com', N'6', N'2010', N'Gifts', N'Active', 2, CAST(N'2016-07-11 11:43:40.067' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (10, 0, N'Srinu', N'hyd', N'MLA colony', N'Hyd', N'Telangana', N'54123', N'Event Organiser', N'Srinu', N'9632587410', N'04055005500', N'srinu@gmail.com', N'www.srinu.com', N'11', N'2005', N'EventOrganiser', N'Active', 2, CAST(N'2016-07-11 11:45:42.353' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (11, 0, N'Shivaram', N'hyd', N'maithrivanam', N'Hyd', N'Telangana', N'50001', N'Entertainment', N'shivaram', N'7894561230', N'04055005500', N'shivaram@gmail.com', N'www.shivaram.com', N'16', N'2000', N'Entertainment', N'Active', 2, CAST(N'2016-07-11 11:47:19.600' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (12, 0, N'Srivas', N'hyd', N'MLA colony', N'Hyd', N'Telangana', N'54123', N'Decorator', N'Srivas', N'9632587410', N'04044004400', N'srivas@gmail.com', N'www.srivas.com', N'0', N'2016', N'Decorators', N'Active', 2, CAST(N'2016-07-11 11:48:51.757' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (13, 0, N'Ranjith', N'hyd', N'Tank bund', N'Hyd', N'Telangana', N'41000', N'Catering', N'Ranjith Kumar', N'912345678', N'04055005500', N'ranjith@gmail.com', N'www.ranjith.com', N'12', N'2004', N'Catering', N'Active', 2, CAST(N'2016-07-11 11:50:42.003' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (14, 0, N'Seshu', N'hyd', N'scb', N'Hyd', N'Telangana', N'41000', N'Beauty Services', N'Seshu', N'7894561230', N'04055005500', N'seshu@gmail.com', N'www.seshu.com', N'11', N'2005', N'BeautyServices', N'Active', 2, CAST(N'2016-07-11 11:55:34.447' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (15, 0, N'Srinivas', N'hyd', N'scb', N'Hyd', N'Andhra Pradesh', N'50001', N'Beauty Services', N'Suresh', N'9876543210', N'04055005500', N'suresh@gmail.com', N'www.suresh.com', N'6', N'2010', N'BeautyServices', N'Active', 2, CAST(N'2016-07-11 12:07:31.203' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (16, 0, N'Srinivas', N'hyd', N'scb', N'Hyd', N'Andhra Pradesh', N'50001', N'Beauty Services', N'Suresh', N'9876543210', N'04055005500', N'suresh@gmail.com', N'www.suresh.com', N'6', N'2010', N'BeautyServices', N'Active', 2, CAST(N'2016-07-11 12:08:26.143' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (17, 0, N'Srinivas', N'hyd', N'scb', N'Hyd', N'Andhra Pradesh', N'50001', N'Beauty Services', N'Suresh', N'9876543210', N'04055005500', N'suresh@gmail.com', N'www.suresh.com', N'6', N'2010', N'BeautyServices', N'Active', 2, CAST(N'2016-07-11 12:09:03.937' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (18, 0, N'sai', N'hyd', N'MLA colony', N'Hyd', N'Andhra Pradesh', N'50001', N'Beauty Services', N'sai', N'9876543210', N'04055005500', N'sai@gmail.com', N'www.sai.com', N'6', N'2010', N'BeautyServices', N'Active', 2, CAST(N'2016-07-11 13:07:17.120' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (19, 0, N'Sri', N'hyd', N'MLA colony', N'Hyd', N'Telangana', N'41000', N'Catering', N'sri', N'7894561230', N'04055005500', N'sri@gmail.com', N'www.sri.com', N'6', N'2010', N'Catering', N'Active', 2, CAST(N'2016-07-11 13:31:44.040' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (20, 0, N'Madan', N'hyd', N'scb', N'Hyd', N'Telangana', N'54123', N'Decorator', N'madan', N'7894561230', N'04055005500', N'madan@gmail.com', N'www.madan.com', N'6', N'2010', N'Decorators', N'Active', 2, CAST(N'2016-07-11 13:45:36.853' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (21, 0, N'madhu', N'hyd', N'medak', N'Hyd', N'Telangana', N'563210', N'Entertainment', N'madhu', N'9876543210', N'04011001100', N'madhu@gmail.com', N'www.madhu.com', N'6', N'2010', N'Entertainment', N'Active', 2, CAST(N'2016-07-11 13:54:04.317' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (22, 0, N'medha', N'hyd', N'Alwal', N'Hyd', N'Telangana', N'50000', N'Event Organisers', N'medha', N'9876543210', N'04055005500', N'medha@gmail.com', N'www.medha.com', N'11', N'2005', N'EventOrganiser', N'Active', 2, CAST(N'2016-07-11 14:01:07.537' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (23, 0, N'mahesh', N'hyd', N'Tank bund', N'Hyd', N'Andhra Pradesh', N'50001', N'gifts', N'mahesh', N'9632587410', N'04044004400', N'mahesh@gmail.com', N'www.mahesh.com', N'16', N'2000', N'Gifts', N'Active', 2, CAST(N'2016-07-11 14:11:42.833' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (24, 0, N'Sridhar', N'hyd', N'scb', N'Hyd', N'Andhra Pradesh', N'563210', N'Invitation Cards', N'Sridhar', N'912345678', N'04044004400', N'sridhar@gmail.com', N'www.sridhar.com', N'11', N'2005', N'InvitationCard', N'Active', 2, CAST(N'2016-07-11 14:20:41.067' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (25, 0, N'babu', N'hyd', N'MLA colony', N'Hyd', N'Andhra Pradesh', N'563210', N'Photography', N'babu', N'7894561230', N'04055005500', N'babu@gmail.com', N'www.babu.com', N'6', N'2010', N'Photography', N'Active', 2, CAST(N'2016-07-11 14:36:11.793' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (26, 0, N'Anil', N'hyd', N'scb', N'Hyd', N'Andhra Pradesh', N'50010', N'Travells', N'Anil', N'7894561230', N'04099009900', N'anil@gmail.com', N'www.anil.com', N'16', N'2000', N'Travel&Accomadation', N'Active', 2, CAST(N'2016-07-11 14:38:35.020' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (27, 0, N'srinath', N'hyd', N'MLA colony', N'Hyd', N'Telangana', N'50000', N'Wedding Collection', N'srinath', N'9876543210', N'04055005500', N'srinath@gmail.com', N'www.srinath.com', N'6', N'2010', N'WeddingCollection', N'Active', 2, CAST(N'2016-07-11 15:23:06.200' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (28, 0, N'sampath', N'hyd', N'MLA colony', N'Hyd', N'Telangana', N'50000', N'Venue', N'sampath', N'951234678', N'04066660000', N'sampath@gmail.com', N'www.sampath.com', N'6', N'2010', N'Venue', N'Active', 2, CAST(N'2016-07-11 15:26:09.900' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (29, 0, N'dinesh', N'hyd', N'scb', N'Hyd', N'Telangana', N'50001', N'others', N'dinesh', N'951234678', N'04066660000', N'dinesh@gmail.com', N'www.dinesh.com', N'6', N'2010', N'Other', N'Active', 2, CAST(N'2016-07-11 15:27:31.687' AS DateTime))
INSERT [dbo].[Vendormasters] ([Id], [UserId], [BusinessName], [Address], [Landmark], [City], [State], [ZipCode], [Description], [ContactPerson], [ContactNumber], [LandlineNumber], [EmailId], [Url], [Experience], [EstablishedYear], [ServicType], [Status], [UpdatedBy], [UpdatedDate]) VALUES (30, 0, N'dinesh', N'hyd', N'scb', N'Hyd', N'Telangana', N'50001', N'others', N'dinesh', N'951234678', N'04066660000', N'dinesh@gmail.com', N'www.dinesh.com', N'6', N'2010', N'Other', N'Active', 2, CAST(N'2016-07-11 15:27:32.973' AS DateTime))
SET IDENTITY_INSERT [dbo].[Vendormasters] OFF
SET IDENTITY_INSERT [dbo].[VendorsBeautyServices] ON 

INSERT [dbo].[VendorsBeautyServices] ([Id], [VendorMasterId], [Category], [BridalMakeupStartsFrom], [PartyMakeupStartsFrom], [HomeServices], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 14, N'Spa', CAST(5000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), N'Yes', N'Active', 2, CAST(N'2016-07-11 11:55:34.447' AS DateTime))
INSERT [dbo].[VendorsBeautyServices] ([Id], [VendorMasterId], [Category], [BridalMakeupStartsFrom], [PartyMakeupStartsFrom], [HomeServices], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 15, N'Spa', CAST(5000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), N'Yes', N'Active', 2, CAST(N'2016-07-11 12:07:31.203' AS DateTime))
INSERT [dbo].[VendorsBeautyServices] ([Id], [VendorMasterId], [Category], [BridalMakeupStartsFrom], [PartyMakeupStartsFrom], [HomeServices], [Status], [UpdatedBy], [UpdatedDate]) VALUES (3, 16, N'Spa', CAST(5000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), N'Yes', N'Active', 2, CAST(N'2016-07-11 12:08:26.143' AS DateTime))
INSERT [dbo].[VendorsBeautyServices] ([Id], [VendorMasterId], [Category], [BridalMakeupStartsFrom], [PartyMakeupStartsFrom], [HomeServices], [Status], [UpdatedBy], [UpdatedDate]) VALUES (4, 17, N'Spa', CAST(5000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), N'Yes', N'Active', 2, CAST(N'2016-07-11 12:09:03.937' AS DateTime))
INSERT [dbo].[VendorsBeautyServices] ([Id], [VendorMasterId], [Category], [BridalMakeupStartsFrom], [PartyMakeupStartsFrom], [HomeServices], [Status], [UpdatedBy], [UpdatedDate]) VALUES (5, 18, N'Saloon', CAST(5000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), N'Yes', N'Active', 2, CAST(N'2016-07-11 13:07:17.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsBeautyServices] OFF
SET IDENTITY_INSERT [dbo].[VendorsCaterings] ON 

INSERT [dbo].[VendorsCaterings] ([Id], [VendorMasterId], [CuisineType], [Veg], [NonVeg], [MinOrder], [MaxOrder], [MineralWaterIncluded], [Menuitems], [LiveCookingStation], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 13, N'All Varieties', CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), N'10000', N'1000000', N'Yes', N'Veg,Non-veg', N'Yes', N'Active', 2, CAST(N'2016-07-11 11:50:42.003' AS DateTime))
INSERT [dbo].[VendorsCaterings] ([Id], [VendorMasterId], [CuisineType], [Veg], [NonVeg], [MinOrder], [MaxOrder], [MineralWaterIncluded], [Menuitems], [LiveCookingStation], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 19, N'Indian', CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), N'10000', N'1000000', N'Yes', N'Veg', N'Yes', N'Active', 2, CAST(N'2016-07-11 13:31:44.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsCaterings] OFF
SET IDENTITY_INSERT [dbo].[VendorsDecorators] ON 

INSERT [dbo].[VendorsDecorators] ([Id], [VendorMasterId], [DecorationType], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 12, N'Florists', CAST(7000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 11:48:51.757' AS DateTime))
INSERT [dbo].[VendorsDecorators] ([Id], [VendorMasterId], [DecorationType], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 20, N'Decorator', CAST(5000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 13:45:36.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsDecorators] OFF
SET IDENTITY_INSERT [dbo].[VendorsEntertainments] ON 

INSERT [dbo].[VendorsEntertainments] ([Id], [VendorMasterId], [Category], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 11, N'Sangeeth', CAST(7000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 11:47:19.600' AS DateTime))
INSERT [dbo].[VendorsEntertainments] ([Id], [VendorMasterId], [Category], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 21, N'Wester Dancer', CAST(5000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 13:54:04.317' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsEntertainments] OFF
SET IDENTITY_INSERT [dbo].[VendorsEventOrganisers] ON 

INSERT [dbo].[VendorsEventOrganisers] ([Id], [VendorMasterId], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 10, CAST(7000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 11:45:42.353' AS DateTime))
INSERT [dbo].[VendorsEventOrganisers] ([Id], [VendorMasterId], [StartingPrice], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 22, CAST(1000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 14:01:07.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsEventOrganisers] OFF
SET IDENTITY_INSERT [dbo].[VendorsGifts] ON 

INSERT [dbo].[VendorsGifts] ([Id], [VendorMasterId], [GiftType], [MinOrder], [MaxOrder], [GiftCost], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 9, N'Birthday Gifts', N'500', N'1000000', CAST(110.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 11:43:40.067' AS DateTime))
INSERT [dbo].[VendorsGifts] ([Id], [VendorMasterId], [GiftType], [MinOrder], [MaxOrder], [GiftCost], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 23, N'Wedding Favours', N'500', N'50000', CAST(250.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 14:11:42.833' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsGifts] OFF
SET IDENTITY_INSERT [dbo].[VendorsInvitationCards] ON 

INSERT [dbo].[VendorsInvitationCards] ([Id], [VendorMasterId], [CardType], [DesignName], [CardCost], [CardCostWithPrint], [MinOrder], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 8, N'Marriage', N'marriage', CAST(500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), N'10000', N'Active', 2, CAST(N'2016-07-08 18:33:35.140' AS DateTime))
INSERT [dbo].[VendorsInvitationCards] ([Id], [VendorMasterId], [CardType], [DesignName], [CardCost], [CardCostWithPrint], [MinOrder], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 24, N'Marriage', N'marriage', CAST(600.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), N'10000', N'Active', 2, CAST(N'2016-07-11 14:20:41.067' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsInvitationCards] OFF
SET IDENTITY_INSERT [dbo].[VendorsOthers] ON 

INSERT [dbo].[VendorsOthers] ([Id], [VendorMasterId], [ItemCost], [Status], [UpdatedBy], [UpdatedDate], [MinOrder], [MaxOrder]) VALUES (1, 1, CAST(100.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-08 16:08:12.410' AS DateTime), N'500', N'50000')
INSERT [dbo].[VendorsOthers] ([Id], [VendorMasterId], [ItemCost], [Status], [UpdatedBy], [UpdatedDate], [MinOrder], [MaxOrder]) VALUES (2, 4, CAST(150.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-08 16:19:03.530' AS DateTime), N'1500', N'10000')
INSERT [dbo].[VendorsOthers] ([Id], [VendorMasterId], [ItemCost], [Status], [UpdatedBy], [UpdatedDate], [MinOrder], [MaxOrder]) VALUES (3, 29, CAST(150.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 15:27:31.687' AS DateTime), N'10000', N'1000000')
INSERT [dbo].[VendorsOthers] ([Id], [VendorMasterId], [ItemCost], [Status], [UpdatedBy], [UpdatedDate], [MinOrder], [MaxOrder]) VALUES (4, 30, CAST(150.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 15:27:32.973' AS DateTime), N'10000', N'1000000')
SET IDENTITY_INSERT [dbo].[VendorsOthers] OFF
SET IDENTITY_INSERT [dbo].[VendorsPhotographies] ON 

INSERT [dbo].[VendorsPhotographies] ([Id], [VendorMasterId], [PhotographyType], [PreWeddingShoot], [StartingPrice], [PriorBookingsDays], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 7, N'Wedding', N'Yes', CAST(1000.00 AS Decimal(18, 2)), N'10', N'Active', 2, CAST(N'2016-07-08 18:29:32.783' AS DateTime))
INSERT [dbo].[VendorsPhotographies] ([Id], [VendorMasterId], [PhotographyType], [PreWeddingShoot], [StartingPrice], [PriorBookingsDays], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 25, N'Wedding', N'Yes', CAST(5000.00 AS Decimal(18, 2)), N'10', N'Active', 2, CAST(N'2016-07-11 14:36:11.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsPhotographies] OFF
SET IDENTITY_INSERT [dbo].[VendorsTravelandAccomodations] ON 

INSERT [dbo].[VendorsTravelandAccomodations] ([Id], [VendorMasterId], [Category], [Startsfrom], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 6, N'Tours & Travels', CAST(5000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-08 18:25:27.860' AS DateTime))
INSERT [dbo].[VendorsTravelandAccomodations] ([Id], [VendorMasterId], [Category], [Startsfrom], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 26, N'Tours & Travels', CAST(5000.00 AS Decimal(18, 2)), N'Active', 2, CAST(N'2016-07-11 14:38:35.020' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsTravelandAccomodations] OFF
SET IDENTITY_INSERT [dbo].[VendorsWeddingCollections] ON 

INSERT [dbo].[VendorsWeddingCollections] ([Id], [VendorMasterId], [OnlineStore], [InStore], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 5, N'Store A', N'Store B', N'Active', 2, CAST(N'2016-07-08 18:24:16.843' AS DateTime))
INSERT [dbo].[VendorsWeddingCollections] ([Id], [VendorMasterId], [OnlineStore], [InStore], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 27, N'Store A', N'Store B', N'Active', 2, CAST(N'2016-07-11 15:23:06.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorsWeddingCollections] OFF
SET IDENTITY_INSERT [dbo].[VendorVenues] ON 

INSERT [dbo].[VendorVenues] ([Id], [VendorMasterId], [VenueType], [Food], [CockTails], [Rooms], [SeatingCapacity], [DiningCapacity], [Minimumseatingcapacity], [Maximumcapacity], [VegLunchCost], [NonVegLunchCost], [VegDinnerCost], [NonVegDinnerCost], [MinOrder], [MaxOrder], [DecorationAllowed], [HallType], [Wifi], [Menuwiththenoofitems], [Distancefrommainplaceslike], [LiveCookingStation], [Status], [UpdatedBy], [UpdatedDate]) VALUES (1, 2, N'Function Hall', N'Veg', N'Yes', N'Yes', 700, 200, 350, 500, CAST(1000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'10000', N'50000', N'Yes', N'AC', N'Yes', N'30', N'4 km', N'Yes', N'Active', 2, CAST(N'2016-07-08 16:10:20.860' AS DateTime))
INSERT [dbo].[VendorVenues] ([Id], [VendorMasterId], [VenueType], [Food], [CockTails], [Rooms], [SeatingCapacity], [DiningCapacity], [Minimumseatingcapacity], [Maximumcapacity], [VegLunchCost], [NonVegLunchCost], [VegDinnerCost], [NonVegDinnerCost], [MinOrder], [MaxOrder], [DecorationAllowed], [HallType], [Wifi], [Menuwiththenoofitems], [Distancefrommainplaceslike], [LiveCookingStation], [Status], [UpdatedBy], [UpdatedDate]) VALUES (2, 3, N'Function Hall', N'Veg', N'Yes', N'Yes', 700, 200, 350, 500, CAST(1000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), N'500', N'50000', N'Yes', N'AC', N'Yes', N'30', N'4 km', N'Yes', N'Active', 2, CAST(N'2016-07-08 16:15:06.607' AS DateTime))
INSERT [dbo].[VendorVenues] ([Id], [VendorMasterId], [VenueType], [Food], [CockTails], [Rooms], [SeatingCapacity], [DiningCapacity], [Minimumseatingcapacity], [Maximumcapacity], [VegLunchCost], [NonVegLunchCost], [VegDinnerCost], [NonVegDinnerCost], [MinOrder], [MaxOrder], [DecorationAllowed], [HallType], [Wifi], [Menuwiththenoofitems], [Distancefrommainplaceslike], [LiveCookingStation], [Status], [UpdatedBy], [UpdatedDate]) VALUES (3, 28, N'Function Hall', N'Non-Veg', N'Yes', N'Yes', 1000, 300, 300, 500, CAST(2000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'40000', N'4000000', N'Yes', N'AC', N'Yes', N'30', N'4 km', N'Yes', N'Active', 2, CAST(N'2016-07-11 15:26:09.900' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorVenues] OFF
/****** Object:  Index [IX_AuditLogId]    Script Date: 15/07/2016 13:38:08 ******/
CREATE NONCLUSTERED INDEX [IX_AuditLogId] ON [dbo].[AuditLogDetails]
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditLogDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuditLogDetails_dbo.AuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AuditLogs] ([AuditLogId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuditLogDetails] CHECK CONSTRAINT [FK_dbo.AuditLogDetails_dbo.AuditLogs_AuditLogId]
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProducts]
(
@nType nvarchar(200)
)
as
begin
	if(@nType='Venue')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorVenues.VegLunchCost as Cost,(case when VendorVenues.Id is not null then (select top 1 imagename from VendorImages where VendorImages.VendorId=VendorVenues.Id) end) as image from [dbo].[VendorVenues] inner join [dbo].[Vendormasters] on VendorVenues.VendorMasterId=Vendormasters.Id
	end
	if(@nType='Catering')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsCaterings.NonVeg as cost,(case when  VendorsCaterings.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsCaterings.Id) end) as image from [dbo].[VendorsCaterings] inner join [dbo].[Vendormasters] on VendorsCaterings.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Photography')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsPhotographies.StartingPrice as cost,(case when VendorsPhotographies.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsPhotographies.Id) end) as image from [dbo].[VendorsPhotographies] inner join [dbo].[Vendormasters] on VendorsPhotographies.VendorMasterId=Vendormasters.Id
	end
		if(@nType='InvitationCard')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsInvitationCards.CardCost as cost,(case when VendorsInvitationCards.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsInvitationCards.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsInvitationCards] inner join [dbo].[Vendormasters] on VendorsInvitationCards.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Decorator')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsDecorators.StartingPrice as cost,(case when VendorsDecorators.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsDecorators.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsDecorators] inner join [dbo].[Vendormasters] on VendorsDecorators.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Entertainment')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsEntertainments.StartingPrice as cost,(case when VendorsEntertainments.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsEntertainments.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsEntertainments] inner join [dbo].[Vendormasters] on VendorsEntertainments.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Eventorganiser')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsEventOrganisers.StartingPrice as cost,(case when VendorsEventOrganisers.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsEventOrganisers.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsEventOrganisers] inner join [dbo].[Vendormasters] on VendorsEventOrganisers.VendorMasterId=Vendormasters.Id
	end
		if(@nType='BeautyService')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsBeautyServices.BridalMakeupStartsFrom as cost,(case when VendorsBeautyServices.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsBeautyServices.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsBeautyServices] inner join [dbo].[Vendormasters] on VendorsBeautyServices.VendorMasterId=Vendormasters.Id
	end
		if(@nType='WeddingFavor')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsWeddingCollections.UpdatedBy as cost,(case when VendorsWeddingCollections.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsWeddingCollections.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsWeddingCollections] inner join [dbo].[Vendormasters] on VendorsWeddingCollections.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Travel')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsTravelandAccomodations.Startsfrom as cost,(case when VendorsTravelandAccomodations.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsTravelandAccomodations.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsTravelandAccomodations] inner join [dbo].[Vendormasters] on VendorsTravelandAccomodations.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Gift')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsGifts.GiftCost as cost,(case when VendorsGifts.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsGifts.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsGifts] inner join [dbo].[Vendormasters] on VendorsGifts.VendorMasterId=Vendormasters.Id
	end
		if(@nType='WeddingCollection')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,0.00 as cost,(case when VendorsWeddingCollections.Id is not null then (select top 1  imagename from VendorImages where VendorImages.VendorId=VendorsWeddingCollections.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsWeddingCollections] inner join [dbo].[Vendormasters] on VendorsWeddingCollections.VendorMasterId=Vendormasters.Id
	end
		if(@nType='Other')
	begin
	  select Vendormasters.Id,Vendormasters.BusinessName,Vendormasters.Description,Vendormasters.ServicType,VendorsOthers.ItemCost as cost,(case when VendorsOthers.Id is not null then (select top 1 imagename from VendorImages where VendorImages.VendorId=VendorsOthers.Id order by VendorImages.VendorId desc) end) as image from [dbo].[VendorsOthers] inner join [dbo].[Vendormasters] on VendorsOthers.VendorMasterId=Vendormasters.Id
	end
end


GO
/****** Object:  StoredProcedure [dbo].[GetProductsInfo]    Script Date: 15/07/2016 13:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProductsInfo]
(
@vid int,
@nType nvarchar(200)
)
as
begin
	if(@nType='Venue')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorVenues.VegLunchCost as cost,
	  VendorVenues.NonVegLunchCost as cost1,
	  VendorVenues.VegDinnerCost as cost2,
	  VendorVenues.NonVegDinnerCost as cost3,
	  VendorVenues.MaxOrder,VendorVenues.MinOrder,(case when VendorVenues.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorVenues.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorVenues] inner join [dbo].[Vendormasters] on VendorVenues.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
	if(@nType='Catering')
	begin
	 select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	 VendorsCaterings.Veg as cost,
	 VendorsCaterings.NonVeg as cost1,
	 0.00 as cost2,
	 0.00 as cost3,
	 VendorsCaterings.MaxOrder,VendorsCaterings.MinOrder,(case when  VendorsCaterings.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsCaterings.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsCaterings] inner join [dbo].[Vendormasters] on VendorsCaterings.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Photography')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsPhotographies.StartingPrice as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsPhotographies.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsPhotographies.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsPhotographies] inner join [dbo].[Vendormasters] on VendorsPhotographies.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='InvitationCard')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsInvitationCards.CardCost as cost,
	  VendorsInvitationCards.CardCostWithPrint as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  VendorsInvitationCards.MinOrder,'10' as MaxOrder,(case when VendorsInvitationCards.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsInvitationCards.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsInvitationCards] inner join [dbo].[Vendormasters] on VendorsInvitationCards.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Decorator')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsDecorators.StartingPrice as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsDecorators.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsDecorators.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsDecorators] inner join [dbo].[Vendormasters] on VendorsDecorators.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Entertainment')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsEntertainments.StartingPrice as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsEntertainments.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsEntertainments.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsEntertainments] inner join [dbo].[Vendormasters] on VendorsEntertainments.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Eventorganiser')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsEventOrganisers.StartingPrice as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsEventOrganisers.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsEventOrganisers.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsEventOrganisers] inner join [dbo].[Vendormasters] on VendorsEventOrganisers.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='BeautyService')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsBeautyServices.PartyMakeupStartsFrom as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsBeautyServices.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsBeautyServices.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsBeautyServices] inner join [dbo].[Vendormasters] on VendorsBeautyServices.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
	--	if(@nType='WeddingFavor')
	--begin
	--  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,VendorsWeddingCollections,(case when VendorsWeddingCollections.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsWeddingCollections.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsWeddingCollections] inner join [dbo].[Vendormasters] on VendorsWeddingCollections.VendorMasterId=Vendormasters.Id where VendorsWeddingCollections.Id=@vid
	--end
		if(@nType='Travel')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  0.00 as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsTravelandAccomodations.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsTravelandAccomodations.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsTravelandAccomodations] inner join [dbo].[Vendormasters] on VendorsTravelandAccomodations.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Gift')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsGifts.GiftCost as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  VendorsGifts.MinOrder,VendorsGifts.MaxOrder,(case when VendorsGifts.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsGifts.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsGifts] inner join [dbo].[Vendormasters] on VendorsGifts.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='WeddingCollection')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  0.00 as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  '0' as MaxOrder,'10' as MinOrder,(case when VendorsWeddingCollections.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsWeddingCollections.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsWeddingCollections] inner join [dbo].[Vendormasters] on VendorsWeddingCollections.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
		if(@nType='Other')
	begin
	  select Vendormasters.Id,Vendormasters.Address,Vendormasters.BusinessName,Vendormasters.City,Vendormasters.ContactNumber,Vendormasters.ContactPerson,Vendormasters.Description,Vendormasters.Landmark,Vendormasters.ServicType,Vendormasters.State,Vendormasters.ZipCode,
	  VendorsOthers.ItemCost as cost,
	  0.00 as cost1,
	  0.00 as cost2,
	  0.00 as cost3,
	  VendorsOthers.MaxOrder,VendorsOthers.MinOrder,(case when VendorsOthers.Id is not null then STUFF((SELECT ', ' + ImageName FROM VendorImages WHERE Vendorimages.VendorId  =VendorsOthers.Id FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,2,' ') end) as image from [dbo].[VendorsOthers] inner join [dbo].[Vendormasters] on VendorsOthers.VendorMasterId=Vendormasters.Id where Vendormasters.Id=@vid
	end
end


GO
USE [master]
GO
ALTER DATABASE [MaaAahwanam] SET  READ_WRITE 
GO
