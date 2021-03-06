USE [master]
GO
/****** Object:  Database [MaaAahwanam]    Script Date: 15/07/2016 13:07:49 ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[AdminTestimonialPaths]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[AdminTestimonials]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[AuditLogDetails]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[AuditLogs]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[CartItems]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[CommentDetails]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Enquiries]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[EventDates]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[EventInformations]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[EventsandTips]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[IssueDetails]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[IssueTickets]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[OrdersServiceRequests]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Reviews]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[ServiceResponses]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[SiteFaqs]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[UserAddBooks]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[UserDetails]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[UserLogins]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[UserLogInTimings]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorImages]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[Vendormasters]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsBeautyServices]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsCaterings]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsDecorators]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsEntertainments]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsEventOrganisers]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsGifts]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsInvitationCards]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsOthers]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsPhotographies]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsTravelandAccomodations]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorsWeddingCollections]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Table [dbo].[VendorVenues]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  Index [IX_AuditLogId]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 15/07/2016 13:07:50 ******/
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
/****** Object:  StoredProcedure [dbo].[GetProductsInfo]    Script Date: 15/07/2016 13:07:50 ******/
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
